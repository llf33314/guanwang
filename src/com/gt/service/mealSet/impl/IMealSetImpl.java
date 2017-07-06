package com.gt.service.mealSet.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.mealSet.MealSet;
import com.gt.model.mealSet.MealSetType;
import com.gt.service.mealSet.IMealSet;

@Service(value="iMealSetImpl")
public class IMealSetImpl implements IMealSet{
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.*,b.typename from t_ws_meal_set a join t_ws_meal_set_type b on a.setid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		sql.append("order by a.sorting desc, a.id desc ");
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
		sql.append("select count(id) from t_ws_meal_set a join t_ws_meal_set_type b on a.setid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	@Transactional
	public Integer insert(MealSet MealSet) throws Exception {
		iBaseDAO.save(MealSet);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer delete(Integer id) throws Exception {
		String sql = "delete from t_ws_meal_set where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	@Transactional
	public Integer update(MealSet MealSet) throws Exception {
		iBaseDAO.update(MealSet);
		return 1;
	}

	/*-----------------------------------------------------------------------------------*/
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectTypeList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_meal_set_type where 1=1 ");
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
	public Integer selectTypeListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(id) from t_ws_meal_set_type where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}

	@Override
	public Integer insertType(MealSetType MealSetType) throws Exception {
		iBaseDAO.save(MealSetType);
		return 1;
	}

	@Override
	public Integer deleteType(Integer id) throws Exception {
		String sql = "delete from t_ws_meal_set_type where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	public Integer updateType(MealSetType MealSetType) throws Exception {
		iBaseDAO.update(MealSetType);
		return 1;
	}
	
	

}
