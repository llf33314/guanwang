package com.gt.service.duofenIntroduction;

import java.util.List;
import java.util.Map;

import com.gt.model.duofenIntroduction.DuofenIntroduction;

public interface IDuofenIntroduction {
	
	/**
	 * 文章list
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	/**
	 * 文章list Count
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	/**
	 * insert 文章
	 * @param articleMain
	 * @return
	 */
	Integer insert(DuofenIntroduction duofenIntroduction) throws Exception;

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	Integer delete(Integer id) throws Exception;

	/**
	 * 更新
	 * @param articleMain
	 * @return
	 */
	Integer update(DuofenIntroduction duofenIntroduction) throws Exception;

	int insert(List<DuofenIntroduction> duofenIntroductions, int type);

	
	
}
