package com.gt.controller.material;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.gt.model.material.MaterialMain;
import com.gt.service.material.IMaterialFacotryService;
import com.gt.service.material.MaterialChoiseFactory;

@Controller
@RequestMapping("material")
public class MaterialController {
	
	@SuppressWarnings("static-access")
	@RequestMapping("{type}/upload")
	public void upload(HttpServletResponse response, HttpServletRequest request, 
			@PathVariable String type){
		response.setContentType("text/html;charset=UTF-8");
		Map<String, Object> results = new HashMap<>();
		results.put("status", 0);
		try {
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			MultipartFile multipartFile = multipartRequest.getFile("materialFile");
			IMaterialFacotryService service = MaterialChoiseFactory.getInstance().getMaterialFactoryService(type);
			results = service.uploadMaterial(multipartFile);
			response.getWriter().write(JSON.toJSONString(results).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("{type}/listMaterial")
	public void listMaterial(HttpServletResponse response, HttpServletRequest request, 
			@RequestParam Map<String, Object> params, @PathVariable String type){
		Integer page = 1;
		Integer rows = 10;
		try {
			if(params.containsKey("page")){
				page = Integer.parseInt((params.get("page").toString()));
			}
			if(params.containsKey("rows")){
				rows = Integer.parseInt((params.get("rows").toString()));
			}
//			page = Integer.parseInt((params.get("page").toString()));
//			rows = Integer.parseInt((params.get("rows").toString()));
			IMaterialFacotryService service = MaterialChoiseFactory.getInstance().getMaterialFactoryService(type);
			List<MaterialMain> matierials = service.listMaterial(page, rows);
			response.getWriter().write(JSON.toJSONString(matierials).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("static-access")
	@RequestMapping("{type}/countMaterial")
	public void countMaterial(HttpServletResponse response, HttpServletRequest request, 
			@PathVariable String type){
		try {
			IMaterialFacotryService service = MaterialChoiseFactory.getInstance().getMaterialFactoryService(type);
			int count = service.countMaterials();
			response.getWriter().write(JSON.toJSONString(count).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("{type}/deleteMaterial")
	public void deleteMaterial(HttpServletResponse response, HttpServletRequest request, 
			@PathVariable String type, @RequestParam Map<String, Object> params){
		try {
			String idstr = (String) params.get("ids");
			String[] ids = idstr.split(",");
			IMaterialFacotryService service = MaterialChoiseFactory.getInstance().getMaterialFactoryService(type);
			boolean flag = service.deleteMaterial(ids);
			Map<String, Object> results = new HashMap<>();
			results.put("status", flag);
			response.getWriter().write(JSON.toJSONString(results).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
