package com.gt.controller.extend;

import java.io.PrintWriter;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.gt.model.extend.ExtendQQMain;
import com.gt.service.extend.IExtendService;

/**
 * 
 * @author ryan
 *
 */
@Controller
@RequestMapping("/extend")
public class ExtendController {
	
	@Autowired
	private IExtendService extendService;
	
	Logger log = Logger.getLogger(ExtendController.class);
	
	@RequestMapping("/html/getExtendQQ")
	public void listMaterial(HttpServletResponse response, HttpServletRequest request){
		log.info("ExtendController.html.getExtendQQ");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter p = null;
		Map<String, Object> resMap = new HashMap<>();
		resMap.put("status", 0);
		try {
			p = response.getWriter();
			String mei = request.getParameter("mei");
			log.info("params : "+mei);
			Map<String, Object> extendQQMain = extendService.getExtendQQ(mei);
			log.error("extendQQMain : " + extendQQMain + " - kurabe : " + (extendQQMain != null));
			if(extendQQMain != null){
				resMap.put("status", 1);
				resMap.put("qqNum", extendQQMain.get("extend_qq"));
				resMap.put("qqType", extendQQMain.get("extend_type"));
			}
			log.error("resMap : "+resMap);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			e.printStackTrace();
		}
		log.error(JSON.toJSONString(resMap).toString());
		p.write(JSON.toJSONString(resMap).toString());
	}
	
	/**
	 * @param id
	 * @param typeRadios
	 * @param qqNumber
	 * @param startTime
	 * @param endTime
	 * @return
	 */
	@RequestMapping(value = "/editQQ")
	@ResponseBody
	public Map<String, Object> edit(
			@RequestParam(required = false)Integer id,
			@RequestParam(required = false)String typeRadios,
			@RequestParam(required = false)String qqNumber,
			@RequestParam(required = false)String startTime,
			@RequestParam(required = false)String endTime){
		Map<String, Object> modelMap = new HashMap<String,Object>();
		ExtendQQMain qqMain = extendService.findQQById(id);
		if(qqMain == null){
			qqMain = new ExtendQQMain();
			qqMain.setExtendCreateTime(new Date());
			qqMain.setExtendStatus(0);
		}
		if(StringUtils.isNotEmpty(typeRadios)){
			if(!typeRadios.equals("-1")){
				qqMain.setExtendType(typeRadios);
				if(StringUtils.isNotEmpty(qqNumber)){
					qqMain.setExtendQQ(qqNumber);
				}
			}else{
				qqMain.setExtendType("-1");
			}
			if(StringUtils.isNotEmpty(startTime)){
				qqMain.setExtendStart(String2Date(startTime));
			}
			if(StringUtils.isNotEmpty(endTime)){
				qqMain.setExtendEnd(String2Date(endTime));
			}
		}
		Serializable resultId = null;
		extendService.createExtendQQ(qqMain);
		modelMap.put("success", true);
		modelMap.put("id", resultId);
		return modelMap;
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public Map<String, Object> list(){
		List<Map<String, Object>> list = extendService.findQQAll();
//		for(Map<String, Object> map : list){
		for(int i = 0; i < list.size(); i++){
			Map<String, Object> map = (Map<String, Object>) list.get(i);
			Date date_start = (Date) map.get("extend_start");
			Date date_end = (Date) map.get("extend_end");
			SimpleDateFormat dateFormater = new SimpleDateFormat("HH:mm");
			String extend_start = dateFormater.format(date_start);
			String extend_end = dateFormater.format(date_end);
			map.put("extend_start", extend_start);
			map.put("extend_end", extend_end);
		}
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", list);
		modelMap.put("msg", "success");
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@RequestMapping(value = "/delQQ", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> delQQ(@RequestParam(required = false)Integer id){
		extendService.delQQById(id);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("success", true);
		return modelMap;
	}
	
	private static Date String2Date(String str){
		SimpleDateFormat sim=new SimpleDateFormat("HH:mm");
		try {
			return sim.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
}
