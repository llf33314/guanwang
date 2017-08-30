package com.gt.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.gt.dao.IBaseDAO;
import com.gt.model.TManEmployeeAssess;
import com.gt.service.employee.IEmployeeService;
import com.gt.utils.CommonUtil;
import com.gt.utils.JedisUtil;
import com.gt.utils.SMSManages;
import com.gt.utils.SystemPropertiesUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("login")
public class loginController {
	@Autowired
	private IEmployeeService employee;
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@Value("${duofriend_url}")
	private String duofriend_url;
	
	
	/**
	 * 制作验证码
	 * 
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping("/html/buildCode")
	public void buildCode(HttpServletResponse response,
			HttpServletRequest request) throws IOException {
		// 设置不缓存图片
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		// 产生由4位数字构成的验证码
		int length = 4;
		String valcode = "";
		Random rd = new Random();
		for (int i = 0; i < length; i++) {
			valcode += rd.nextInt(10);
		}
		// 把产生的验证码存入到Session中
		HttpSession session = request.getSession();
		session.setAttribute("valCode", valcode);
		// 产生图片
		int width = 60;
		int height = 24;
		BufferedImage img = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 获取一个Graphics
		Graphics g = img.getGraphics();
		// 填充背景色
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, width, height);
		// 填充干扰线20
		for (int i = 0; i < 20; i++) {
			g.setColor(new Color(rd.nextInt(100) + 155, rd.nextInt(100) + 155,
					rd.nextInt(100) + 155));
			g.drawLine(rd.nextInt(width), rd.nextInt(height),
					rd.nextInt(width), rd.nextInt(height));
		}
//		 绘制边框
		g.setColor(Color.decode("#bfcbd9"));
		g.drawRect(0, 0, width - 1, height - 1);
		// 绘制验证码
		Font[] fonts = { new Font("隶书", Font.BOLD, 18),
				new Font("楷体", Font.BOLD, 18), new Font("宋体", Font.BOLD, 18),
				new Font("幼圆", Font.BOLD, 18) };
		for (int i = 0; i < length; i++) {
			g.setColor(new Color(rd.nextInt(150), rd.nextInt(150), rd
					.nextInt(150)));
			g.setFont(fonts[rd.nextInt(fonts.length)]);
			g.drawString(valcode.charAt(i) + "", width / valcode.length() * i
					+ 2, 20);
		}
		// 输出图像
		g.dispose();
		ImageIO.write(img, "jpeg", response.getOutputStream());
	}
	
	/**
	 * 获取短信验证码
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/html/getTextCode")
	public void getTextCode(HttpServletRequest request,HttpServletResponse response,
			String name){
		PrintWriter out = null;
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			out = response.getWriter();
			String sql = "select user_phone from t_man_user where user_name = ? and isagent = 1";
			List<Map<String,Object>> listMap = null;
			try {
				listMap = iBaseDAO.queryForList(sql, name);
			} catch (Exception e) {
				// TODO: handle exception
			}
			if(listMap != null && listMap.size() > 0){
				String phone = listMap.get(0).get("user_phone").toString();
				StringBuffer sbCode = new StringBuffer();
				//生产验证码				
				for (int i = 0; i < 6; i++) {
					int number = new Random().nextInt(10) + 1;
					sbCode.append(number); 
				}
				String code = "";
				if(sbCode.length() >= 7){
					code = sbCode.substring(0, 6).toString();
				}else{
					code = sbCode.toString();
				}
				if(code.length() < 6){
					code = code+"321586";
					code = code.substring(0, 6);
				}
				if(!CommonUtil.isEmpty(JedisUtil.get("webSite:"+name))){
					code = JedisUtil.get("webSite:"+name);
				}
				// 参数
				String jCode = "";
				try {
					// 获取短信验证码
					Map<String, String> smsMap = SMSManages.sendSMS(phone, "验证码："+code+"（用于多粉代理商登录）", "多粉平台");
					jCode = smsMap.get("code");
				} catch (Exception e) {
					
				}
				if("1".equals(jCode)){
					//map.put("code", code);
					JedisUtil.set("webSite:"+name,code.toString(),1800);
					map.put("status", "success");
					phone = phone.replace(phone.substring(3, 7), "****");
					map.put("phone", phone);
				}else{
					map.put("status", "error");
				}
			}
			out.write(JSON.toJSONString(map).toString());	
		} catch (IOException e) {
			e.printStackTrace();			
			out.append("error");
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}
	
	/**
	 * 员工查询
	 * @param response
	 * @param request
	 * @throws IOException 
	 */
	@RequestMapping("/employeeQuery")
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
			List list = employee.employeeQuery(select, cx);
			if(list!=null){
				if(list.size()==1){
					error = "0";
					Map map1 = (Map) list.get(0);
					int id = Integer.valueOf(map1.get("id").toString());
					List serviceList = employee.emploservice(id);
					map.put("map", JSONObject.fromObject(map1).toString());
					String http = SystemPropertiesUtil.getInstance().getWebsite_material();
					map.put("http", http);
					map.put("serviceList", JSONArray.fromObject(serviceList));
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
	@RequestMapping("/staffForm")
	public String staffForm(HttpServletResponse response,
			HttpServletRequest request){
		String jsp = "office/staff"; 
		Object mapid = request.getParameter("id");
		if(mapid!=null){
			Integer id = Integer.valueOf(mapid.toString());
			Map  map = employee.queryMap(id);
			if(map!=null){
				String http = SystemPropertiesUtil.getInstance().getWebsite_material();
				request.setAttribute("http", http);
				request.setAttribute("map", map);
				jsp = "redirect:/html/staffForm.jsp?id="+id;
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
	@RequestMapping("/employeeadd")
	public void employeeadd(HttpServletResponse response,HttpServletRequest request,TManEmployeeAssess obj) throws IOException{
		Map map = new HashMap();
		try{
			employee.employeeadd(obj);
			map.put("error", "0");
			map.put("message", "成功");
		}catch(Exception e){
			map.put("error", "1");
			map.put("message", "数据异常");
		}
		PrintWriter p = response.getWriter();
		p.write(JSONObject.fromObject(map).toString());
	}
	
	/**
	 * 验证是否代理商
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/html/checkIsagent")
	public void checkIsagent(HttpServletRequest request,HttpServletResponse response,
			String name){
		PrintWriter out = null;
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("status", "error");
		try {
			out = response.getWriter();
			String sql = "select user_phone from t_man_user where user_name = ? and isagent = 1";
			List<Map<String,Object>> listMap = null;
			listMap = iBaseDAO.queryForList(sql, name);
			if(listMap != null && listMap.size() > 0){
				String phone = listMap.get(0).get("user_phone").toString();
				map.put("status", "success");
				phone = phone.replace(phone.substring(3, 7), "****");
				map.put("phone", phone);
			}else{
				
			}
			out.write(JSON.toJSONString(map).toString());	
		} catch (IOException e) {
			e.printStackTrace();			
			out.append("error");
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}
}
