package com.gt.controller.customerCase;

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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gt.common.pagination.Pagination;
import com.gt.model.customerCase.CustomerCase;
import com.gt.model.customerCase.CustomerCaseDetail;
import com.gt.model.user.User;
import com.gt.service.customerCase.ICustomerCaseDetailService;
import com.gt.service.customerCase.ICustomerCaseService;
import com.gt.utils.CommonUtil;


/**
 * 
 * @author zhangwei
 *
 */
@Controller
@RequestMapping("/customercase")
public class CustomerCaseController {
	
	@Autowired
	private ICustomerCaseService customerCaseService;
	@Autowired
	private ICustomerCaseDetailService customerCaseDetailService;
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
			@RequestParam(required = false)Integer id,
			@RequestParam(required = false)String name,
			@RequestParam(required = false)String code,
			@RequestParam(required = false)String remark,
			HttpServletRequest request){
		Map<String,Object> modelMap = new HashMap<String,Object>(); 
		//找到对象
		CustomerCase customerCase = customerCaseService.findById(id);
		//不存在创建,存在则修改
		if(customerCase == null){
			//判断名称是否已经存在
			customerCase = customerCaseService.findByCode(code);
			if(customerCase != null){
				modelMap.put("error", "编号已经存在!");
				return modelMap;
			}
			customerCase = new CustomerCase();
		}
		customerCase.setCase_name(name);
		customerCase.setCase_code(code);
		customerCase.setCase_remark(remark);
		Serializable resultId = null;
		if(id != null && id > 0){
			customerCaseService.update(customerCase);
			resultId = customerCase.getId();
		}else{
			//获得当前用户
			HttpServletRequest servletRequest = (HttpServletRequest) request;
			User user = CommonUtil.getLoginUser(servletRequest);
			if(user != null){
				customerCase.setCreate_name(user.getUserName());
			}
			resultId = customerCaseService.create(customerCase);  
		}
		modelMap.put("success", "true");
		modelMap.put("id", resultId);
		return modelMap;
	}
	
	/**
	 * 修改客户案例
	 * @param id
	 * @param name 名称
	 * @param code	编码
	 * @param remark 备注
	 * @return
	 */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> edit(
			@RequestParam(required = false)Integer id,
			@RequestParam(required = true)String name,
			@RequestParam(required = true)String code,
			@RequestParam(required = true)String remark){
		//找到对象
		CustomerCase customerCase = customerCaseService.findById(id);
		customerCase.setCase_name(name);
		customerCase.setCase_code(code);
		customerCase.setCase_remark(remark);
		customerCaseService.update(customerCase);  
		Map<String,Object> modelMap = new HashMap<String,Object>(); 
		modelMap.put("success", "true");
		modelMap.put("id", id);
		return modelMap;
	}
	/**
	 * 
	 * @param model
	 * @param pageIndex 当前页码
	 * @param pageSize	当前页大小
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Model model,
			@RequestParam(required = false)Integer pageIndex,
			@RequestParam(required = false)Integer pageSize){
		if(pageIndex == null || pageIndex == 0){
			pageIndex = 1;
		}
		if(pageSize == null || pageSize == 0){
			pageSize = 6;
		}
		Pagination<CustomerCase> customerCasePagination = customerCaseService.findByPage(pageIndex, pageSize, 6);
		model.addAttribute("customerCasePagination", customerCasePagination);
		model.addAttribute("isFirst", customerCasePagination.isFirst());
		model.addAttribute("isLast", customerCasePagination.isLast());
		return "/jsp/manage/customercase/index.jsp";
	}
	
	@RequestMapping("/fileUpload")
	@ResponseBody
	public String fileUpload(@RequestParam MultipartFile[] files,
			HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		response.setContentType("text/plain; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String originalFilename = null;
		String resultNames = "";
		for(MultipartFile file : files){
			if(file.isEmpty()){
				out.print("请选择文件后上传");
				out.flush();
				return null;
			}else{
				originalFilename = file.getOriginalFilename();
				String suffix = originalFilename.substring(
						originalFilename.lastIndexOf("."), originalFilename.length());
				System.out.println(suffix);
				String fileName = String.valueOf(new Date().getTime())+suffix;
				resultNames += fileName+",";
				try {
					file.transferTo(new File(setImagesUrl, fileName));
				} catch (IOException e) {
					System.out.println("文件[" + originalFilename + "]上传失败,堆栈轨迹如下");
					e.printStackTrace();
					out.print("文件上传失败，请重试！！");
					out.flush();
					return null;
				} 
			}
		}
		out.print(getImagesUrl+"/"+resultNames.substring(0,resultNames.length()-1));
		out.flush();
//		Map<String,Object> modelMap = new HashMap<String,Object>(); 
//		modelMap.put("success", "true");
		return null;
	}
	@RequestMapping(value = "/addPre", method = RequestMethod.GET)
	public String addPre() {
		return "/jsp/manage/customercase/edit1.jsp";
	}
	
	@RequestMapping(value="/editPre", method = RequestMethod.GET)
	public String editPre(@RequestParam int id,Model model){
		CustomerCase customerCase = customerCaseService.findById(id);
		List<CustomerCaseDetail> detailList = customerCaseDetailService.findByCustomerCase(customerCase);
		model.addAttribute("customerCase", customerCase);
		model.addAttribute("detailList", detailList);
		model.addAttribute("imagesUrl", getImagesUrl+"/");
		return "/jsp/manage/customercase/edit1.jsp";
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> delete(@RequestParam int id,Model model){
		CustomerCase customerCase = customerCaseService.findById(id);
		List<CustomerCaseDetail> detailList = customerCaseDetailService.findByCustomerCase(customerCase);
		for(CustomerCaseDetail detail : detailList){
			customerCaseDetailService.delete(detail);
		}
		customerCaseService.delete(customerCase);
		Map<String,Object> modelMap = new HashMap<String,Object>(); 
		modelMap.put("success", "true");
		return modelMap;
	}
}
