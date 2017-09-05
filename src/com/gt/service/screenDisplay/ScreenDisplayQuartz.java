package com.gt.service.screenDisplay;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.gt.model.agent.Agent;
import com.gt.service.agent.IAgentService;
import com.gt.utils.JedisUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Component
public class ScreenDisplayQuartz {
	
	@Autowired
	private ScreenDisplayService screenDisplayService;
	
	@Autowired
	private IAgentService agentService;
	
	Logger log = Logger.getLogger(getClass());
	
	/*@SuppressWarnings("rawtypes")
	@Scheduled(cron = "0/10 * * * * ?")  
    public void initSDData(){
		Map<String, Object> result = new HashMap<String, Object>();
		String now = new SimpleDateFormat("yyyyMMdd").format(System.currentTimeMillis());
		String s = JedisUtil.get("ScreenDisplay:" + now);
		if(s == null){
			List fanChat = screenDisplayService.getDisplayFanChart();
			result.put("fanChat", fanChat);
			JedisUtil.set("ScreenDisplay:" + now, JSONObject.fromObject(result).toString(), 24 * 60 * 60);
		}
    }*/
	
//	@Scheduled(cron = "* * * * * ?")   
//	public void secondSDUpdate(){
//		System.out.println("每S数据更新");
//		
//	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Scheduled(cron = "58 59 23 * * ?")  
	public synchronized void dailySDUpdate(){
		log.info("每日数据更新");
		
		/* t_ws_screen_display_day */
		double todayamount = Integer.valueOf(JedisUtil.get("ScreenDisplay:TON")) * (109.99);
		int currentfans = 60000000;
		int addfanstoday = 0;
		String jsonStr = JedisUtil.get("busCount");
		if(jsonStr != null){
			addfanstoday = JSONObject.fromObject(jsonStr).getInt("daysCount") * 998;
		}else{
			addfanstoday = 10096 * 998;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date now = new Date();
		Calendar cal = Calendar.getInstance();
		String nowStr = sdf2.format(now);
		cal.setTime(now);
		cal.add(Calendar.DATE, -1);
		String yesterday = sdf.format(cal.getTime());
		List y = screenDisplayService.getDisplayDay(yesterday);
		if(y.size() > 0){
			Map yy = (Map) y.get(0);
			currentfans = Integer.valueOf(yy.get("currentfans").toString());
		}
		currentfans += ran(50000, 100000);
		screenDisplayService.addDisplayDay(todayamount, currentfans, addfanstoday, nowStr);
		/* t_ws_screen_display_day */
		
		/* t_ws_screen_display_polyline */
		List<Map> polys = new ArrayList<Map>();
		cal.add(Calendar.DATE, 2);
		String date_prev = sdf.format(cal.getTime());
		for(int i=0;i<12;i++){
			int peak = ran(300000, 600000);	//粉丝同时在线数
			int views = peak * 7;	//当前访问量
			String hour = (i * 2) > 9 ? (i * 2)+"" : "0"+(i * 2);
			Map m1 = new HashMap();
			if(i == 4){
				peak = ran(600000, 1000000);
				m1.put("peak", peak);
				m1.put("views", peak * 7);
			}else if(i == 5){
				peak = ran(1800000, 2000000);
				m1.put("peak", peak);
				m1.put("views", peak * 7);
			}else if(i == 7 || i == 9){
				peak = ran(2000000, 4000000);
				m1.put("peak", peak);
				m1.put("views", peak * 7);
			}else if(i == 6 || i == 10){
				peak = ran(6000000, 10000000);
				m1.put("peak", peak);
				m1.put("views", peak * 7);
			}else if(i == 8){
				peak = ran(10000000, 14000000);
				m1.put("peak", peak);
				m1.put("views", peak * 7);
			} else{
				m1.put("peak", peak);
				m1.put("views", views);
			}
			m1.put("nowtime", date_prev+" "+hour+":00:00");
			polys.add(m1);
		}
		screenDisplayService.addDisplayPolyline(polys);
		/* t_ws_screen_display_polyline */
		
		initStartUpData();
		System.out.println("每日数据更新" + new Date().toString());
		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Scheduled(cron = "0 0 0 1 * ?")  
	public synchronized void perMonthSDUpdate(){
		log.info("每月数据更新");
		/* t_ws_screen_display_month */
		int historyhighestonline = 60000000;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		Calendar cal = Calendar.getInstance();
		cal.setTime(now);
		cal.add(Calendar.SECOND, -2);
		String nowStr = sdf2.format(cal.getTime());
		cal.add(Calendar.MONTH, -1);
		String prevTimeStr = sdf.format(cal.getTime());
		List prevMonth = screenDisplayService.getDisplayMonth(prevTimeStr);
		if(prevMonth.size() > 0){
			Map pm = (Map) prevMonth.get(0);
			historyhighestonline = Integer.valueOf(pm.get("historyhighestonline").toString());
		}
		historyhighestonline += ran(300000, 700000);
		screenDisplayService.addDisplayMonth(historyhighestonline, nowStr);
		/* t_ws_screen_display_month */

		/* t_ws_screen_display_fan_chart */
		int changeNum = ran(-5, 5);
		List fanChat = screenDisplayService.getDisplayFanChart();
		double count = 0.0;
		for(Object fc : fanChat){
			Map f = (Map) fc;
			double val = Double.valueOf(f.get("value").toString());
			if(!"其他".equals(f.get("name"))){
				f.put("value", val + changeNum);
				if(changeNum > 0)
					f.put("value", new DecimalFormat("#.00").format(val - (changeNum / 9.0)));
				else
					f.put("value", new DecimalFormat("#.00").format(val + (Math.abs(changeNum) / 9.0)));
				count += Double.valueOf(f.get("value").toString());
			}
		}
		for(Object fc : fanChat){
			Map f = (Map) fc;
			if("其他".equals(f.get("name"))) f.put("value", 100 - count);
		}
		screenDisplayService.updateDisplayFanChartLoop(fanChat);
		/* t_ws_screen_display_fan_chart */
		
		/* t_ws_screen_display_columnar */
		/*Calendar cal2 = Calendar.getInstance();
		cal2.setTime(now);
		cal2.add(Calendar.DAY_OF_MONTH, -1);
		int growth = screenDisplayService.getGrowth(sdf.format(cal2.getTime()));*/
		int growth = ran(25000, 40000);
		int old_growth = screenDisplayService.getDisplayColumnarValByMonth(sdf.format(cal.getTime()));
		/*Map gdd = (Map) screenDisplayService.getDisplayDay(sdf3.format(new Date())).get(0);
		long currentfans = Long.valueOf(gdd.get("currentfans").toString());*/
		String growthrate = new DecimalFormat("#0.00").format(((growth - old_growth) * 1.0) / old_growth);
		screenDisplayService.addDisplayColumnar(growth, growthrate, nowStr);
		/* t_ws_screen_display_columnar */
		
		initStartUpData();
		System.out.println("每月数据更新" + nowStr);
		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@PostConstruct
	public void initStartUpData(){
		log.info("每日数据补全");
		Map<String, Object> result = new HashMap<String, Object>();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf4col = null;
		String now = new SimpleDateFormat("yyyyMMdd").format(date);
//		String nowI = new SimpleDateFormat("yyyy-MM").format(date);
		String nowII = new SimpleDateFormat("yyyy-MM-dd").format(date);
		String key = "ScreenDisplay:" + now;
		String s = JedisUtil.get(key);
		if(s == null){
			List map = screenDisplayService.getDisplayMap(); //地图
			JedisUtil.set("ScreenDisplay:map", JSONArray.fromObject(map).toString());
			List fanChat = screenDisplayService.getDisplayFanChart();	//扇形图
			List polyline = screenDisplayService.getDisplayPolyline(nowII);	//	折线
			JedisUtil.set("ScreenDisplay:polyline", JSONArray.fromObject(polyline).toString());
			List columnar = screenDisplayService.getDisplayColumnar(7);	//柱形
			
			try {
				for(Object col : columnar){
					Map colMap = (Map) col;
					String temptime = colMap.get("monthtime").toString();
					Date tempdate = sdf.parse(temptime);
					String tempmonth = new SimpleDateFormat("MM").format(tempdate);
					if("12".equals(tempmonth)) sdf4col = new SimpleDateFormat("yy年M月");
					else sdf4col = new SimpleDateFormat("M月");
					String resultmonth = sdf4col.format(tempdate);
					colMap.put("monthtime", resultmonth);
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			//今日交易金额, 当前粉丝数, 今日新增粉丝
			List dd = screenDisplayService.getDisplayDay(null);
			Map d1 = (Map) dd.get(0);	//今天
			Map d2 = (Map) dd.get(1);	//昨天
			d1.put("yesterdayamount", d2.get("todayamount"));
			d1.put("addfanstoday",d2.get("addfanstoday"));
			
			String historyhighestonline = ((Map) screenDisplayService.getDisplayMonth(null).get(0)).get("historyhighestonline").toString();	//历史最高在线人数
			d1.put("historyhighestonline", historyhighestonline);
			
//			result.put("map", map);
			result.put("fanChat", fanChat);
			result.put("polyline", polyline);
			result.put("columnar", columnar);
			result.put("box", d1);
			
			String value = JSONObject.fromObject(result).toString();
			JedisUtil.set(key, value, 24 * 60 * 60);
			log.info(key + " : " + value);
		}
		
		List<Agent> list = agentService.findByStatus(Agent.STATUS_PASS);
		Integer baseCount = agentService.findAgentBaseCount();
		if(list != null && list.size() > 0){
			JedisUtil.set("ScreenDisplay:agentCount", (list.size()+baseCount)+"");
		}else{
			JedisUtil.set("ScreenDisplay:agentCount", (0+baseCount)+"");
		}
		
    }
	
	public int ran(int min, int max){
        Random random = new Random();
        int s = Math.abs(random.nextInt()) % (max-min+1) + min;
        return s;
	}
	
}
