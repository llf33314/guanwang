package com.gt.controller.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.gt.model.user.User;
import com.gt.service.user.IUserService;
import com.gt.utils.CommonUtil;
import com.gt.utils.MD5Util;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping("login")
	public void login(HttpServletResponse response, HttpServletRequest request, 
			@RequestParam Map<String, Object> params){
		response.setContentType("text/html;charset=UTF-8");
		Map<String, Object> results = new HashMap<>();
		results.put("status", 0);
		results.put("msg", "登录失败，账号或密码不正确");
		try {
			if(!params.containsKey("userLogin") || !params.containsKey("userPassword")){
				results.put("msg", "登录账号和密码不能为空");
				response.getWriter().write(JSON.toJSONString(results).toString());
				return;
			}
			String userLogin = params.get("userLogin").toString();
			String userPassword = params.get("userPassword").toString();
			User user = userService.login(userLogin, userPassword);
			if(user != null){ // 成功
				CommonUtil.setLoginUser(request, user);
				results.put("status", 1);
			}
			response.getWriter().write(JSON.toJSONString(results).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("loginOut")
	public String loginOut(HttpServletResponse response, HttpServletRequest request){
		try {
			CommonUtil.outLoginUser(request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/manage/index/toLogin";
	}
	
	@RequestMapping("modifyPwd")
	public void modifyPwd(HttpServletResponse response, HttpServletRequest request,
			@RequestParam Map<String, Object> params){
		Map<String, Object> results = new HashMap<>();
		results.put("status", 0);
		results.put("msg", "原始密码不正确");
		try {
			User user = CommonUtil.getLoginUser(request);
			String oldPasswordMap = params.get("oldPassword").toString();
			String oldPassword = MD5Util.getMD5SM(oldPasswordMap).toLowerCase();
			String password = user.getUserPassword().toLowerCase();
			if(!password.equals(oldPassword)){
				response.getWriter().write(JSON.toJSONString(results).toString());
				return;
			}
			String newPassword = params.get("newPassword").toString();
			user.setUserPassword(MD5Util.getMD5(newPassword));
			userService.modifyUserPassword(user);
			results.put("status", 1);
			results.put("msg", "密码修改成功");
			response.getWriter().write(JSON.toJSONString(results).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
