package com.gt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.TManUser;
import com.gt.service.cooperation.ICooperationService;

@Controller
@RequestMapping("test")
public class TestController {
	
	@Autowired
	private ICooperationService coo;
	
	@RequestMapping("index")
	public String index(){
		TManUser user = coo.getUser();
		System.out.println("111");
		user.setLast_loginip("127.0.0.11");
		
		coo.update(user);
		return "/jsp/office/index.jsp";
	}
	
	@RequestMapping("demo")
	public String demo(){
		return "/jsp/demo/demo.jsp";
	}
	
	@RequestMapping("demo2")
	public String demo2(){
		return "/jsp/demo/demo2.jsp";
	}
	
	@RequestMapping("index2")
	public String index2(){
		return "/jsp/manage/case/index.jsp";
	}
}
