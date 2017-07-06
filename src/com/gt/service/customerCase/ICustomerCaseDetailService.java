package com.gt.service.customerCase;

import java.util.List;
import java.util.Map;

import com.gt.model.customerCase.CustomerCase;
import com.gt.model.customerCase.CustomerCaseDetail;

public interface ICustomerCaseDetailService {
	
	public void create(CustomerCaseDetail customerCaseDetail);
	
	public void update(CustomerCaseDetail customerCaseDetail);
	
	public void delete(CustomerCaseDetail customerCaseDetail);
	
	public CustomerCaseDetail findById(Integer id);
	
	public List<CustomerCaseDetail> findAll();

	public List<CustomerCaseDetail> findByCustomerCase(CustomerCase customerCase);
	
	@SuppressWarnings("rawtypes")
	public List findByCustomerCaseByPage(Map param);
}
