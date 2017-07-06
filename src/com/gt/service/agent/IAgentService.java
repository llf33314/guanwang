package com.gt.service.agent;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.gt.model.agent.Agent;

public interface IAgentService {
	public Serializable create(Agent agent);
	
	public void update(Agent agent);
	
	/**
	 * 根据对象删除
	 * @param agent
	 */
	public void delete(Agent agent);
	
	/**
	 * 根据id删除
	 * @param id
	 */
	public void delete(Integer id);
	
	public Agent findById(Integer id);
	
	public List<Agent> findAll();
	/**
	 * 根据ids批量删除
	 * @param ids	用,拼接的字符串id
	 */
	public void deletes(String ids);
	
	/**
	 * 修改代理状态
	 * @param id	对象id
	 * @param status	修改后状态
	 * @param auth_code 授权码
	 */
	public void updateStatus(Integer id , Integer status, String auth_code);
	
	/**
	 * 通过状态查询
	 * @param status
	 * @return
	 */
	public List<Agent> findByStatus(Integer status);
	
	/**
	 * 通过名称查询
	 * @param name
	 * @return
	 */
	public List<Agent> findByName(String name);

	public boolean isExist(String key, String value);

	public Agent findByOneName(String name);
	
	@SuppressWarnings("rawtypes")
	public Map checkAgentLogin(String name, String pwd);
	
	/**
	 * 获得代理商家基础数量
	 * @return
	 */
	public Integer findAgentBaseCount();
	/**
	 * 获得代理商家信息数据
	 * @return
	 */
	public Map<String, Object> findAgentInfoByName(String name);

	public void createBaseAgentCount(Integer count);

	public void updateBaseAgentCount(Integer count);

	/**
	 * 根据姓名或授权码查询
	 * @param name
	 * @return
	 */
	public List<Agent> listByOneName(String name);
}
