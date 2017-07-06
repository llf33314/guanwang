package com.gt.controller.manage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("manage/index")
public class IndexController {
	
	protected static Logger LOGGER = Logger.getLogger(IndexController.class);
	
	@RequestMapping(value = "/toIndex", method = RequestMethod.GET)
	public ModelAndView toIndex(HttpServletRequest request, HttpServletResponse response) throws Exception {
		LOGGER.info("跳转到index页面");
		return new ModelAndView("/jsp/manage/case/index.jsp");
	}
	
	@RequestMapping(value = "/toLogin", method = RequestMethod.GET)
	public ModelAndView toLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		LOGGER.debug("跳转到login页面");
		return new ModelAndView("/jsp/manage/login.jsp");
	}
}
