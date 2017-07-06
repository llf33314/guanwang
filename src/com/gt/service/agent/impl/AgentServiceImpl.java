package com.gt.service.agent.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.agent.Agent;
import com.gt.service.agent.IAgentService;
import com.gt.utils.MD5Util;
@Service
public class AgentServiceImpl implements IAgentService{
	@Autowired 
	private IBaseDAO baseDao;
	
	@Override
	public Serializable create(Agent agent) {
		if(agent == null){
			return -1;
		}
		return baseDao.save(agent);
	}

	@Override
	public void update(Agent agent) {
		baseDao.update(agent);
	}

	@Override
	public void delete(Agent agent) {
		if(agent != null){
			baseDao.delete(agent);
		}
	}

	@Override
	public Agent findById(Integer id) {
		if(id == null || id <=0){
			return null;
		}
		Object obj = baseDao.findById(Agent.class, id);
		if(obj != null){
			return (Agent)obj;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Agent> findAll() {
		return baseDao.findAll(Agent.class);
	}

	@Override
	public void deletes(String ids) {
		String[] idsStr = ids.split(",");
		for(String id : idsStr){
			this.delete(Integer.valueOf(id));
		}
	}

	@Override
	public void delete(Integer id) {
		if(id != null){
			baseDao.delete(Agent.class, id);
		}
	}

	@Override
	public void updateStatus(Integer id, Integer status,String auth_code) {
		Agent agent = this.findById(id);
		agent.setStatus(status);
		agent.setAuth_code(auth_code);
		this.update(agent);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Agent> findByStatus(Integer status) {
		String hql = "SELECT a FROM Agent a WHERE a.status = ? ORDER BY a.createtime desc";
		List<Agent> list = baseDao.findByHql(hql, status);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Agent> findByName(String name) {
		String hql = "SELECT a FROM Agent a WHERE a.name = ? ORDER BY a.createtime desc";
		List<Agent> list = baseDao.findByHql(hql, name);
		return list;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Agent findByOneName(String name) {
		String hql = "SELECT a FROM Agent a WHERE a.name = ? ORDER BY a.createtime desc";
		List<Agent> list = baseDao.findByHql(hql, name);
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
	@Override
	public boolean isExist(String key, String value) {
		if(StringUtils.isNotEmpty(key)){
			String hql = "SELECT a FROM Agent a WHERE a."+key+"=?";
			List<Agent> list = baseDao.findByHql(hql, value);
			if(list != null && list.size() > 0){
				return true;
			}else{
				return false;
			}
		}
		return false;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public Map checkAgentLogin(String name, String pwd) {
		List params = new ArrayList();
		String sql = "SELECT * FROM t_man_user WHERE user_name = ? AND user_password = ?";
		params.add(name);
		params.add(MD5Util.getMD5(pwd));
		List<Map> l = baseDao.queryForList(sql, params.toArray());
		if(l.size() == 0) return null;
		else return l.get(0); 
	}
	

	@Override
	public Integer findAgentBaseCount() {
		List params = new ArrayList();
		String sql = "SELECT * FROM t_ws_agent_info WHERE name = 'agentCount' ";
		List<Map> l = baseDao.queryForList(sql);
		if(l.size() == 0) {
			return 0;
		}
		else{
			Object count = l.get(0).get("value");
			if(count != null){
				return Integer.parseInt(count.toString()); 
			}else{
				return 0;
			}
		}
		
	}

	@Override
	public Map<String, Object> findAgentInfoByName(String name) {
		String sql = "SELECT * FROM t_ws_agent_info WHERE name = 'agentCount' ";
		List<Map> l = baseDao.queryForList(sql);
		if(l == null || l.size() == 0){
			return null;
		}else{
			return l.get(0);
		}
	}

	@Override
	public void createBaseAgentCount(Integer count) {
		if(count != null){
			baseDao.update("insert into t_ws_agent_info (name,value) value ('agentCount',?)", count.toString());
		}
	}

	@Override
	public void updateBaseAgentCount(Integer count) {
		if(count != null){
			baseDao.update("update t_ws_agent_info set value = ? where name='agentCount'", count.toString());
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Agent> listByOneName(String name) {
		Map<String, Object> params = new HashMap<>();
		params.put("name", name);
		params.put("auth_code", name);
		params.put("company", name);
		List<Agent> list = baseDao.findByLikeOR(Agent.class, params);
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}
}
