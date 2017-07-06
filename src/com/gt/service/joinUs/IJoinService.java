package com.gt.service.joinUs;

import java.io.Serializable;
import java.util.List;

import com.gt.common.pagination.Pagination;
import com.gt.model.joinus.JoinUs;

public interface IJoinService {
	public Serializable create(JoinUs joinUs);
	public void delete(JoinUs joinUs);
	public void update(JoinUs joinUs);
	public List<JoinUs> findAll();
	public JoinUs findById(Integer id);
	/**
	 * 分页查询
	 * @param pageIndex  当前页码
	 * @param pageSize  当前页大小
	 * @param pageLinkNumber  每页的分页链接数量
	 * @return
	 */
	public Pagination<JoinUs> findByPage(int pageIndex,int pageSize,int pageLinkNumber);
	/**
	 * 根据状态查询
	 * @param statusSelect
	 * @return
	 */
	public List<JoinUs> findByStatus(Integer status);
}
