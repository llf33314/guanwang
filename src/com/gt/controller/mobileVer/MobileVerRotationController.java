package com.gt.controller.mobileVer;

import java.io.OutputStream;
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

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.gt.model.mobileVer.MobileVerRotation;
import com.gt.service.mobileVer.IMobileVerRotation;
import com.gt.utils.QRcodeKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("MobileVerRotation")
public class MobileVerRotationController {

	@Autowired
	private IMobileVerRotation iMobileVerRotation;
	
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
				totalPage = iMobileVerRotation.selectListCount(param);
			}
			list = iMobileVerRotation.selectList(param);
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
			MobileVerRotation a = (MobileVerRotation) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("mobileVerRotation")), MobileVerRotation.class);
			status = iMobileVerRotation.insert(a);
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
				status = iMobileVerRotation.delete(Integer.valueOf(id));
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
			MobileVerRotation a = (MobileVerRotation) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("mobileVerRotation")), MobileVerRotation.class);
			status = iMobileVerRotation.update(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping(value = "/html/getUrltoQRcode")
	public void getUrltoQRcode(HttpServletRequest request, HttpServletResponse response) {
		try {
			QRcodeKit.buildQRcode(request.getParameter("url"), 300, 300, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/html/downImage")
	public void downImage(HttpServletRequest request, HttpServletResponse response){
		try {
			String tempUrl = request.getParameter("url");
			String filename=System.currentTimeMillis()+".jpg";
			response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.replaceAll(" ", "").getBytes("utf-8"), "iso8859-1"));
			response.setContentType("application/octet-stream");
			OutputStream stream=response.getOutputStream();
			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
			Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
			BitMatrix bitMatrix = multiFormatWriter.encode(tempUrl, BarcodeFormat.QR_CODE, 500, 500, hints);
			QRcodeKit.writeToStream(bitMatrix, "JPEG", stream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
