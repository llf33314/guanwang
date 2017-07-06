package com.gt.service.technicalSupport.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.technicalSupport.TechnicalSupport;
import com.gt.model.technicalSupport.TechnicalSupportMenu;
import com.gt.service.technicalSupport.TechnicalSupportService;

@Service(value="technicalSupportServiceImpl")
public class TechnicalSupportServiceImpl implements TechnicalSupportService{
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectMenuList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.*,b.tsName pName from t_ws_technical_support_menu a ");
		sql.append("left join t_ws_technical_support_menu b on a.parentId=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("pid") != null){
			sql.append("and a.parentId = ? ");
			params.add(param.get("pid"));
		}
//		sql.append("order by createtime desc");
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectQandAList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.*,b.tsName,c.tsName ptsName from t_ws_technical_support a ");
		sql.append("left join t_ws_technical_support_menu b on a.tsMenuId=b.id ");
		sql.append("left join t_ws_technical_support_menu c on b.parentId=c.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("tsMenuId") != null){
			sql.append("and a.tsMenuId = ? ");
			params.add(param.get("tsMenuId"));
		}
		if(param.get("keyword") != null){
			sql.append("and ( a.question like ? or a.answer like ? ) ");
			params.add("%" + param.get("keyword") + "%");
			params.add("%" + param.get("keyword") + "%");
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@Override
	@Transactional
	public Integer insertMenu(TechnicalSupportMenu tsm) {
		iBaseDAO.save(tsm);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer insertQandA(TechnicalSupport ts) {
		iBaseDAO.save(ts);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer updateQandA(TechnicalSupport ts) {
		iBaseDAO.update(ts);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer updateMenu(TechnicalSupportMenu tsm) {
		iBaseDAO.update(tsm);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer deleteMenu(Integer id) {
		String sql = "delete from t_ws_technical_support_menu where id = ?";
		return iBaseDAO.update(sql, id);
	}
	
	@Override
	@Transactional
	public Integer deleteQandA(Integer id) {
		String sql = "delete from t_ws_technical_support where id = ?";
		return iBaseDAO.update(sql, id);
	}
	
}
