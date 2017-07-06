package com.gt.service.busCheckIn;

import java.util.List;
import java.util.Map;

import com.gt.model.article.ArticleMain;
import com.gt.model.busCheckIn.BusCheckIn;

public interface IBusCheckInService {

	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	Integer insert(BusCheckIn busCheckIn);
	
}
