package com.gt.service.mealSet;

import java.util.List;
import java.util.Map;

import com.gt.model.mealSet.MealSet;
import com.gt.model.mealSet.MealSetType;

public interface IMealSet {
	
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	Integer insert(MealSet MealSet) throws Exception;

	Integer delete(Integer id) throws Exception;

	Integer update(MealSet MealSet) throws Exception;

	/*-----------------------------------------------------------------------------------*/
	
	@SuppressWarnings("rawtypes")
	List selectTypeList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectTypeListCount(Map param);
	
	Integer insertType(MealSetType MealSetType) throws Exception;

	Integer deleteType(Integer id) throws Exception;

	Integer updateType(MealSetType MealSetType) throws Exception;
}
