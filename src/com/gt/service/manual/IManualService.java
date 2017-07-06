package com.gt.service.manual;

import java.util.List;
import java.util.Map;

import com.gt.model.manual.Manual;

public interface IManualService {
	
	/**
	 * list
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	/**
	 * list Count
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	/**
	 * insert 
	 * @param articleMain
	 * @return
	 */
	Integer insert(Manual manual);

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	Integer delete(Integer id);

	/**
	 * 更新
	 * @param articleMain
	 * @return
	 */
	Integer update(Manual manual);
	
	
	
	
	
}
