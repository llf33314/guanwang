package com.gt.service.technicalSupport;

import java.util.List;
import java.util.Map;

import com.gt.model.technicalSupport.TechnicalSupport;
import com.gt.model.technicalSupport.TechnicalSupportMenu;

public interface TechnicalSupportService {

	/**
	 * 菜单List
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List selectMenuList(Map param);

	/**
	 * 问答List
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List selectQandAList(Map param);

	/**
	 * 插入菜单
	 * @param param
	 * @return
	 */
	Integer insertMenu(TechnicalSupportMenu tsm);
	
	/**
	 * 插入问答
	 * @param param
	 * @return
	 */
	Integer insertQandA(TechnicalSupport ts);

	/**
	 * update问答
	 * @param ts
	 * @return
	 */
	Integer updateQandA(TechnicalSupport ts);

	/**
	 * update菜单
	 * @param ts
	 * @return
	 */
	Integer updateMenu(TechnicalSupportMenu tsm);

	/**
	 * delete菜单
	 * @param ts
	 * @return
	 */
	Integer deleteMenu(Integer valueOf);

	/**
	 * delete问答
	 * @param ts
	 * @return
	 */
	Integer deleteQandA(Integer valueOf);
	
}
