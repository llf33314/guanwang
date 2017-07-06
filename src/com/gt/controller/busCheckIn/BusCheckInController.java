package com.gt.controller.busCheckIn;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.busCheckIn.BusCheckIn;
import com.gt.service.busCheckIn.IBusCheckInService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("busCheckIn")
public class BusCheckInController {
	
	@Autowired
	private IBusCheckInService iBusCheckInService;
	
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
			Map param0 = new HashMap();
			param0.put("date", new SimpleDateFormat("yyyy-MM-dd").format(System.currentTimeMillis()));
			List list0 = iBusCheckInService.selectList(param0);
			if(list0.size() <= 0){
				BusCheckIn b = new BusCheckIn();
				b.setBusCheckIn((int)(100 * Math.random() + 150));
				iBusCheckInService.insert(b);
			}
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iBusCheckInService.selectListCount(param);
			}
			list = iBusCheckInService.selectList(param);
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
//	@RequestMapping("/add")
//	public void add(HttpServletResponse response, HttpServletRequest request){
//		response.setContentType("text/html;charset=UTF-8");
//		int status = 0;
//		String msg = "提交失败";
//		PrintWriter p = null;
//		try {
//			p = response.getWriter();
//			BusCheckIn b = new BusCheckIn();
//			b.setBusCheckIn(busCheckIn);
//			status = iBusCheckInService.insert(b);
//			msg = "提交成功";
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
//	}
	
}
