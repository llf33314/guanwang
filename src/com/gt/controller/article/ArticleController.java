package com.gt.controller.article;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gt.model.article.ArticleMain;
import com.gt.model.user.User;
import com.gt.service.article.IArticleService;
import com.gt.service.extend.IExtendService;
import com.gt.utils.CommonUtil;
import com.gt.utils.JedisUtil;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("article")
public class ArticleController {

	@Autowired
	private IArticleService iArticleService;
	
	@Value("${get_video_url}")
	private String get_video_url;
	
	@Value("${material_video_url}")
	private String material_video_url;
	
	@Autowired
	private IExtendService extendService;
	
	Logger log = Logger.getLogger(ArticleController.class);
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping("/html/list")
	public void list(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
//		List list = new ArrayList();
		int totalPage = 0;
		String json = "";
		try {
			p = response.getWriter();
			Map param = new HashMap();
			param.put("id", request.getParameter("id"));
			param.put("article_type", request.getParameter("article_type"));
			if(request.getParameter("page") != null && !"0".equals(request.getParameter("page")) && 
					request.getParameter("pageSize") != null && !"0".equals(request.getParameter("pageSize"))){
				int page = Integer.valueOf(request.getParameter("page"));
				int pageSize = Integer.valueOf(request.getParameter("pageSize"));
				param.put("page", (page - 1) * pageSize);
				param.put("pageSize", pageSize);
				totalPage = iArticleService.selectListCount(param);
			}
			if(request.getParameter("home") != null){
				if(JedisUtil.get("article:list") != null){
					json = JedisUtil.get("article:list");
				}else{
					json = JSONArray.fromObject(iArticleService.selectList(param)).toString();
					JedisUtil.set("article:list", json);
				}
			}else{
				json = JSONArray.fromObject(iArticleService.selectList(param)).toString();
			}
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+json+", "
				+"\"totalPage\":"+totalPage+"}");
	}
	
	@RequestMapping("/html/getExtendqq")
	public void getExtendqq(HttpServletResponse response, HttpServletRequest request){
		log.info("ExtendController.html.getExtendQQ");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter p = null;
		int status = 0;
		String qqNum = "";
		String qqType = "";
		try {
			p = response.getWriter();
			String mei = request.getParameter("mei");
			log.info("params : " + mei);
			Map<String, Object> extendQQMain = extendService.getExtendQQ(mei);
			log.info("extendQQMain : " + extendQQMain + " - kurabe : " + (extendQQMain != null));
			if(extendQQMain != null){
				status = 1;
				qqNum = extendQQMain.get("extend_qq").toString();
				qqType = extendQQMain.get("extend_type").toString();
			}
			log.info("resMap : " + qqNum + " - " + qqType);
		} catch (Exception e) {
			log.info(e.getMessage(), e);
			e.printStackTrace();
		}
		log.info("{\"status\":"+status+", \"qqNum\":\"" + qqNum + "\", \"qqType\":\"" + qqType + "\"}");
		p.write("{\"status\":"+status+", \"qqNum\":\"" + qqNum + "\", \"qqType\":\"" + qqType + "\"}");
	}
	
	@RequestMapping("/add")
	public void add(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "提交失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			ArticleMain articleMain = new ArticleMain();
			articleMain.setArticleType(Integer.valueOf(request.getParameter("articleType")));
			articleMain.setTitle(request.getParameter("title"));
			articleMain.setContent(request.getParameter("content"));
			articleMain.setVideoUrl(request.getParameter("videoUrl"));
			articleMain.setArtPageTitle(request.getParameter("artPageTitle"));
			articleMain.setArtMeta(request.getParameter("artMeta"));
			User u = CommonUtil.getLoginUser(request);
			articleMain.setCreater(u.getUserName());
			status = iArticleService.insert(articleMain, request);
			msg = "提交成功";
		} catch (IOException e) {
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
				status = iArticleService.delete(Integer.valueOf(id), request);
				msg = "成功";
			}
		} catch (IOException e) {
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
			ArticleMain articleMain = new ArticleMain();
			articleMain.setId(Integer.valueOf(request.getParameter("id")));
			articleMain.setArticleType(Integer.valueOf(request.getParameter("articleType")));
			articleMain.setTitle(request.getParameter("title"));
			articleMain.setContent(request.getParameter("content"));
			articleMain.setVideoUrl(request.getParameter("videoUrl"));
			articleMain.setArtPageTitle(request.getParameter("artPageTitle"));
			articleMain.setArtMeta(request.getParameter("artMeta"));
			User u = CommonUtil.getLoginUser(request);
			articleMain.setCreater(u.getUserName());
			status = iArticleService.update(articleMain, request);
			msg = "提交成功";
		} catch (IOException e) {
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
				os = new FileOutputStream(new File(material_video_url + 
						"/" + newName));  
				os.write(b);  
				os.flush();  
				os.close();  
				
				status = 1;
				data = get_video_url + "/" + newName;
				msg = "上传成功";
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(is != null) is.close();
				if(os != null) os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":\""+data+"\"}");
	}
	
	@RequestMapping("/allReset")
	public void allReset(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		String msg = "操作失败";
		PrintWriter p = null;
		try {
			p = response.getWriter();
			iArticleService.allReset(request);
			msg = "操作成功";
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\""+msg+"\", \"data\":"+null+"}");
	}
	
}
