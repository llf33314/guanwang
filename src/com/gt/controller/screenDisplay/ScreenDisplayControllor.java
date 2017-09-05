package com.gt.controller.screenDisplay;

import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gt.service.screenDisplay.ScreenDisplayService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gt.model.agent.Agent;
import com.gt.service.agent.IAgentService;
import com.gt.utils.JedisUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping(value = "screenDisplay")
public class ScreenDisplayControllor {
	
	@Autowired
	private ScreenDisplayService screenDisplayService;
	
	@Autowired
	private IAgentService agentService;

	Logger log = Logger.getLogger(getClass());
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value = "/html/largeScreenDisplay")
	public void largeScreenDisplay(HttpServletResponse response, HttpServletRequest request){
		response.setContentType("text/html;charset=UTF-8");
		int status = 0;
		Map<String, Object> data = null;
		PrintWriter p = null;
		try {
			log.info("ScreenDisplay初始访问");
			p = response.getWriter();
			data = new HashMap<String, Object>();
			Map<String, Object> result = new HashMap<String, Object>();
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat sdf4col = null;
			String now = new SimpleDateFormat("yyyyMMdd").format(date);
//			String nowI = new SimpleDateFormat("yyyy-MM").format(date);
			String nowII = new SimpleDateFormat("yyyy-MM-dd").format(date);
			String key = "ScreenDisplay:" + now;
			List polyline = screenDisplayService.getDisplayPolyline(nowII);	//	折线
			if(polyline.size() == 0){
				/* t_ws_screen_display_polyline */
				List<Map> polys = new ArrayList<Map>();
				SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
				String date_prev = sdf2.format(new Date());
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
				polyline = screenDisplayService.getDisplayPolyline(nowII);
			}
			JedisUtil.set("ScreenDisplay:polyline", JSONArray.fromObject(polyline).toString());
			String s = JedisUtil.get(key);
			if(s == null){
				List map = screenDisplayService.getDisplayMap(); //地图
				JedisUtil.set("ScreenDisplay:map", JSONArray.fromObject(map).toString());
				List fanChat = screenDisplayService.getDisplayFanChart();	//扇形图
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
				
//				result.put("map", map);
				result.put("fanChat", fanChat);
				result.put("polyline", polyline);
				result.put("columnar", columnar);
				result.put("box", d1);
				
				String value = JSONObject.fromObject(result).toString();
				JedisUtil.set(key, value, 24 * 60 * 60);
				
				List<Agent> list = agentService.findByStatus(Agent.STATUS_PASS);
				Integer baseCount = agentService.findAgentBaseCount();
				if(list != null && list.size() > 0){
					JedisUtil.set("ScreenDisplay:agentCount", (list.size()+baseCount)+"");
				}else{
					JedisUtil.set("ScreenDisplay:agentCount", (0+baseCount)+"");
				}
			}
			/* -------------------- */
			String t = JedisUtil.get("ScreenDisplay:TON");	//今日订单数
			if(t == null || Integer.valueOf(t) > 18000){
				int tt = ran(8000, 10000);
				t = tt + "";
				JedisUtil.set("ScreenDisplay:TON", t);
			}
			double TONprice = Integer.valueOf(t) * (109.99);	//今日交易金额
			data.put("todayOrderNumber", t);
			data.put("TONprice", new DecimalFormat("#.00").format(TONprice));
			status = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		p.write("{\"status\":"+status+", \"data\":"+JSONObject.fromObject(data).toString()+"}");
	}
	
	public int ran(int min, int max){
        Random random = new Random();
        int s = Math.abs(random.nextInt()) % (max-min+1) + min;
        return s;
	}
	
	@RequestMapping(value = "/html/addDisplayPolyline")
	public void addDisplayPolyline() {
		
//		List<Map> polys = new ArrayList<Map>();
//		for(int i=0;i<4;i++){
//			Map m = new HashMap();
//			m.put("peak", "2829994");
//			m.put("views", "19809958");
//			m.put("nowtime", "2017-05-07 00:00:00");
//			polys.add(m);
//		}
//		screenDisplayService.addDisplayPolyline(polys);
	}

//	@RequestMapping("/html/aaaa")
//	public void aaaa(HttpServletResponse response, HttpServletRequest request){
//		response.setContentType("text/html;charset=UTF-8");
//		try {
//			DecimalFormat df = new DecimalFormat("#.00");
//			String par = request.getParameter("par");	//綦江 29.0044252742,106.8815074724
//			String[] pars = par.split(" ");
//			String[] parsII = pars[1].split(",");
//			String eins = pars[0];
//			String zwei = df.format(Double.valueOf(parsII[0]));
//			String drei = df.format(Double.valueOf(parsII[1]));
//			screenDisplayService.addMapData(eins, zwei, drei);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
}
