package com.gt.controller.manual;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.manual.Manual;
import com.gt.model.user.User;
import com.gt.service.manual.IManualService;
import com.gt.utils.CommonUtil;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("manual")
public class ManualController {

	@Autowired
	private IManualService iManualService;
	
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
			param.put("pid", request.getParameter("pid"));
			param.put("lv", request.getParameter("lv"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iManualService.selectListCount(param);
			}
			list = iManualService.selectList(param);
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/add")
	public void add(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			Manual m = new Manual();
			m.setLv(Integer.valueOf(request.getParameter("lv")));
			m.setTitle(request.getParameter("title"));
			m.setContent(request.getParameter("content"));
			m.setPhoneUrl(request.getParameter("phoneUrl"));
			m.setVideoUrl(request.getParameter("videoUrl"));
			m.setSort(request.getParameter("sort"));
			if(request.getParameter("parentId") == null) m.setParentId(0);
			else m.setParentId(Integer.valueOf(request.getParameter("parentId")));
			User u = CommonUtil.getLoginUser(request);
			m.setCreater(u.getUserName());
			status = iManualService.insert(m);
			msg = "提交成功";
		} catch (IOException e) {
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
				status = iManualService.delete(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/upd")
	public void upd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			Manual m = new Manual();
			m.setId(Integer.valueOf(request.getParameter("id")));
			m.setLv(Integer.valueOf(request.getParameter("lv")));
			m.setTitle(request.getParameter("title"));
			m.setContent(request.getParameter("content"));
			m.setPhoneUrl(request.getParameter("phoneUrl"));
			m.setVideoUrl(request.getParameter("videoUrl"));
			m.setSort(request.getParameter("sort"));
			if(request.getParameter("parentId") == null) m.setParentId(0);
			else m.setParentId(Integer.valueOf(request.getParameter("parentId")));
			User u = CommonUtil.getLoginUser(request);
			m.setCreater(u.getUserName());
			status = iManualService.update(m);
			msg = "提交成功";
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	
}
