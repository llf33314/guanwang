package com.gt.controller.technicalSupport;

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

import com.gt.model.technicalSupport.TechnicalSupport;
import com.gt.model.technicalSupport.TechnicalSupportMenu;
import com.gt.model.user.User;
import com.gt.service.technicalSupport.TechnicalSupportService;
import com.gt.utils.CommonUtil;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("technicalSupport")
public class TechnicalSupportController {
	
	@Autowired
	private TechnicalSupportService technicalSupportService;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/menuList")
	public void menuList(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			param.put("pid", request.getParameter("pid"));
			list = technicalSupportService.selectMenuList(param);
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+"}");
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/QandAList")
	public void QandAList(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			param.put("tsMenuId", request.getParameter("tsMenuId"));
			param.put("keyword", request.getParameter("keyword"));
			list = technicalSupportService.selectQandAList(param);
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+"}");
	}
	
	@RequestMapping("/addMenu")
	public void addMenu(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			TechnicalSupportMenu tsm = new TechnicalSupportMenu();
			tsm.setTsName(request.getParameter("tsName"));
			tsm.setTsLevel(Integer.valueOf(request.getParameter("tsLevel")));
			if(request.getParameter("parentId") != null)
				tsm.setParentId(Integer.valueOf(request.getParameter("parentId")));
			User u = CommonUtil.getLoginUser(request);
			tsm.setCreater(u.getUserName());
			status = technicalSupportService.insertMenu(tsm);
			msg = "提交成功";
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/addQandA")
	public void addQandA(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			TechnicalSupport ts = new TechnicalSupport();
			ts.setTsMenuId(Integer.valueOf(request.getParameter("tsMenuId")));
			ts.setQuestion(request.getParameter("question"));
			ts.setAnswer(request.getParameter("answer"));
			User u = CommonUtil.getLoginUser(request);
			ts.setCreater(u.getUserName());
			status = technicalSupportService.insertQandA(ts);
			msg = "提交成功";
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/updMenu")
	public void updMenu(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			TechnicalSupportMenu tsm = new TechnicalSupportMenu();
			tsm.setId(Integer.valueOf(request.getParameter("id")));
			tsm.setTsName(request.getParameter("tsName"));
			tsm.setTsLevel(Integer.valueOf(request.getParameter("tsLevel")));
			if(request.getParameter("parentId") == null) tsm.setParentId(0);
			else tsm.setParentId(Integer.valueOf(request.getParameter("parentId")));
			User u = CommonUtil.getLoginUser(request);
			tsm.setCreater(u.getUserName());
			status = technicalSupportService.updateMenu(tsm);
			msg = "提交成功";
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/updQandA")
	public void updQandA(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			TechnicalSupport ts = new TechnicalSupport();
			ts.setId(Integer.valueOf(request.getParameter("id")));
			ts.setTsMenuId(Integer.valueOf(request.getParameter("tsMenuId")));
			ts.setQuestion(request.getParameter("question"));
			ts.setAnswer(request.getParameter("answer"));
			User u = CommonUtil.getLoginUser(request);
			ts.setCreater(u.getUserName());
			status = technicalSupportService.updateQandA(ts);
			msg = "提交成功";
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/delMenu")
	public void delMenu(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = technicalSupportService.deleteMenu(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/delQandA")
	public void delQandA(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = technicalSupportService.deleteQandA(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
}
