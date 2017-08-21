package com.gt.service.homeRotation.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.home.HomeRotation;
import com.gt.service.homeRotation.IHomeRotation;

@Service(value="iHomeRotationImpl")
public class IHomeRotationImpl implements IHomeRotation{
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_index_advertising where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		sql.append("order by id desc, createtime desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public Integer selectListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(id) from t_ws_index_advertising where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	@Transactional
	public Integer insert(HomeRotation HomeRotation) throws Exception {
		iBaseDAO.save(HomeRotation);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer delete(Integer id) throws Exception {
		String sql = "delete from t_ws_index_advertising where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	@Transactional
	public Integer update(HomeRotation HomeRotation) throws Exception {
		iBaseDAO.update(HomeRotation);
		return 1;
	}

	@Override
	public void saveShow(int id, int isshow) {
		String sql = "update t_ws_index_advertising set isshow = ? where id = ?";
		iBaseDAO.update(sql, isshow,id);
	}

	@Override
	@Transactional
	public List findIsshow() {
		List params = new ArrayList();
		return iBaseDAO.queryForList("select * from t_ws_index_advertising where isshow = 1", params.toArray());
	}

	@Override
	public List findShowImage() {
		List params = new ArrayList();
		return iBaseDAO.queryForList("select * from t_ws_index_advertising where isshow = 1", params.toArray());
	}


}
