package com.gt.service.employee.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.BasisCity;
import com.gt.model.CooperationApply;
import com.gt.model.TManEmployeeAssess;
import com.gt.model.employee.Employee;
import com.gt.model.user.User;
import com.gt.service.employee.IEmployeeService;
import com.gt.service.user.IUserService;
import com.gt.utils.ExcelUtil;
import com.gt.utils.JavaMailWithAttachment;
@Service
public class EmployeeServiceImpl implements IEmployeeService{
	@Autowired
	private IBaseDAO baseDao;
	@Autowired
	private IUserService userService;
	@Value("${get_images_url}")
	private String getImagesUrl;
	@Value("${material_images_url}")
	private String setImagesUrl;

	@Override
	public List employeeQuery(String select, String cx) {
		String sql = "";
		if(select=="1"||select.equals("1")){
		 sql = "SELECT * FROM t_man_employee WHERE number='"+cx+"'";
		}else{
			sql = "SELECT * FROM t_man_employee WHERE name='"+cx+"'";
		}
		return baseDao.queryForList(sql);
	}

	@Override
	public Map queryMap(Integer id) {
		String sql = "SELECT * FROM t_man_employee WHERE id="+id;
		return baseDao.queryForMap(sql);
	}

	@Override
	public List emploservice(Integer id) {
		String sql = "SELECT * FROM t_man_employee_service WHERE employeeid="+id;
		return baseDao.queryForList(sql);
	}

