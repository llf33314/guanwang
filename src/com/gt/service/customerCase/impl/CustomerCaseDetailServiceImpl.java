package com.gt.service.customerCase.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.customerCase.CustomerCase;
import com.gt.model.customerCase.CustomerCaseDetail;
import com.gt.service.customerCase.ICustomerCaseDetailService;

@Service
public class CustomerCaseDetailServiceImpl implements ICustomerCaseDetailService {

	@Autowired
	private IBaseDAO baseDao;

	@Override
	public void create(CustomerCaseDetail customerCaseDetail) {
		 baseDao.save(customerCaseDetail);
	}

	@Override
	public void update(CustomerCaseDetail customerCaseDetail) {
		baseDao.update(customerCaseDetail);
	}

	@Override
	public void delete(CustomerCaseDetail customerCaseDetail) {
		baseDao.delete(customerCaseDetail);
	}

	@Override
	public CustomerCaseDetail findById(Integer id) {
		if(null == id || id < 0){
			return null;
		}
		Object obj = baseDao.findById(CustomerCaseDetail.class, id);
		if(obj != null){
			return (CustomerCaseDetail)obj;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CustomerCaseDetail> findAll() {
		List<CustomerCaseDetail> list = baseDao.findAll(CustomerCaseDetail.class);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CustomerCaseDetail> findByCustomerCase(CustomerCase customerCase) {
		if(customerCase == null){
			return null;
		}
		String hql = "select cd from CustomerCaseDetail cd where cd.customerCase  = ?";
		List<CustomerCaseDetail> list = baseDao.findByHql(hql, customerCase);
		return list;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List findByCustomerCaseByPage(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("SELECT a.*, b.* FROM t_ws_case_detail a ");
		sql.append("JOIN t_ws_case_main b ON a.case_main_id=b.id WHERE 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("case_code") != null){
			sql.append("AND b.case_code = ? ");
			params.add(param.get("case_code"));
		}
		sql.append("order by a.create_time desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return baseDao.queryForList(sql.toString(), params.toArray());
	}
	
}
