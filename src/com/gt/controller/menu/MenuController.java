package com.gt.controller.menu;

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

import com.alibaba.fastjson.JSON;
import com.gt.model.menu.Menu;
import com.gt.model.user.User;
import com.gt.service.menu.IMenuService;
import com.gt.utils.CommonUtil;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("menu")
public class MenuController {
	
	@Autowired
	private IMenuService menuService;
	
	@RequestMapping("getMenus")
	public void getMenus(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		try {
			User user = CommonUtil.getLoginUser(request);
			Map<String, Object> result = new HashMap<>();
			result.put("status", 0);
			if(user == null){
				response.getWriter().write(JSON.toJSONString(result).toString());
				return;
			}
//			User user = new User();
//			user.setId(1);
			List<Map<String, Object>> list = menuService.getMenuByUser(user);
			result.put("status", 1);
			result.put("menus", list);
			result.put("user", user);
			response.getWriter().write(JSON.toJSONString(result).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
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
			param.put("type", request.getParameter("type"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = menuService.selectListCount(param);
			}
			list = menuService.selectList(param);
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
			Menu m = new Menu();
			if(request.getParameter("pid") == null) m.setMenuPid(0);
			else m.setMenuPid(Integer.valueOf(request.getParameter("pid")));
			m.setMenuName(request.getParameter("name"));
			m.setMenuUrl(request.getParameter("url"));
			m.setMenuDesc(request.getParameter("desc"));
			m.setMenuType(Integer.valueOf(request.getParameter("type")));
			if(request.getParameter("sort") == null || "".equals(request.getParameter("sort"))) m.setMenu_sort(0);
			else m.setMenu_sort(Integer.valueOf(request.getParameter("sort")));
			status = menuService.insert(m);
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
				status = menuService.delete(Integer.valueOf(id));
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
			Menu m = new Menu();
			m.setId(Integer.valueOf(request.getParameter("id")));
			if(request.getParameter("pid") == null) m.setMenuPid(0);
			else m.setMenuPid(Integer.valueOf(request.getParameter("pid")));
			m.setMenuName(request.getParameter("name"));
			m.setMenuUrl(request.getParameter("url"));
			m.setMenuDesc(request.getParameter("desc"));
			m.setMenuType(Integer.valueOf(request.getParameter("type")));
			m.setMenu_sort(Integer.valueOf(request.getParameter("sort")));
			status = menuService.update(m);
			msg = "提交成功";
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
}
