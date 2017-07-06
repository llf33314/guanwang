package com.gt.service.screenDisplay;

import java.util.List;
import java.util.Map;

public interface ScreenDisplayService {
	
	@SuppressWarnings("rawtypes")
	List getDisplayMap();
	
	@SuppressWarnings("rawtypes")
	List getDisplayFanChart();
	
	/**
	 * 
	 * @param now example: 2017-03-01
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List getDisplayPolyline(String now);
	
	@SuppressWarnings("rawtypes")
	List getDisplayColumnar(int quantity);
	
	/**
	 * 
	 * @param now example: 2017-03-01
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List getDisplayDay(String now);
	
	/**
	 * 
	 * @param now example: 2017-03
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List getDisplayMonth(String now);
	
	int addDisplayMonth(int historyhighestonline, String nowStr);

	@SuppressWarnings("rawtypes")
	void updateDisplayFanChartLoop(List fanChat);

	int addDisplayDay(double todayamount, int currentfans, int addfanstoday, String nowStr);

	/**
	 * 
	 * @param now example: 2017-03
	 * @return
	 */
	int getGrowth(String now);

	/**
	 * 
	 * @param now example: 2017-03
	 * @return
	 */
	int getDisplayColumnarValByMonth(String now);

	int addDisplayColumnar(int growth, String growthrate, String nowStr);

	@SuppressWarnings("rawtypes")
	void addDisplayPolyline(List<Map> polys);

	int addMapData(String eins, String zwei, String drei);
	
	
	
}