	@Override
	public void employeeadd(TManEmployeeAssess obj) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		Timestamp time = Timestamp.valueOf(df.format(new Date()));// new Date()为获取当前系统时间
		obj.setCreateTime(time.toString());
		baseDao.save(obj);
	}

	@Override
	public List<BasisCity> citylist(Integer cityid) {
		String sql ="";
		if(cityid==0){
		    sql = "SELECT * FROM basis_city WHERE city_level = 2";
		}else{
			sql = "SELECT * FROM basis_city WHERE city_parent ="+cityid;
		}
		return baseDao.queryForList(sql);
	}

	@Override
	public Map sumbit(HttpServletRequest request) {
		Map<String, Object> msg = new HashMap<String, Object>();
		boolean result = true;
		String message = "尊敬的"+request.getParameter("cooName")+"：\n您好！感谢您使用多粉平台！您的申请已成功提交，我们会在一个工作日内回复您，请保持通讯设备畅通。";
		CooperationApply coo = new CooperationApply();
		coo.setCooName(request.getParameter("cooName"));
		coo.setCooEmail(request.getParameter("cooEmail"));
		coo.setCooPhone(request.getParameter("cooPhone"));
		coo.setCooQQ(request.getParameter("cooQQ"));
		coo.setCooCompany(request.getParameter("cooCompany"));
		coo.setCooAddress(request.getParameter("cooAddress"));
		int i = 0;
		String sql = "insert into t_cooperation_apply (coo_name,coo_phone,coo_email,coo_qq,coo_company,coo_address) values('"+coo.getCooName()+"'"
				+ ",'"+coo.getCooPhone()+"','"+coo.getCooEmail()+"','"+coo.getCooQQ()+"','"+coo.getCooCompany()+"','"+coo.getCooAddress()+"')";
	   
		try {
			 try{
				 baseDao.delete(sql);
				 i=1;
			 }catch(Exception e){
				 i=0;
				 result = false;
		    	 message = "提交失败，系统繁忙！";
			 }
		     //发送邮件
		     if(i > 0){
		    	 InputStream in = JavaMailWithAttachment.class.getResourceAsStream("/config/properties/MailServer.properties");
		    	 Properties properties = new Properties();
		    	 properties.load(in);
		    	 
		    	 List<CooperationApply> cooList = new ArrayList<>();
		    	 cooList.add(coo);
		    	 boolean b = ExcelUtil.writeHSSFWorkbook(ExcelUtil.exportExcelForCoo(cooList),properties.getProperty("mail.attachment"));
		    	 if(b){
		    		 JavaMailWithAttachment.getInstence().doSendHtmlEmail("授权服务商申请人基本信息", 
		    				 "请在附件中查收", "18026538466@189.cn", new File(properties.getProperty("mail.attachment")));
		    	 }else{
		    		 result = false;
			    	 message = "提交失败，系统繁忙！";
		    	 }
		     }else{
		    	 result = false;
		    	 message = "提交失败，系统繁忙！";
		     }
		} catch (Exception e) {
			result = false;
	    	message = "提交失败，系统繁忙！";
			e.printStackTrace();
		}finally{
			msg.put("result", result);
			msg.put("message", message);
		}
		return msg;
	}

	@Override
	public List findAll() {
		String sql = "SELECT * FROM t_man_employee";
		return baseDao.queryForList(sql, null);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TManEmployeeAssess> findAssessByEmployee(Integer id) {
		String hql = "SELECT a FROM TManEmployeeAssess a WHERE a.employeeid = ?";
		return baseDao.findByHql(hql, id);
	}

	@Override
	public TManEmployeeAssess findAccessById(Integer aId) {
		if(aId == null || aId <= 0){
			return null;
		}
		Object obj = baseDao.findById(TManEmployeeAssess.class, aId);
		if(obj != null){
			return (TManEmployeeAssess)obj;
		}
		return null;
	}

	@Override
	public Employee findById(Integer id) {
		if(id == null || id <= 0){
			return null;
		}
		Object obj = baseDao.findById(Employee.class, id);
		if(obj != null){
			return (Employee)obj;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> findAllEmp() {
		return baseDao.findAll(Employee.class);
	}

	@Override
	public Serializable create(Employee employee) {
		if(employee == null){
			return -1;
		}
		if(StringUtils.isEmpty(employee.getCreateTime())){
			String dateStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			employee.setCreateTime(dateStr);
		}
		return baseDao.save(employee);
	}

	@Override
	public void update(Employee employee) {
		if(employee != null){
			baseDao.update(employee);
		}
	}

	@Override
	public List<Map<String, Object>> addCreater(List<Map<String, Object>> list) {
		for(Map<String, Object> map:list){
			Object objUserId = map.get("create_person");
			if(objUserId != null){
				Integer userId = Integer.valueOf(objUserId.toString());
				User user = userService.selectById(userId);
				if(user != null){
					map.put("creater", user.getUserName());
				}
			}
		}
		return list;
	}

	@Override
	public HSSFWorkbook print() {
		List<Employee> empList = this.findAllEmp();
		if(empList == null || empList.size() == 0){
			return null;
		}
		//创建Excel工作薄对象  
		HSSFWorkbook wb = new HSSFWorkbook();
		//创建Excel工作表对象
		HSSFSheet sheet = wb.createSheet("员工信息");
		sheet.setColumnWidth(0, 5*256);
		sheet.setColumnWidth(1, 10*256);
		sheet.setColumnWidth(2, 5*256);
		sheet.setColumnWidth(3, 15*256);
		sheet.setColumnWidth(4, 18*256);
		sheet.setColumnWidth(5, 20*256);
		sheet.setColumnWidth(6, 20*256);
		sheet.setColumnWidth(7, 20*256);
		//创建单元格样式
		CellStyle titleStyle = wb.createCellStyle();
		// 设置这些样式
		titleStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		titleStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		titleStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
		titleStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
		titleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		//字体
		HSSFFont titleFont = wb.createFont();
		titleFont.setColor(HSSFColor.BLACK.index);
		titleFont.setFontHeightInPoints((short)15);
		titleFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		titleStyle.setFont(titleFont);
		//创建Excel工作表的行
		//第一行(标题行)
		HSSFRow row = sheet.createRow(0);
		row.setHeightInPoints(20);
		HSSFCell titleCell = row.createCell(0);
		titleCell.setCellValue("员工报表");
		titleCell.setCellStyle(titleStyle);
		//第二行
		CellStyle headStyle = wb.createCellStyle();
		// 设置这些样式
		headStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		headStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		headStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
		headStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
		headStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		headStyle.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);
		headStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		//字体
		HSSFFont headFont = wb.createFont();
		headFont.setColor(HSSFColor.BLACK.index);
		headFont.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);
		headFont.setFontHeightInPoints((short)12);
		headStyle.setFont(headFont);
		row = sheet.createRow(1);
		HSSFCell cell = row.createCell(0);
		cell.setCellValue("序号");
		cell.setCellStyle(headStyle);
		cell = row.createCell(1);
		cell.setCellValue("姓名");
		cell.setCellStyle(headStyle);
		cell = row.createCell(2);
		cell.setCellValue("性别");
		cell.setCellStyle(headStyle);
		cell = row.createCell(3);
		cell.setCellValue("工号");
		cell.setCellStyle(headStyle);
		cell = row.createCell(4);
		cell.setCellValue("身份证");
		cell.setCellStyle(headStyle);
		cell = row.createCell(5);
		cell.setCellValue("所属地区");
		cell.setCellStyle(headStyle);
		cell = row.createCell(6);
		cell.setCellValue("所属渠道");
		cell.setCellStyle(headStyle);
		cell = row.createCell(7);
		cell.setCellValue("创建时间");
		cell.setCellStyle(headStyle);
		//内容
		CellStyle cellStyle = wb.createCellStyle();
		cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
		cellStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
		cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		for(int i=0;i<empList.size();i++){
			row = sheet.createRow((int)i+2);
			Employee emp = empList.get(i);
			//创建单元格，并设置值 
			row.createCell(0).setCellValue(i+1);
			row.createCell(1).setCellValue(emp.getName());
			row.createCell(2).setCellValue(emp.getSex());
			row.createCell(3).setCellValue(emp.getNumber());
			row.createCell(4).setCellValue(emp.getIdcard());
			row.createCell(5).setCellValue(emp.getAdder());
			row.createCell(6).setCellValue(emp.getChannel());
			row.createCell(7).setCellValue(emp.getCreateTime());
		}
		//合并
		sheet.addMergedRegion(new CellRangeAddress(
				0, 0, 0, 7));
		return wb;
	}

	@Override
	public void delete(Employee employee) {
		if(employee == null){
			return;
		}
		//删除评价信息
		String sql = "DELETE FROM t_man_employee_assess WHERE employeeid = ?";
		baseDao.update(sql, employee.getId());
		//删除员工信息
		baseDao.delete(employee);
	}

	/*@Override
	public List<Employee> importEmpExcel(InputStream in) throws IOException {
		XSSFWorkbook wb = new XSSFWorkbook(in);
		List<Employee> empList = new ArrayList<>();
		Employee emp;
		// 循环工作表sheet
		for (int numSheet = 0; numSheet < wb.getNumberOfSheets(); numSheet++) {
			XSSFSheet xssfSheet = wb.getSheetAt(numSheet);
			if (xssfSheet == null) {
				continue;
			}
			// 循环Row
			//默认从第三行开始，有标题则从第三行开始读取数据
			int startNum = 2;
			String cellValue = xssfSheet.getRow(0).getCell(0).getStringCellValue();
			if(cellValue.equals("序号")){
				//如果第一行是序号，无标题则从第二行开始读取数据
				startNum = 1;
			}
			for (int rowNum = startNum; rowNum <= xssfSheet.getLastRowNum(); rowNum++) {
				emp = new Employee();
				XSSFRow xssfRow = xssfSheet.getRow(rowNum);
				for (int i = 0; i < xssfRow.getLastCellNum(); i++) {
					XSSFCell cell = xssfRow.getCell(i);
					if (i == 0) {
					} else if (i == 1) {
						emp.setName((String)getCellValue(cell));
					} else if (i == 2) {
						emp.setSex((String)getCellValue(cell));
					} else if (i == 3) {
						emp.setNumber((String)getCellValue(cell));
					} else if (i == 4) {
						emp.setIdcard((String)getCellValue(cell));
					} else if (i == 5) {
						emp.setAdder((String)getCellValue(cell));
					} else if (i == 6) {
						emp.setChannel((String)getCellValue(cell));
					} else if (i == 7) {
						emp.setCreateTime((String)getCellValue(cell));
					}
				}
				empList.add(emp);
			}
		}
		if (wb != null) {
			wb.close();
		}
		if (in != null) {
			in.close();
		}
		return empList;
	}*/
	@Override
	public List<Employee> importEmpExcel(InputStream in) throws IOException {
		HSSFWorkbook wb = new HSSFWorkbook(in);
		List<Employee> empList = new ArrayList<>();
		Employee emp;
		// 循环工作表sheet
		for (int numSheet = 0; numSheet < wb.getNumberOfSheets(); numSheet++) {
			HSSFSheet hssfSheet = wb.getSheetAt(numSheet);
			if (hssfSheet == null) {
				continue;
			}
			// 循环Row
			//默认从第三行开始，有标题则从第三行开始读取数据
			int startNum = 2;
			if(hssfSheet.getRow(0) != null){
				HSSFCell startCell = hssfSheet.getRow(0).getCell(0);
				if(startCell != null){
					String cellValue = startCell.getStringCellValue();
					if(cellValue.equals("序号")){
						//如果第一行是序号，无标题则从第二行开始读取数据
						startNum = 1;
					}
				}
			}
			for (int rowNum = startNum; rowNum <= hssfSheet.getLastRowNum(); rowNum++) {
				emp = new Employee();
				HSSFRow hssfRow = hssfSheet.getRow(rowNum);
				for (int i = 0; i < hssfRow.getLastCellNum(); i++) {
					HSSFCell cell = hssfRow.getCell(i);
					if (i == 0) {
					} else if (i == 1) {
						emp.setName((String)getCellValue(cell));
					} else if (i == 2) {
						emp.setSex((String)getCellValue(cell));
					} else if (i == 3) {
						emp.setNumber((String)getCellValue(cell));
					} else if (i == 4) {
						emp.setIdcard((String)getCellValue(cell));
					} else if (i == 5) {
						emp.setAdder((String)getCellValue(cell));
					} else if (i == 6) {
						emp.setChannel((String)getCellValue(cell));
					} else if (i == 7) {
						emp.setCreateTime((String)getCellValue(cell));
					}
				}
				empList.add(emp);
			}
		}
		if (wb != null) {
			wb.close();
		}
		if (in != null) {
			in.close();
		}
		return empList;
	}
	@Override
	public void creates(List<Employee> empList) {
		if(empList == null || empList.size() == 0){
			return;
		}
		for(Employee emp:empList){
			this.create(emp);
		}
	}
	
	public Object getCellValue(HSSFCell cell){
		if(cell == null){
			return null;
		}
		if(HSSFCell.CELL_TYPE_STRING == cell.getCellType()){
			return cell.getStringCellValue();
		}else if(HSSFCell.CELL_TYPE_NUMERIC == cell.getCellType()){
			return String.valueOf(cell.getNumericCellValue());
		}else{
			return null;
		}
	}
	
}
