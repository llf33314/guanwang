package com.gt.controller.webOrder;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.webOrder.WebOrder;
import com.gt.model.webOrder.WebOrderNotice;
import com.gt.service.webOrder.IWebOrder;
import com.gt.utils.JedisUtil;
import com.gt.utils.PropertiesUtil;
import com.gt.utils.QRcodeKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("webOrder")
public class WebOrderController {

	@Autowired
	private IWebOrder iWebOrder;
	
	@Value("${material_images_url}")
	private String material_images_url;
	
	@Value("${get_images_url}")
	private String get_images_url;
	
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
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iWebOrder.selectListCount(param);
			}
			list = iWebOrder.selectList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/html/add")
	public void add(HttpServletResponse response, HttpServletRequest request, WebOrder a){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		int id = 0;
		int type = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
//			WebOrder a = (WebOrder) JSONObject.toBean(
//					JSONObject.fromObject(request.getParameter("webOrder")), WebOrder.class);
			status = 1;
			id = iWebOrder.insert(a);
			type = a.getPaytype();
			JedisUtil.set("webOrder"+id, "0");
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+id+", \"time\":"+new Date().getTime()+", \"type\":"+type+"}");
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
				status = iWebOrder.delete(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (Exception e) {
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
			WebOrder a = (WebOrder) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("webOrder")), WebOrder.class);
			status = iWebOrder.update(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	
	@RequestMapping(value = "/html/getUrltoQRcode/{orderid}/{only}")
	public void getUrltoQRcode(HttpServletRequest request, HttpServletResponse response, @PathVariable("only") long only, @PathVariable("orderid") int orderid) {
		try {
			String filePath = PropertiesUtil.getWebPayUrl();
			String busid = PropertiesUtil.getWebPayBusId();
			Map<String,Object> a = iWebOrder.paySuccessOrderInfo(orderid);
			if("0".equals(a.get("paytype").toString())){
				QRcodeKit.buildQRcode(filePath+"webOrder/79B4DE7C/userGrant/"+orderid+"/"+only+".do", 300, 300, response);
			}else{
				JedisUtil.set("weborder"+a.get("orderno"), a.get("typename").toString());
				QRcodeKit.buildQRcode(filePath+"webOrder/79B4DE7C/"+orderid+"/aliPay.do?model=0&out_trade_no="
						+a.get("orderno")+"&total_fee="+a.get("price")+"&busId="+busid+"&subject="+a.get("typename"), 300, 300, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/DF7E2DO/callBack/{orderid}")
	public String callBack(HttpServletRequest request, HttpServletResponse response, @PathVariable("orderid") int orderid) {
		try {
			JedisUtil.set("webOrder"+orderid, "1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/html/mobliePaySuccess.jsp";
	}
	
	@RequestMapping("/html/isPaySuccess")
	public void isPaySuccess(HttpServletResponse response, HttpServletRequest request, Integer orderid){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String result = "";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			result = JedisUtil.get("webOrder"+orderid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+result+"}");
	}
	
	@RequestMapping("/html/{orderid}/paySuccess")
	public String paySuccess(Model model, @PathVariable("orderid") int orderid){
		try {
			model.addAttribute("info", iWebOrder.paySuccessOrderInfo(orderid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/html/successPay.jsp";
	}
	
	@RequestMapping("/html/{orderid}/aliPay")
	public String aliPay(@PathVariable("orderid") int orderid){
		String filePath = PropertiesUtil.getWebPayUrl();
		return "redirect:"+filePath+"webOrder/79B4DE7C/"+orderid+"/aliPay";
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/noticeList")
	public void noticeList(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iWebOrder.selectNoticeListCount(param);
			}
			list = iWebOrder.selectNoticeList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/saveNoticeObject")
	public void saveNoticeObject(HttpServletResponse response, HttpServletRequest request, String wonstr){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		List<WebOrderNotice> wons = null;
		try {
			p = response.getWriter();
			
			wons = ((List<WebOrderNotice>) JSONArray.toCollection(JSONArray.fromObject(wonstr), WebOrderNotice.class));
					
			for(WebOrderNotice won : wons)
				iWebOrder.saveNotice(won);
			status = 1;
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":\"\"}");
	}
	
}
