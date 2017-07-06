package com.gt.controller.customerCase;

import java.io.IOException;
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

import com.gt.service.customerCase.ICustomerCaseDetailService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("case")
public class CaseController {

	@Autowired
	private ICustomerCaseDetailService iCustomerCaseDetailService;
	
	@Value("${get_images_url}")
	private String get_images_url;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/list")
	public void list(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("case_code", request.getParameter("case_code"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
			}
			list = iCustomerCaseDetailService.findByCustomerCaseByPage(param);
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"rootUrl\":\""+get_images_url+"/\"}");
	}
	
}
