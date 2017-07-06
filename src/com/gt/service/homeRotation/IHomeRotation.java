package com.gt.service.homeRotation;

import java.util.List;
import java.util.Map;

import com.gt.model.home.HomeRotation;

public interface IHomeRotation {
	
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	Integer insert(HomeRotation HomeRotation) throws Exception;

	Integer delete(Integer id) throws Exception;

	Integer update(HomeRotation HomeRotation) throws Exception;

}
