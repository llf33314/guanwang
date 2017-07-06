package com.gt.controller.agent;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gt.model.agent.Agent;
import com.gt.service.agent.IAgentService;
import com.gt.utils.JedisUtil;
import com.gt.utils.KeysUtil;
import com.gt.utils.MD5Util;

/**
 * 
 * @author zhangwei
 *
 */
@Controller
@RequestMapping("/agent")
public class AgentController {
	@Autowired
	private IAgentService agentService;

	@Value("${agentLogin_url}")
	private String agentLogin_url;
	/**
	 * 
	 * @param id
	 * @param name
	 * @param phone
	 * @param qq
	 * @param company
	 * @param add_province
	 * @param add_city
	 * @param add_area
	 * @param coo_province
	 * @param coo_city
	 * @param coo_area
	 * @return
	 */
	@RequestMapping(value = "/html/edit",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> edit(
			@RequestParam(required = false)Integer id,
			@RequestParam(required = false)String name,
			@RequestParam(required = false)String phone,
			@RequestParam(required = false)String qq,
			@RequestParam(required = false)String company,
			@RequestParam(required = false)String add_province,
			@RequestParam(required = false)String add_city,
			@RequestParam(required = false)String add_area,
			@RequestParam(required = false)String coo_province,
			@RequestParam(required = false)String coo_city,
			@RequestParam(required = false)String coo_area,
			@RequestParam(required = false)String intro,
			@RequestParam(required = false)String auth_code,
			@RequestParam(required = false)Integer agent_type){
		Map<String, Object> modelMap = new HashMap<String,Object>();
		Agent agent = agentService.findById(id);
		if(agent == null){
			agent = new Agent();
		}
		if(StringUtils.isNotEmpty(name)){
			agent.setName(name);
		}
		if(StringUtils.isNotEmpty(phone)){
			agent.setPhone(phone);
		}
		if(StringUtils.isNotEmpty(qq)){
			agent.setQq(qq);
		}
		if(StringUtils.isNotEmpty(company)){
			agent.setCompany(company);
		}
		if(StringUtils.isNotEmpty(add_province)){
			agent.setAdd_province(add_province);
		}
		if(StringUtils.isNotEmpty(add_city)){
			agent.setAdd_city(add_city);
		}
		if(StringUtils.isNotEmpty(add_area)){
			agent.setAdd_area(add_area);
		}
		if(StringUtils.isNotEmpty(coo_province)){
			agent.setCoo_province(coo_province);
		}
		if(StringUtils.isNotEmpty(coo_city)){
			agent.setCoo_city(coo_city);
		}
		if(StringUtils.isNotEmpty(coo_area)){
			agent.setCoo_area(coo_area);
		}
		if(StringUtils.isNotEmpty(intro)){
			agent.setIntro(intro);
		}
		if(StringUtils.isNotEmpty(auth_code)){
			agent.setAuth_code(auth_code);
		}
		if(agent_type != null){
			agent.setAgent_type(agent_type);
		}
		Serializable resultId = null;
		if(id != null && id > 0){
			agentService.update(agent);
			resultId = agent.getId();
		}else{
			String result = "";
			if(agentService.isExist("name",name)){
				result += " 名称已存在 ";
			}
			if(agentService.isExist("phone",phone)){
				result += " 手机号码已存在 ";
			}
			if(result != ""){
				modelMap.put("error", "错误!");
				modelMap.put("msg", result);
				return modelMap;
			}else{
				resultId = agentService.create(agent);
			}
		}
		modelMap.put("success", true);
		modelMap.put("id", resultId);
		return modelMap;
	}
	
	@RequestMapping("/editPre")
	public String editPre(@RequestParam(required = false) Integer id,Model model){
		Agent agent = agentService.findById(id);
		model.addAttribute("success", "true");
		model.addAttribute("agent", agent);
		return "/jsp/manage/agent/edit.jsp";
	}
	
	@RequestMapping("/addPre")
	public String addPre(){
		return "/jsp/manage/agent/add.jsp";
	}
	
	/**
	 * 查询申请的代理
	 * @return
	 */
	@RequestMapping("/list")
	@ResponseBody
	public Map<String, Object> list(){
		List<Agent> agentList = agentService.findByStatus(Agent.STATUS_NEW);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", agentList);
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@RequestMapping("/listAll")
	@ResponseBody
	public Map<String, Object> listAll(){
		List<Agent> agentList = agentService.findAll(); 
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", agentList);
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@RequestMapping("/listPass")
	@ResponseBody
	public Map<String, Object> listPass(){
		List<Agent> agentList = agentService.findByStatus(Agent.STATUS_PASS); 
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("data", agentList);
		modelMap.put("status", 1);
		return modelMap;
	}
	
	@RequestMapping("/listOne")
	@ResponseBody
	public Map<String, Object> listOne(@RequestParam(required = true)int id){
		Agent agent = agentService.findById(id); 
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("agent", agent);
		return modelMap;
	}
	
	/**
	 * 删除
	 * @param ids 	用,拼接的id字符
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@RequestParam(required = true)String ids){
		agentService.deletes(ids);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("success", true);
		return modelMap;
	}
	
	/**
	 * 
	 * @param id
	 * @param status 修改后状态
	 * @return
	 */
	@RequestMapping("/editStatus")
	@ResponseBody
	public Map<String, Object> editStatus(
			@RequestParam(required = true) int id,
			@RequestParam(required = true) int status,
			@RequestParam(required = true) String auth_code){
		agentService.updateStatus(id,status,auth_code);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("success", true);
		return modelMap;
	}
	
	/**
	 * 模糊查询:通过姓名查询代理信息
	 * @param name 姓名
	 * @return
	 */
	@RequestMapping("/html/query")
	@ResponseBody
	public Map<String, Object> query(
			@RequestParam(required = true) String name){
		Map<String, Object> modelMap = new HashMap<String,Object>();
		if(StringUtils.isEmpty(name)){
			modelMap.put("error", "错误!");
			modelMap.put("msg", "查询内容不能为空");
			return modelMap;
		}
		List<Agent> agents = agentService.listByOneName(name);
		if(agents == null){
			modelMap.put("success", true);
			modelMap.put("msg", "代理商还未申请授权");
		}else{
			List<Agent> results = new ArrayList<>();
			for(Agent agent : agents){
				if(!agent.getStatus().equals(Agent.STATUS_NEW)){
					results.add(agent);
				}
			}
			if(results == null || results.size() <= 0){
				modelMap.put("success", false);
				modelMap.put("msg", "代理商授权认证审核中");
			}else{
				modelMap.put("success", true);
				modelMap.put("list", results);
				modelMap.put("msg", "代理商授权认证通过");
			}
		}
		return modelMap;
	}
	
	/**
	 * 获取入住代理的数量
	 * @return
	 */
	@RequestMapping("/html/getAgentCount")
	@ResponseBody
	public Map<String, Object> getAgentCount(){
		Map<String, Object> modelMap = new HashMap<>();
		List<Agent> list = agentService.findByStatus(Agent.STATUS_PASS);
		Integer baseCount = agentService.findAgentBaseCount();
		if(list != null && list.size() > 0){
			modelMap.put("agentCount", list.size()+baseCount);
		}else{
			modelMap.put("agentCount", 0+baseCount);
		}
		return modelMap;
	}
	/**
	 * 获取入住代理的数量
	 * @return
	 */
	@RequestMapping("/getBaseAgentCount")
	@ResponseBody
	public Map<String, Object> getBaseAgentCount(){
		Map<String, Object> modelMap = new HashMap<>();
		Integer baseCount = agentService.findAgentBaseCount();
		if(baseCount != null){
			modelMap.put("agentCount", baseCount);
		}else{
			modelMap.put("agentCount", 0);
		}
		return modelMap;
	}
	/**
	 * 保存或创建入住代理基础数量
	 * @param name
	 * @return
	 */
	@RequestMapping("/editBaseAgentCount")
	@ResponseBody
	public Map<String, Object> editBaseAgentCount(@RequestParam Integer count){
		Map<String, Object> modelMap = new HashMap<>();
		try {
			Map<String, Object> agentMap = agentService.findAgentInfoByName("agent");
			if(agentMap == null){
				agentService.createBaseAgentCount(count);
			}else{
				agentService.updateBaseAgentCount(count);
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("status", "error");
		}
		modelMap.put("status", "success");
		return modelMap;
	}
	
	@RequestMapping("/html/checkName")
	@ResponseBody
	public Map<String, Object> checkName(String name){
		Map<String, Object> modelMap = new HashMap<>();
		if(StringUtils.isNotEmpty(name)){
			if(agentService.isExist("name", name)){
				modelMap.put("msg", "名字已经存在!");
			}else{
				modelMap.put("success", "true");
			}
		}else{
			modelMap.put("msg", "不能为空");
		}
		return modelMap;
	}
	
	@RequestMapping("/html/checkPhone")
	@ResponseBody
	public Map<String, Object> checkPhone(String phone){
		Map<String, Object> modelMap = new HashMap<>();
		if(StringUtils.isNotEmpty(phone)){
			if(agentService.isExist("phone", phone)){
				modelMap.put("msg", "手机已经申请过!");
			}else{
				modelMap.put("success", "true");
			}
		}else{
			modelMap.put("msg", "不能为空");
		}
		return modelMap;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping("/html/checkAgentLogin")
	public String checkAgentLogin(@RequestParam(required = true) String name, 
			@RequestParam(required = true) String pwd, @RequestParam(required = true) String val,
			@RequestParam(required = true) String sms ,
			RedirectAttributes ra, Model model, HttpServletRequest request) {
		try {
			HttpSession session = request.getSession();
			String valcode = session.getAttribute("valCode").toString();
			Map m = agentService.checkAgentLogin(name, pwd);
			if(!val.equals(valcode)){
				model.addAttribute("msg", "验证码错误");
			}else if(m == null){
				model.addAttribute("msg", "账户名或密码错误");
			}else if(sms == null){
				model.addAttribute("msg", "短信验证码不能为空");
			}else if(!sms.equals(JedisUtil.get("webSite:"+name))){
				model.addAttribute("msg", "短信验证码错误");
			}else{
				int ud = Integer.valueOf(m.get("user_delect").toString());
				int us = Integer.valueOf(m.get("user_start").toString());
				int ia = Integer.valueOf(m.get("isagent").toString());
				int pu = Integer.valueOf(m.get("pigagent_userid").toString());
				if(ud == 1 && us == 1 && (ia == 1 || pu != 0)){
					String sendName = new KeysUtil().getEncString(name);
					return "redirect:"+agentLogin_url+"/agentLogin?user_name="+sendName+"&passWord="+MD5Util.getMD5(pwd);
				}else{
					if(ia != 1){
						model.addAttribute("msg", "不是代理商账号");
					}
				}
			}
			model.addAttribute("name", name);
			model.addAttribute("pwd", pwd);
		} catch (Exception e) {
			ra.addAttribute("msg", "系统错误");
		}
		return "/html/product-trends/register-user.jsp";
	}
	
	public static void main(String[] args) throws Exception {
		KeysUtil des = new KeysUtil();
		String strMi = "as22";
		System.out.println(des.getDesStr(strMi));
//		System.out.println(des.getDesString(strMi));
		System.out.println(des.getEncString(strMi));
		System.out.println(des.getDesString("69048fca7c023e4c"));
	}
}
