package com.gt.service.customerCase;

import java.io.Serializable;
import java.util.List;

import com.gt.common.pagination.Pagination;
import com.gt.model.customerCase.CustomerCase;

public interface ICustomerCaseService {
	
	public Serializable create(CustomerCase customerCase);
	
	public void update(CustomerCase customerCase);
	
	public void delete(CustomerCase customerCase);
	
	public CustomerCase findById(Integer id);
	
	public List<CustomerCase> findAll();
	/**
	 * 分页查询
	 * @param pageIndex  当前页码
	 * @param pageSize  当前页大小
	 * @param pageLinkNumber  每页的分页链接数量
	 * @return
	 */
	public Pagination<CustomerCase> findByPage(int pageIndex,int pageSize,int pageLinkNumber);

	public CustomerCase findByCode(String name);
}
