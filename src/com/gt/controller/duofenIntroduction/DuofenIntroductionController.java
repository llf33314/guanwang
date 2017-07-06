package com.gt.controller.duofenIntroduction;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gt.model.duofenIntroduction.DuofenIntroduction;
import com.gt.service.duofenIntroduction.IDuofenIntroduction;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("duofenIntr")
public class DuofenIntroductionController {

	@Autowired
	private IDuofenIntroduction iDuofenIntroduction;
	
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
			param.put("imgtype", request.getParameter("imgtype"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iDuofenIntroduction.selectListCount(param);
			}
			list = iDuofenIntroduction.selectList(param);
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
			List<DuofenIntroduction> duofenIntroductions = new ArrayList<DuofenIntroduction>();
			if("0".equals(request.getParameter("imgtype"))){
				duofenIntroductions = ((List<DuofenIntroduction>) JSONArray.toCollection(
						JSONArray.fromObject(request.getParameter("imgurl")), DuofenIntroduction.class));
			}else{
				DuofenIntroduction a = (DuofenIntroduction) JSONObject.toBean(
						JSONObject.fromObject(request.getParameter("imgurl")), DuofenIntroduction.class);
				duofenIntroductions.add(a);
			}
			status = iDuofenIntroduction.insert(duofenIntroductions, Integer.valueOf(request.getParameter("imgtype")));
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
				status = iDuofenIntroduction.delete(Integer.valueOf(id));
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
			DuofenIntroduction a = (DuofenIntroduction) JSONObject.toBean(
					JSONObject.fromObject(request.getParameter("imgurl")), DuofenIntroduction.class);
			status = iDuofenIntroduction.update(a);
			msg = "提交成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
	@RequestMapping("/upload")
	public void upload(HttpServletResponse response, HttpServletRequest request, 
			@RequestParam MultipartFile[] videoFile){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "上传失败";
		String data = "";
		PrintWriter p = null;
		InputStream is = null;
		OutputStream os = null;
		try {
			p = response.getWriter();
			
			if(videoFile[0].getSize() > Integer.MAX_VALUE){//文件长度  
				msg = "文件过大";
			}else{
				String originalFilename = videoFile[0].getOriginalFilename();
				String newName = new SimpleDateFormat("yyyyMMddmmss").format(System.currentTimeMillis()) 
						+ new Random().nextInt(1000000)  
						+ originalFilename.substring(originalFilename.lastIndexOf("."));
				is = videoFile[0].getInputStream();//多文件也适用,我这里就一个文件  
				byte[] b = new byte[(int)videoFile[0].getSize()];  
				int read = 0;  
				int i = 0;  
				while((read=is.read())!=-1){  
					b[i] = (byte) read;  
					i++;  
				}  
				is.close();  
				os = new FileOutputStream(new File(material_images_url + 
						"/" + newName));  
				os.write(b);  
				os.flush();  
				os.close();  
				
				status = 1;
				data = get_images_url + "/" + newName;
				msg = "上传成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(is != null) is.close();
				if(os != null) os.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":\""+data+"\"}");
	}
	
	
}
