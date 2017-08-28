package com.gt.controller.caseCenter;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.caseCenter.CaseBuspro;
import com.gt.model.caseCenter.CaseCenter;
import com.gt.model.caseCenter.CaseCenterClass;
import com.gt.service.caseCenter.ICaseCenter;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("caseCenter")
public class CaseCenterController {

	@Autowired
	private ICaseCenter iCaseCenter;
	
	@Value("${material_images_url}")
	private String material_images_url;
	
	@Value("${get_images_url}")
	private String get_images_url;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/list") 
	public void list(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("classid") != null && !"0".equals(request.getParameter("classid"))) 
				param.put("classid", request.getParameter("classid"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iCaseCenter.selectListCount(param);
			}
			list = iCaseCenter.selectList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/aratanolist") 
	public void aratanolist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("centerid", request.getParameter("id"));
			list = iCaseCenter.selectAratanoList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/add")
	public void add(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			CaseCenter a = (CaseCenter) JSONObject.toBean(JSONObject.fromObject(request.getParameter("caseCenter")), CaseCenter.class);
			List<CaseBuspro> b = ((List<CaseBuspro>) 
					JSONArray.toCollection(JSONArray.fromObject(request.getParameter("caseBuspro")), CaseBuspro.class));
			status = iCaseCenter.insert(a, b);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/del")
	public void del(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = iCaseCenter.delete(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/upd")
	public void upd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			CaseCenter a = (CaseCenter) JSONObject.toBean(JSONObject.fromObject(request.getParameter("caseCenter")), CaseCenter.class);
			List<CaseBuspro> b = ((List<CaseBuspro>) 
					JSONArray.toCollection(JSONArray.fromObject(request.getParameter("caseBuspro")), CaseBuspro.class));
			status = iCaseCenter.update(a, b);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/classlist")
	public void classlist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("classname") != null && !"0".equals(request.getParameter("classname"))) 
				param.put("classname", request.getParameter("classname"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iCaseCenter.selectClassListCount(param);
			}
			list = iCaseCenter.selectClassList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/classadd")
	public void classadd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			CaseCenterClass a = (CaseCenterClass) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("caseCenterClass")), CaseCenterClass.class);
			status = iCaseCenter.insertClass(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/classdel")
	public void classdel(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = iCaseCenter.deleteClass(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/classupd")
	public void classupd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			CaseCenterClass a = (CaseCenterClass) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("caseCenterClass")), CaseCenterClass.class);
			status = iCaseCenter.updateClass(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/htmlList") 
	public void htmlList(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List caseClass = new ArrayList();
		List cases = new ArrayList();
		List caseBus = new ArrayList();
		List caseslist = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			caseClass = iCaseCenter.selectClassList(param);
			cases = iCaseCenter.selectList(param);
			caseBus = iCaseCenter.selectAratanoList(param);
			for(Object m : caseClass){	//类型
				Map cls = (Map) m;
				List _cases = new ArrayList();
				for(Object m2 : cases){	//
					Map cls2 = (Map) m2;
					List _cases2 = new ArrayList();
					if(cls.get("id").equals(cls2.get("classid"))){
						for(Object m3 : caseBus){	//
							Map cls3 = (Map) m3;
							if(cls2.get("id").equals(cls3.get("centerid")))
								_cases2.add(m3);
						}
						cls2.put("buspro", _cases2);
						_cases.add(cls2);
						caseslist.add(cls2);
					}
				}
				cls.put("cases", _cases);
			}
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(caseClass).toString()+",\"list\":"+JSONArray.fromObject(caseslist).toString()+","
				+"\"totalPage\":"+totalPage+"}");
	}
	public static void main(String[] args) {
		System.out.println("http://maint.duofriend.com/upload/image/websiteUpload/website/975AA6488E46F771E5DE314EC5937513.png".length());
	}
	
}
