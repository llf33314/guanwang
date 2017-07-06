package com.gt.service.customerCase.impl;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.common.pagination.Pagination;
import com.gt.common.pagination.QueryHandler;
import com.gt.common.pagination.impl.DefaultPagination;
import com.gt.dao.IBaseDAO;
import com.gt.model.customerCase.CustomerCase;
import com.gt.service.customerCase.ICustomerCaseService;

@Service
public class CustomerCaseServiceImpl implements ICustomerCaseService {

	@Autowired
	private IBaseDAO baseDao;

	@Override
	public Serializable create(CustomerCase customerCase) {
		return baseDao.save(customerCase);
	}

	@Override
	public void update(CustomerCase customerCase) {
		baseDao.update(customerCase);
	}

	@Override
	public void delete(CustomerCase customerCase) {
		baseDao.delete(customerCase);
	}

	@Override
	public CustomerCase findById(Integer id) {
		if(null == id || id < 0){
			return null;
		}
		Object obj = baseDao.findById(CustomerCase.class, id);
		if (obj != null) {
			return (CustomerCase) obj;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CustomerCase> findAll() {
		List<CustomerCase> list = baseDao.findAll(CustomerCase.class);
		return list;
	}

	@Override
	public Pagination<CustomerCase> findByPage(int pageIndex, int pageSize, int pageLinkNumber) {
		Pagination<CustomerCase> pagination = new DefaultPagination<>(pageIndex, pageSize,
				new QueryHandler<CustomerCase>() {

					@Override
					public int getTotalElements() {
						Long longCount = baseDao.count("select count(*) from CustomerCase");
						if (longCount != null) {
							return longCount.intValue();
						}
						return 0;
					}
					@SuppressWarnings("unchecked")
					@Override
					public List<CustomerCase> getCurrData(int pageIndex, int pageSize) {
						Map<String, Object> paramMap = new HashMap<String, Object>();
						paramMap.put("page", pageIndex);
						paramMap.put("rows", pageSize);
						List<CustomerCase> list = baseDao.findByPage(CustomerCase.class, paramMap, 0);
						return list;
					}

				},pageLinkNumber);
		return pagination;
	}

	@SuppressWarnings("unchecked")
	@Override
	public CustomerCase findByCode(String code) {
		String hql = "SELECT c FROM CustomerCase c WHERE c.case_code = ?";
		List<CustomerCase> list = baseDao.findByHql(hql, code);
		CustomerCase customerCase = null;
		if(list != null && list.size() > 0){
			customerCase = list.get(0);
		}
		return customerCase;
	}
}
