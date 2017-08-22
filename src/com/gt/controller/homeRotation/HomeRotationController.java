package com.gt.controller.homeRotation;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gt.utils.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.home.HomeRotation;
import com.gt.service.homeRotation.IHomeRotation;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("homeRotation")
public class HomeRotationController {

	@Autowired
	private IHomeRotation iHomeRotation;
	
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
				totalPage = iHomeRotation.selectListCount(param);
			}
			list = iHomeRotation.selectList(param);
			status = 1;
		} catch (Exception e) {
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
			HomeRotation a = (HomeRotation) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("homeRotation")), HomeRotation.class);
			a.setIsshow(0);
			a.setShowtime("20");
			status = iHomeRotation.insert(a);
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
				status = iHomeRotation.delete(Integer.valueOf(id));
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
			HomeRotation a = (HomeRotation) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("homeRotation")), HomeRotation.class);
			a.setShowtime("20");
			status = iHomeRotation.update(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	@RequestMapping("/saveShow")
	public void saveShow(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "操作失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			int id = CommonUtil.toInteger(request.getParameter("id"));
			int isshow = CommonUtil.toInteger(request.getParameter("isshow"));
			if(isshow < 1){
				iHomeRotation.saveShow(id,isshow);
				msg = "操作成功";
				status = 1;
			}else{
				List list = iHomeRotation.findIsshow();
				if(list.size() > 0){
					msg = "已存在显示广告！";
					status = 0;
				}else{
					iHomeRotation.saveShow(id,isshow);
					msg = "操作成功";
					status = 1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/findShowImage")
	public void findShowImage(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List list = new ArrayList();
		int totalPage = 0;
		try {
			p = response.getWriter();
			list = iHomeRotation.findShowImage();
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+", "
				+"\"totalPage\":"+totalPage+"}");
	}
}
