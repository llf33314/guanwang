package com.gt.service.manual.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.manual.Manual;
import com.gt.service.manual.IManualService;

@Service
public class IManualServiceImpl implements IManualService{
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.*,b.title pName from t_ws_manual a ");
		sql.append("left join t_ws_manual b on a.parentId=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("pid") != null){
			sql.append("and a.parentId = ? ");
			params.add(param.get("pid"));
		}
		if(param.get("lv") != null){
			sql.append("and a.lv = ? ");
			params.add(param.get("lv"));
		}
//		sql.append("order by a.createtime desc ");
		sql.append("order by a.sort,b.sort ");
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
		sql.append("select count(id) from t_ws_manual where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("pid") != null){
			sql.append("and parentId = ? ");
			params.add(param.get("pid"));
		}
		if(param.get("lv") != null){
			sql.append("and lv = ? ");
			params.add(param.get("lv"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	@Transactional
	public Integer insert(Manual manual) {
		iBaseDAO.save(manual);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer delete(Integer id) {
		String sql = "delete from t_ws_manual where id = ?";
		return iBaseDAO.update(sql, id);
	}
	
	@Override
	@Transactional
	public Integer update(Manual manual) {
		iBaseDAO.update(manual);
		return 1;
	}
	
	
	
	
	
	
	
	
}
