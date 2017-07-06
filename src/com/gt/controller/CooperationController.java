package com.gt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.BasisCity;
import com.gt.service.employee.IEmployeeService;

@Controller
@RequestMapping("cooperation")
public class CooperationController {
	@Autowired
	private IEmployeeService employee;
	/**
	 * 城市联动
	 * @param response
	 * @param request
	 * @throws IOException
	 */
	@RequestMapping("/city")
	public void city(HttpServletResponse response,HttpServletRequest request) throws IOException{
		Integer cityid = 0;
		Object citys = request.getParameter("cityid");
		if(citys!=null){
			cityid = Integer.valueOf(citys.toString());
		}
		List<BasisCity> list = employee.citylist(cityid);

		PrintWriter p = response.getWriter();
		p.write(JSONArray.fromObject(list).toString());
	}
	/**
	 * 提交
	 * @param response
	 * @param request
	 * @throws IOException 
	 */
	@RequestMapping("/sumbit")
	public void sumbit(HttpServletResponse response,HttpServletRequest request) throws IOException{
		PrintWriter p = response.getWriter();
		p.write(JSONObject.fromObject(employee.sumbit(request)).toString());
	}
}
