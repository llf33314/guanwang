package com.gt.controller.joinUs;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gt.model.joinus.JoinUs;
import com.gt.model.user.User;
import com.gt.service.joinUs.IJoinService;
import com.gt.utils.CommonUtil;

/**
 * 
 * @author zhangwei
 *
 */
@Controller
@RequestMapping("/joinus")
public class JoinUsController {
	@Autowired
	private IJoinService joinService;
	@Value("${get_images_url}")
	private String getImagesUrl;
	@Value("${material_images_url}")
	private String setImagesUrl;
	
	
	/*@RequestMapping(value = "/list",method = RequestMethod.POST)
	public void list(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		PrintWriter p = null;
		List<JoinUs> list = new ArrayList<JoinUs>();
		try {
			p = response.getWriter();
			list = joinService.findAll();
			status = 1;
		} catch (IOException e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"msg\":\"\", \"data\":"+JSONArray.fromObject(list).toString()+"}");
	}*/
	
	@RequestMapping(value = "/list",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(HttpServletResponse response, HttpServletRequest request){
		List<JoinUs> list = joinService.findAll();
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", list);
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@RequestMapping(value = "/fileUpload",method = RequestMethod.POST)
	public String fileUpload(@RequestParam MultipartFile file,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		response.setContentType("text/plain; charset=UTF-8");
		if(file.getName() == null){
			return null;
		}
		PrintWriter out = response.getWriter();
		String originalFilename = null;
		originalFilename = file.getOriginalFilename();
		String suffix = originalFilename.substring(
				originalFilename.lastIndexOf("."), originalFilename.length());
		System.out.println(suffix);
		String fileName = String.valueOf(new Date().getTime())+suffix;
		try {
			file.transferTo(new File(setImagesUrl, fileName));
		} catch (IOException e) {
			System.out.println("文件[" + originalFilename + "]上传失败,堆栈轨迹如下");
			e.printStackTrace();
			out.print("文件上传失败，请重试！！");
			out.flush();
			return null;
		} 
		out.print(getImagesUrl+"/"+fileName);
		out.flush();
		return null;
	}
	
	/**
	 * 
	 * @param title	标题
	 * @param id
	 * @param imagesUrl 图片名称
	 * @param originalFilename 图片源名称
	 * @param duty	职责
	 * @param demand	要求
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> edit(
			@RequestParam(required = false) String title,
			@RequestParam(required = false) Integer id,
			@RequestParam(required = false) String imagesUrl,
			@RequestParam(required = false) String originalFilename,
			@RequestParam(required = false) String duty,
			@RequestParam(required = false) String demand,
			@RequestParam(required = false) Integer status,
			Model model,HttpServletRequest request){
		JoinUs joinUs = joinService.findById(id);
		if(joinUs == null){
			joinUs = new JoinUs();
		}
		if(StringUtils.isNotBlank(title)){
			joinUs.setTitle(title);
		}
		if(StringUtils.isNotBlank(duty)){
			joinUs.setDuty(duty);
		}
		if(StringUtils.isNotBlank(demand)){
			joinUs.setDemand(demand);
		}
		if(status != null){
			joinUs.setStatus(status);
		}
		if(imagesUrl != null && imagesUrl != ""){
			if(StringUtils.isNotBlank(originalFilename)){
				joinUs.setOriginalFilename(originalFilename);
			}
			joinUs.setImagesUrl(imagesUrl);
		}
		Serializable resultId = null;
		//新增或修改
		if(id != null && id > 0){
			joinService.update(joinUs);
			resultId = joinUs.getId();
		}else{
			//获得当前用户
			HttpServletRequest servletRequest = (HttpServletRequest) request;
			User user = CommonUtil.getLoginUser(servletRequest);
			if(user != null){
				joinUs.setCreater(user.getUserName());
			}
			resultId = joinService.create(joinUs);
		}
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("success", "true");
		modelMap.put("id", resultId);
		return modelMap;
	}
	@RequestMapping("/editPre")
	public String editPre(@RequestParam(required = false) Integer id,Model model){
		JoinUs resultJoinUs = joinService.findById(id);
		model.addAttribute("success", "true");
		model.addAttribute("joinus", resultJoinUs);
		model.addAttribute("imagesUrl", getImagesUrl+"/");
		return "/jsp/manage/joinus/edit.jsp";
	}
	
	@RequestMapping("delete")
	public String delete(@RequestParam(required = true) Integer id){
		JoinUs joinUs = joinService.findById(id);
		if(joinUs != null){
			joinService.delete(joinUs);
		}
		return "/jsp/manage/joinus/index.jsp";
	}
	
	@RequestMapping("/html/listPhoto")
	@ResponseBody
	public Map<String, Object> listPhoto(){
		Map<String, Object> modelMap = new HashMap<String,Object>();
		List<JoinUs> list = joinService.findByStatus(JoinUs.STATUS_SELECT);
		modelMap.put("data", list);
		modelMap.put("msg", "success");
		modelMap.put("imagesUrl", getImagesUrl+"/");
		return modelMap;
	}
}
