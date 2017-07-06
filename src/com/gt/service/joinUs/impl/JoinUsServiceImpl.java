package com.gt.service.joinUs.impl;

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
import com.gt.model.joinus.JoinUs;
import com.gt.service.joinUs.IJoinService;

@Service
public class JoinUsServiceImpl implements IJoinService {
	@Autowired
	private IBaseDAO baseDao;

	@Override
	public Serializable create(JoinUs joinUs) {
		return baseDao.save(joinUs);
	}

	@Override
	public void delete(JoinUs joinUs) {
		baseDao.delete(joinUs);
	}

	@Override
	public void update(JoinUs joinUs) {
		baseDao.update(joinUs);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<JoinUs> findAll() {
		return baseDao.findAll(JoinUs.class);
	}

	@Override
	public JoinUs findById(Integer id) {
		if(null == id || id < 0){
			return null;
		}
		Object obj = baseDao.findById(JoinUs.class, id);
		if(obj != null){
			return (JoinUs)obj;
		}
		return null; 
	}

	@Override
	public Pagination<JoinUs> findByPage(int pageIndex, int pageSize, int pageLinkNumber) {
		Pagination<JoinUs> pagination = new DefaultPagination<>(pageIndex, pageSize,
				new QueryHandler<JoinUs>() {

					@Override
					public int getTotalElements() {
						Long longCount = baseDao.count("select count(id) from JoinUs");
						if (longCount != null) {
							return longCount.intValue();
						}
						return 0;
					}
					@SuppressWarnings("unchecked")
					@Override
					public List<JoinUs> getCurrData(int pageIndex, int pageSize) {
						Map<String, Object> paramMap = new HashMap<String, Object>();
						paramMap.put("page", pageIndex);
						paramMap.put("rows", pageSize);
						List<JoinUs> list = baseDao.findByPage(JoinUs.class, paramMap, 0);
						return list;
					}

				},pageLinkNumber);
		return pagination;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<JoinUs> findByStatus(Integer status) {
		if(status != null){
			String hql = "SELECT j FROM JoinUs j WHERE j.status = ? order by j.createtime";
			return (List<JoinUs>) baseDao.findByHql(hql, status);
		}
		return null;
	}

}
