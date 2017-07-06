package com.gt.service.webOrder;

import java.util.List;
import java.util.Map;

import com.gt.model.webOrder.WebOrder;
import com.gt.model.webOrder.WebOrderNotice;

public interface IWebOrder {
	
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	Integer insert(WebOrder WebOrder) throws Exception;

	Integer delete(Integer id) throws Exception;

	Integer update(WebOrder WebOrder) throws Exception;

	Map<String, Object> paySuccessOrderInfo(int orderid);

	int saveNotice(WebOrderNotice wons);

	@SuppressWarnings("rawtypes")
	int selectNoticeListCount(Map param);

	@SuppressWarnings("rawtypes")
	List selectNoticeList(Map param);

}
