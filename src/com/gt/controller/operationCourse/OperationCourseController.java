package com.gt.controller.operationCourse;

import com.gt.model.operationCourse.OperationCourse;
import com.gt.model.operationCourse.OperationCourseTeacher;
import com.gt.service.operationCourse.OperationCourseService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("operationCourse")
public class OperationCourseController {
	@Autowired
	private OperationCourseService operationCourseService;
	
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
			if(request.getParameter("teacherid") != null && !"0".equals(request.getParameter("teacherid")))
				param.put("teacherid", request.getParameter("teacherid"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = operationCourseService.selectListCount(param);
			}
			list = operationCourseService.selectList(param);
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
			OperationCourse a = (OperationCourse) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("operationCourse")), OperationCourse.class);
			status = operationCourseService.insert(a,request);
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
				status = operationCourseService.delete(Integer.valueOf(id), request);
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
			OperationCourse a = (OperationCourse) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("operationCourse")), OperationCourse.class);
			status = operationCourseService.update(a, request);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/teacherlist")
	public void teacherlist(HttpServletResponse response, HttpServletRequest request){
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
				totalPage = operationCourseService.selectTypeListCount(param);
			}
			list = operationCourseService.selectTypeList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/teacheradd")
	public void teacheradd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			OperationCourseTeacher a = (OperationCourseTeacher) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("operationCourseTeacher")), OperationCourseTeacher.class);
			status = operationCourseService.insertType(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/teacherdel")
	public void teacherdel(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = operationCourseService.deleteType(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/teacherupd")
	public void teacherupd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			OperationCourseTeacher a = (OperationCourseTeacher) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("operationCourseTeacher")), OperationCourseTeacher.class);
			status = operationCourseService.updateType(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}

	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/courselist1")
	public void courselist1(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		Map m = new HashMap();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			List list = operationCourseService.selectList(param);
			m.put("courselist", list);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONObject.fromObject(m).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}



	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/courselist")
	public void courselist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int counts = 0;
		Map m = new HashMap();
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("pcdesc") != null && !"0".equals(request.getParameter("pcdesc")))
				param.put("pcdesc", request.getParameter("pcdesc"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) &&
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				counts = operationCourseService.selectListCount1(param);
			}
			list = operationCourseService.selectList1(param);
			m.put("courses",list.size() == 0 ? 0 : list);
			m.put("counts",counts);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONObject.fromObject(m).toString()+", "
				+"\"totalPage\":"+counts+"}");
	}
	
	@RequestMapping("/allReset")
	public void allReset(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "操作失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			operationCourseService.allReset(request);
			msg = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
}
