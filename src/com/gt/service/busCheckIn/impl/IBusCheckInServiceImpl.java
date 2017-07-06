package com.gt.service.busCheckIn.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.busCheckIn.BusCheckIn;
import com.gt.service.busCheckIn.IBusCheckInService;

@Service
public class IBusCheckInServiceImpl implements IBusCheckInService{
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select *, (select SUM(IFNULL(busCheckIn, 0)) from t_ws_buscheckin) sum ");
		sql.append("from t_ws_buscheckin where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("date") != null){
			sql.append("and TO_DAYS(createtime) = TO_DAYS(?) ");
			params.add(param.get("date"));
		}
		sql.append("order by createtime desc ");
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
		sql.append("select count(id) from t_ws_buscheckin where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("date") != null){
			sql.append("and TO_DAYS(createtime) = TO_DAYS(?) ");
			params.add(param.get("date"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	@Transactional
	public Integer insert(BusCheckIn busCheckIn) {
		iBaseDAO.save(busCheckIn);
		return 1;
	}
	
	
}
