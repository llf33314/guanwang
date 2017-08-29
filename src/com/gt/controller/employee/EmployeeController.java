package com.gt.controller.employee;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gt.model.TManEmployeeAssess;
import com.gt.model.employee.Employee;
import com.gt.model.user.User;
import com.gt.service.employee.IEmployeeService;
import com.gt.utils.CommonUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	private IEmployeeService employeeService;
	@Value("${get_images_url}")
	private String getImagesUrl;
	
	@RequestMapping("/edit")
	@ResponseBody
	public Map<String, Object> edit(
			@RequestParam Integer id,
			@RequestParam String number,
			@RequestParam String name,
			@RequestParam String idcard,
			@RequestParam String adder,
			@RequestParam String channel,
			@RequestParam String url,
			@RequestParam Integer score,
			@RequestParam String evaluate,
			@RequestParam String sex,
			HttpServletRequest request){
		Map<String, Object> modelMap = new HashMap<String,Object>();
		Employee employee = employeeService.findById(id);
		if(employee == null){
			employee = new Employee();
		}
		employee.setNumber(number);
		employee.setName(name);
		employee.setIdcard(idcard);
		employee.setAdder(adder);
		employee.setChannel(channel);
		employee.setUrl(url);
		employee.setScore(score);
		employee.setEvaluate(evaluate);
		employee.setSex(sex);
		if(id != null && id > 0){
			employeeService.update(employee);
		}else{
			//获得当前用户
			HttpServletRequest servletRequest = (HttpServletRequest) request;
			User user = CommonUtil.getLoginUser(servletRequest);
			employee.setCreaterId(user.getId());
			employeeService.create(employee);
		}
		modelMap.put("msg", "success");
		return modelMap;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/list")
	@ResponseBody
	public Map<String, Object> list(){
		List<Map<String, Object>> list = employeeService.findAll();
		list = employeeService.addCreater(list);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", list);
		modelMap.put("msg", "success");
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/listOne")
	@ResponseBody
	public Map<String, Object> listOne(
			@RequestParam(required = true) Integer id){
		Map<String, Object> modelMap = new HashMap<String,Object>();
		Map<String, Object> map = employeeService.queryMap(id);
		modelMap.put("employee", map);
		modelMap.put("msg", "success");
		modelMap.put("imagesUrl", getImagesUrl+"/");
		return modelMap;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/html/one")
	@ResponseBody
	public Map<String, Object> one(
			@RequestParam(required = true) Integer id){
		Map<String, Object> map = employeeService.queryMap(id);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("employee", map);
		modelMap.put("msg", "success");
		return modelMap;
	}
	
	@RequestMapping("/assessList")
	@ResponseBody
	public Map<String, Object> AssessList(
			@RequestParam(required = true) Integer id){
		List<TManEmployeeAssess> list = employeeService.findAssessByEmployee(id);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", list);
		modelMap.put("msg", "success");
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/assessListPre",method = RequestMethod.GET)
	public String AssessListPre(
			@RequestParam(required = true) Integer id,Model model){
		Map<String,Object> employee =  employeeService.queryMap(id);
		model.addAttribute("employee", employee);
		model.addAttribute("id", id);
		model.addAttribute("msg", "success");
		return "/jsp/manage/employee/assessList.jsp";
	}
	
	@RequestMapping("/assessListOne")
	@ResponseBody
	public Map<String, Object> AssessListOne(
			@RequestParam(required = true) Integer aId){
		TManEmployeeAssess tAssess = employeeService.findAccessById(aId);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("listOne", tAssess);
		modelMap.put("msg", "success");
		return modelMap;
	}
	/**
	 * 员工查询
	 * @param response
	 * @param request
	 * @throws IOException 
	 */
	@SuppressWarnings("all")
	@RequestMapping("/html/employeeQuery")
	public void employeeQuery(HttpServletResponse response,HttpServletRequest request) throws IOException{
		Map map = new HashMap();
		String error = "1";
		String message = "";
		String valcode = request.getParameter("valcode");
		String select = request.getParameter("select");
		String cx = request.getParameter("cx");
		if ("".equals(valcode) || "".equals(valcode.trim())) {
			message = "验证码不能为空！";
		} 
		else if (!valcode.toLowerCase().equals(
				request.getSession().getAttribute("valCode").toString()
				.toLowerCase())) {
			message = "验证码错误！";
		} else if ("".equals(cx.trim())) {
			message = "工号或姓名不能为空！";
		}else{
			List list = employeeService.employeeQuery(select, cx);
			if(list!=null){
				if(list.size()==1){
					error = "0";
					Map map1 = (Map) list.get(0);
					int id = Integer.valueOf(map1.get("id").toString());
					List serviceList = employeeService.emploservice(id);
//					map.put("map", JSONObject.fromObject(map1).toString());
//					map.put("http", getImagesUrl+"/");
//					map.put("serviceList", JSONArray.fromObject(serviceList));
                    String idNumber = CommonUtil.isNotEmpty(map1.get("idcard"))?map1.get("idcard").toString():"";
                    String idcard = idNumber.substring(0,6)+"********"+idNumber.substring(idNumber.length()-4);
                    map1.put("idcard",idcard);
                    map1.put("url",getImagesUrl+"/"+map1.get("url"));
                    HttpSession session = request.getSession(true);
                    session.setMaxInactiveInterval(3600);
                    session.setAttribute("webSite_map",JSONObject.fromObject(map1).toString());
                    session.setAttribute("webSite_serviceList",JSONArray.fromObject(serviceList));
				}else if(list.size()>1){
					message = "该姓名有多名员工，请按工号查询！";
				}else{
					message = "该员工不存在！";
				}
			}else{
				message = "该员工不存在！";
			}

		}

		map.put("error", error);
		map.put("message", message);
		PrintWriter p = response.getWriter();
		p.write(JSONObject.fromObject(map).toString());
	}
	
	/**
	 * 弹到评价页面
	 * @param response
	 * @param request
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping("/html/staffForm")
	public String staffForm(HttpServletResponse response,
			HttpServletRequest request){
		String jsp = "html/staff"; 
		Object mapid = request.getParameter("id");
		if(mapid!=null){
			Integer id = Integer.valueOf(mapid.toString());
			Map  map = employeeService.queryMap(id);
			if(map!=null){
				request.setAttribute("http", getImagesUrl+"/");
				request.setAttribute("map", map);
				jsp = "/html/staffForm.jsp";
			}
		}
		return jsp;
	}
	
	/**
	 *评价添加 
	 * @param response
	 * @param request
	 * @throws IOException 
	 */
	@SuppressWarnings("all")
	@RequestMapping("/html/employeeadd")
	public void employeeadd(HttpServletResponse response,HttpServletRequest request,TManEmployeeAssess obj) throws IOException{
		Map map = new HashMap();
		try{
			employeeService.employeeadd(obj);
			map.put("error", "0");
			map.put("message", "成功");
		}catch(Exception e){
			map.put("error", "1");
			map.put("message", "数据异常");
		}
		PrintWriter p = response.getWriter();
		p.write(JSONObject.fromObject(map).toString());
	}
	
	@RequestMapping("/print")
	public void print(HttpServletRequest request,
			HttpServletResponse response){
		try {
			HSSFWorkbook wb = employeeService.print();
			response.reset();
			String saveFileName = "员工报表.xls"; // 保存文件名
			// 先去掉文件名称中的空格,然后转换编码格式为utf-8,保证不出现乱码,这个文件名称用于浏览器的下载框中自动显示的文件名
			response.addHeader("Content-Disposition",
					"attachment;filename="
							+ new String(saveFileName.replaceAll(" ", "")
									.getBytes("utf-8"), "iso8859-1"));
			// response.addHeader("Content-Length", "" + file.length());
			OutputStream os = new BufferedOutputStream(
					response.getOutputStream());
			response.setContentType("application/octet-stream");
			wb.write(os);// 输出文件
			os.flush();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@RequestParam(required = true)Integer id){
		Map<String, Object> modelMap = new HashMap<>();
		Employee employee = employeeService.findById(id);
		employeeService.delete(employee);
		modelMap.put("success", "true");
		modelMap.put("msg", "删除成功!");
		return modelMap;
	}
	
	@RequestMapping("/import")
	public String importExcel(@RequestParam MultipartFile file,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		response.setContentType("text/plain; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(file == null){
			out.print("{\"error\":\"文件不能为空\"}");
			out.flush();
			return null;
		}
		String name = file.getOriginalFilename();
		long size = file.getSize();
		if((name==null||name.equals(""))&&size==0){
			out.print("{\"error\":\"文件内容不能为空\"}");
			out.flush();
			return null;
		}
		try {
			InputStream in = file.getInputStream();
			List<Employee> empList = employeeService.importEmpExcel(in);
			employeeService.creates(empList);
			out.print("{\"success\":\"导入成功\"}");
			out.flush();
		} catch (Exception e) {
			out.print("{\"error\":\"导入失败,请检查导入格式是否正确,工号是否重复\"}");
			out.flush();
			throw new RuntimeException(e);
		}
		return null;
	}
}
