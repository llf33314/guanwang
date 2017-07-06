package com.gt.service.mobileVer;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.mobileVer.MobileVerRotation;

@Service(value="iMobileVerRotationImpl")
public class IMobileVerRotationImpl implements IMobileVerRotation{
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_mobile_rotation where 1=1 ");
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
		sql.append("select count(id) from t_ws_mobile_rotation where 1=1 ");
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
	public Integer insert(MobileVerRotation mobileVerRotation) throws Exception {
		iBaseDAO.save(mobileVerRotation);
		return 1;
	}
	
	@Override
	@Transactional
	public Integer delete(Integer id) throws Exception {
		String sql = "delete from t_ws_mobile_rotation where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	@Transactional
	public Integer update(MobileVerRotation mobileVerRotation) throws Exception {
		iBaseDAO.update(mobileVerRotation);
		return 1;
	}
	
	

}
