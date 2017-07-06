package com.gt.controller.customerCase;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gt.model.customerCase.CustomerCase;
import com.gt.model.customerCase.CustomerCaseDetail;
import com.gt.service.customerCase.ICustomerCaseDetailService;
import com.gt.service.customerCase.ICustomerCaseService;

/**
 * 
 * @author zhangwei
 *
 */
@Controller
@RequestMapping("/customercaseDetail")
public class CustomerCaseDetailController {
	
	@Autowired
	private ICustomerCaseDetailService customerCaseDetailService;
	@Autowired
	private ICustomerCaseService customerCaseService;
	@Value("${get_images_url}")
	private String getImagesUrl;
	@Value("${material_images_url}")
	private String setImagesUrl;
	/**
	 * 创建客户案例
	 * @param id
	 * @param name 名称
	 * @param code	编码
	 * @param remark 备注
	 * @return
	 */
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> create(
			@RequestParam(required = true)Integer id,
			@RequestParam(required = false)Integer detailId,
			@RequestParam(required = false)String headName,
			@RequestParam(required = false)String headImgUrl,
			@RequestParam(required = false)String qrcodeImgUrl){
		//找到对象
		CustomerCase customerCase = customerCaseService.findById(id);
		//不存在创建,存在则修改
		
		CustomerCaseDetail customerCaseDetail = customerCaseDetailService.findById(detailId);
		if(customerCaseDetail == null){
			customerCaseDetail = new CustomerCaseDetail();
		}
		customerCaseDetail.setDetail_name(headName);
		customerCaseDetail.setDetail_main_img(headImgUrl);
		customerCaseDetail.setDetail_other_img(qrcodeImgUrl);
		customerCaseDetail.setCustomerCase(customerCase);
		try {
			if(null != detailId && detailId >0){
				customerCaseDetailService.update(customerCaseDetail);
			}else{
				customerCaseDetailService.create(customerCaseDetail);  
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String,Object> modelMap = new HashMap<String,Object>(); 
		modelMap.put("success", "true");
		return modelMap;
	}
	/**
	 * 创建客户案例
	 * @param id
	 * @param name 名称
	 * @param code	编码
	 * @param remark 备注
	 * @return
	 */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> edit(
			@RequestParam(required = false)Integer detailId,
			@RequestParam(required = false)String headName,
			@RequestParam(required = false)String headImgUrl,
			@RequestParam(required = false)String qrcodeImgUrl){
		//不存在创建,存在则修改
		CustomerCaseDetail customerCaseDetail = customerCaseDetailService.findById(detailId);
		customerCaseDetail.setDetail_name(headName);
		customerCaseDetail.setDetail_main_img(headImgUrl);
		customerCaseDetail.setDetail_other_img(qrcodeImgUrl);
		customerCaseDetailService.create(customerCaseDetail);  
		Map<String,Object> modelMap = new HashMap<String,Object>(); 
		modelMap.put("success", "true");
		return modelMap;
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String delete(@RequestParam int id,//
			@RequestParam int detailId,Model model){
		CustomerCaseDetail detail = customerCaseDetailService.findById(detailId);
		//删除
		customerCaseDetailService.delete(detail);
		//返回编辑页面
		CustomerCase customerCase = customerCaseService.findById(id);
		List<CustomerCaseDetail> detailList = customerCaseDetailService.findByCustomerCase(customerCase);
		model.addAttribute("customerCase", customerCase);
		model.addAttribute("detailList", detailList);
		model.addAttribute("imagesUrl", getImagesUrl+"/");
		return "/jsp/manage/customercase/edit1.jsp";
	}
	
	@RequestMapping(value = "/deleteImages",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteImages(
			@RequestParam(required = false)Integer detailId,
			@RequestParam(required = false)String headImgUrl){
		System.out.println(headImgUrl);
		Map<String,Object> modelMap = new HashMap<String,Object>(); 
		modelMap.put("success", "true");
		return modelMap;
	}
}
