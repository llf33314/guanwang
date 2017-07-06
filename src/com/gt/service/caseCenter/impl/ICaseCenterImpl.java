package com.gt.service.caseCenter.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.caseCenter.CaseBuspro;
import com.gt.model.caseCenter.CaseCenter;
import com.gt.model.caseCenter.CaseCenterClass;
import com.gt.service.caseCenter.ICaseCenter;

@Service(value="iCaseCenterImpl")
public class ICaseCenterImpl implements ICaseCenter{
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select b.classname, a.* from t_ws_case_center a join t_ws_case_center_class b on a.classid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("classid") != null){
			sql.append("and a.classid = ? ");
			params.add(param.get("classid"));
		}
		sql.append("order by a.id desc, a.createtime desc ");
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
		sql.append("select count(a.id) from t_ws_case_center a join t_ws_case_center_class b on a.classid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("classid") != null){
			sql.append("and a.classid = ? ");
			params.add(param.get("classid"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectAratanoList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.* from t_ws_case_buspro a where 1=1 ");
		if(param.get("centerid") != null){
			sql.append("and a.centerid = ? ");
			params.add(param.get("centerid"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@Override
	@Transactional
	public Integer insert(CaseCenter caseCenter) throws Exception {
		iBaseDAO.save(caseCenter);
		return 1;
	}
	
	@Transactional
	@Override
	public int insert(CaseCenter caseCenter, List<CaseBuspro> caseBuspros) {
		iBaseDAO.save(caseCenter);
		int id = caseCenter.getId();
		for(CaseBuspro b : caseBuspros){
			b.setCenterid(id);
			iBaseDAO.save(b);
		}
		return 1;
	}
	
	@Override
	@Transactional
	public Integer delete(Integer id) throws Exception {
		String sql = "delete from t_ws_case_center where id = ?";
		String sql2 = "delete from t_ws_case_buspro where centerid = ?";
		int i = iBaseDAO.update(sql, id);
		iBaseDAO.update(sql2, id);
		return i;
	}
	
	@Override
	@Transactional
	public Integer update(CaseCenter caseCenter) throws Exception {
		iBaseDAO.update(caseCenter);
		return 1;
	}
	
	@Override
	@Transactional
	public int update(CaseCenter caseCenter, List<CaseBuspro> caseBuspros) {
		String sql = "delete from t_ws_case_buspro where centerid = ?";
		int id = caseCenter.getId();
		iBaseDAO.update(sql, caseCenter.getId());
		iBaseDAO.update(caseCenter);
		for(CaseBuspro b : caseBuspros){
			b.setCenterid(id);
			iBaseDAO.save(b);
		}
		return 1;
	}

	/////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectClassList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_case_center_class where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("classname") != null){
			sql.append("and classname = ? ");
			params.add(param.get("classname"));
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
	public Integer selectClassListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(id) from t_ws_case_center_class where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("classname") != null){
			sql.append("and classname = ? ");
			params.add(param.get("classname"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}

	@Override
	public Integer insertClass(CaseCenterClass caseCenterClass) throws Exception {
		iBaseDAO.save(caseCenterClass);
		return 1;
	}

	@Override
	public Integer deleteClass(Integer id) throws Exception {
		String sql = "delete from t_ws_case_center_class where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	public Integer updateClass(CaseCenterClass caseCenterClass) throws Exception {
		iBaseDAO.update(caseCenterClass);
		String sql = "update t_ws_case_center_class set classname = ? where id = ?";
		int i = iBaseDAO.update(sql, caseCenterClass.getClassname(), caseCenterClass.getId());
		return i;
	}
	
}
