package com.gt.service.webOrder.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.webOrder.WebOrder;
import com.gt.model.webOrder.WebOrderNotice;
import com.gt.service.webOrder.IWebOrder;

@Service(value="iWebOrderImpl")
public class IWebOrderImpl implements IWebOrder{
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.*,b.* from t_ws_web_order a left join t_ws_meal_set_type b on a.mealid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("paystatus") != null){
			sql.append("and a.paystatus = ? ");
			params.add(param.get("paystatus"));
		}
		sql.append("order by a.id desc ");
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
		sql.append("select count(a.id) from t_ws_web_order a left join t_ws_meal_set_type b on a.mealid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("paystatus") != null){
			sql.append("and a.paystatus = ? ");
			params.add(param.get("paystatus"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	@Transactional
	public Integer insert(WebOrder WebOrder) throws Exception {
		iBaseDAO.save(WebOrder);
		return WebOrder.getId();
	}
	
	@Override
	@Transactional
	public Integer delete(Integer id) throws Exception {
		String sql = "delete from t_ws_web_order where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	@Transactional
	public Integer update(WebOrder WebOrder) throws Exception {
		iBaseDAO.update(WebOrder);
		return 1;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Object> paySuccessOrderInfo(int orderid) {
		return iBaseDAO.queryForMap(
				"select a.price, a.paytype, a.orderno, b.typename from t_ws_web_order a join t_ws_meal_set_type b on a.mealid=b.id where a.id=? ", orderid);
	}

	@Override
	public int saveNotice(WebOrderNotice wons) {
		if(wons != null){
			if(wons.getId() != null){
				iBaseDAO.update("update t_ws_web_order_notice set telphone = ?, email = ? where id = ?", 
						new Object[]{wons.getTelphone(), wons.getEmail(), wons.getId()});
			}else{
				iBaseDAO.save(wons);
			}
		}
		return 1;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int selectNoticeListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(a.id) from t_ws_web_order_notice a where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectNoticeList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.* from t_ws_web_order_notice a where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		sql.append("order by a.id ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
}
