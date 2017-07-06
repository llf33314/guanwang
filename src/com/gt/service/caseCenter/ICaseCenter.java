package com.gt.service.caseCenter;

import java.util.List;
import java.util.Map;

import com.gt.model.caseCenter.CaseBuspro;
import com.gt.model.caseCenter.CaseCenter;
import com.gt.model.caseCenter.CaseCenterClass;

public interface ICaseCenter {
	
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	Integer insert(CaseCenter caseCenter) throws Exception;

	Integer delete(Integer id) throws Exception;

	Integer update(CaseCenter caseCenter) throws Exception;

	/////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings("rawtypes")
	List selectClassList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectClassListCount(Map param);
	
	Integer insertClass(CaseCenterClass caseCenterClass) throws Exception;

	Integer deleteClass(Integer id) throws Exception;

	Integer updateClass(CaseCenterClass caseCenterClass) throws Exception;

	int insert(CaseCenter caseCenter, List<CaseBuspro> caseBuspros);

	int update(CaseCenter caseCenter, List<CaseBuspro> caseBuspros);

	@SuppressWarnings("rawtypes")
	List selectAratanoList(Map param);

}
