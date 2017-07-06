package com.gt.service.mobileVer;

import java.util.List;
import java.util.Map;

import com.gt.model.mobileVer.MobileVerRotation;

public interface IMobileVerRotation {
	
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	Integer insert(MobileVerRotation HomeRotation) throws Exception;

	Integer delete(Integer id) throws Exception;

	Integer update(MobileVerRotation HomeRotation) throws Exception;

}
