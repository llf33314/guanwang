package com.gt.service.productCenter;

import com.gt.model.productCenter.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface ProductCenterNewService {

	@SuppressWarnings("rawtypes")
	List selectList(Map param);

	@SuppressWarnings("rawtypes")
	int selectListCount(Map param);

	@SuppressWarnings("rawtypes")
	int selectTypeListCount(Map param);

	@SuppressWarnings("rawtypes")
	List selectTypeList(Map param);

	@SuppressWarnings("rawtypes")
	int selectBottomImgListCount(Map param);

	@SuppressWarnings("rawtypes")
	List selectBottomImgList(Map param);

	int deleteBottomImg(Integer id);

	int insertBottomImg(ProductCenterBottomImg a);

	int updateBottomImg(ProductCenterBottomImg a);

	int insertType(ProductCenterType a);

	int deleteType(Integer id);

	int updateType(ProductCenterType a);

	int insert(ProductCenterNew a, List<ProductCenterImg> b, HttpServletRequest request) throws Exception;

	int delete(Integer valueOf, HttpServletRequest request) throws Exception;

	int update(ProductCenterNew a, List<ProductCenterImg> b, HttpServletRequest request) throws Exception;

	@SuppressWarnings("rawtypes")
	List selectImgList(Map param);

	void allReset(HttpServletRequest request) throws Exception;

	@SuppressWarnings("rawtypes")
	List selectBtnList(Map param);

	int insert(ProductCenterNew a, HttpServletRequest request) throws Exception;

	int update(ProductCenterNew a,  HttpServletRequest request) throws Exception;


}