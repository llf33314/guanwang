package com.gt.controller.productCenter;

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

import com.gt.model.productCenter.ProductCenter;
import com.gt.model.productCenter.ProductCenterBottomImg;
import com.gt.model.productCenter.ProductCenterImg;
import com.gt.model.productCenter.ProductCenterType;
import com.gt.model.productCenter.ProductCenterVbtn;
import com.gt.service.productCenter.ProductCenterService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("productCenter")
public class ProductCenterController {
	@Autowired
	private ProductCenterService productCenterService;
	
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
			if(request.getParameter("classid") != null && !"0".equals(request.getParameter("classid"))) 
				param.put("classid", request.getParameter("classid"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = productCenterService.selectListCount(param);
			}
			list = productCenterService.selectList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/imglist") 
	public void imglist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("productid") != null && !"0".equals(request.getParameter("productid"))) 
				param.put("productid", request.getParameter("productid"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
//				totalPage = productCenterService.selectImgListCount(param);
			}
			list = productCenterService.selectImgList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/btnlist") 
	public void btnlist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("productid") != null && !"0".equals(request.getParameter("productid"))) 
				param.put("productid", request.getParameter("productid"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
//				totalPage = productCenterService.selectImgListCount(param);
			}
			list = productCenterService.selectBtnList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/add")
	public void add(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ProductCenter a = (ProductCenter) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("ProductCenter")), ProductCenter.class);
			List<ProductCenterImg> b = ((List<ProductCenterImg>) JSONArray.toCollection(
					JSONArray.fromObject(request.getParameter("ProductCenterImg")), ProductCenterImg.class));
			List<ProductCenterVbtn> c = ((List<ProductCenterVbtn>) JSONArray.toCollection(
					JSONArray.fromObject(request.getParameter("ProductCenterVbtn")), ProductCenterVbtn.class));
					
			status = productCenterService.insert(a, b, c, request);
			msg = "提交成功";
		} catch (Exception e) {
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
				status = productCenterService.delete(Integer.valueOf(id), request);
				msg = "成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/upd")
	public void upd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ProductCenter a = (ProductCenter) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("ProductCenter")), ProductCenter.class);
			List<ProductCenterImg> b = ((List<ProductCenterImg>) JSONArray.toCollection(
					JSONArray.fromObject(request.getParameter("ProductCenterImg")), ProductCenterImg.class));
			List<ProductCenterVbtn> c = ((List<ProductCenterVbtn>) JSONArray.toCollection(
					JSONArray.fromObject(request.getParameter("ProductCenterVbtn")), ProductCenterVbtn.class));
			status = productCenterService.update(a, b, c, request);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/typelist")
	public void typelist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			if(request.getParameter("classname") != null && !"0".equals(request.getParameter("classname"))) 
				param.put("classname", request.getParameter("classname"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = productCenterService.selectTypeListCount(param);
			}
			list = productCenterService.selectTypeList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/typeadd")
	public void typeadd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ProductCenterType a = (ProductCenterType) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("productCenterType")), ProductCenterType.class);
			status = productCenterService.insertType(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/typedel")
	public void typedel(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = productCenterService.deleteType(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/typeupd")
	public void typeupd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ProductCenterType a = (ProductCenterType) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("productCenterType")), ProductCenterType.class);
			status = productCenterService.updateType(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/bottomlist")
	public void bottomlist(HttpServletResponse response, HttpServletRequest request){
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
				totalPage = productCenterService.selectBottomImgListCount(param);
			}
			list = productCenterService.selectBottomImgList(param);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/bottomadd")
	public void bottomadd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ProductCenterBottomImg a = (ProductCenterBottomImg) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("bottomImg")), ProductCenterBottomImg.class);
			status = productCenterService.insertBottomImg(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/bottomdel")
	public void bottomdel(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			String id = request.getParameter("id");
			if(id != null && !"".equals(id)){
				status = productCenterService.deleteBottomImg(Integer.valueOf(id));
				msg = "成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/bottomupd")
	public void bottomupd(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ProductCenterBottomImg a = (ProductCenterBottomImg) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("bottomImg")), ProductCenterBottomImg.class);
			status = productCenterService.updateBottomImg(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/productlist") 
	public void productlist(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		Map m = new HashMap();
		int totalPage = 0;
		try {
			p = response.getWriter();
			Map param = new HashMap();
			List list = productCenterService.selectList(param);
			List typeList = productCenterService.selectTypeList(param);
			List bottomImgList = productCenterService.selectBottomImgList(param);
			
			m.put("products", list);
			m.put("types", typeList);
			m.put("bottomImgs", bottomImgList);
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONObject.fromObject(m).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/allReset")
	public void allReset(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "操作失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			productCenterService.allReset(request);
			msg = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
}
