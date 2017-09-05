package com.gt.service.screenDisplay;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;

@Service(value="screenDisplayServiceImpl")
public class ScreenDisplayServiceImpl implements ScreenDisplayService{
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings("rawtypes")
	@Override
	public List getDisplayMap() {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_screen_display_map");
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List getDisplayFanChart() {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_screen_display_fan_chart");
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List getDisplayPolyline(String now) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_screen_display_polyline where nowtime like ?");
		params.add(now + "%");
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List getDisplayColumnar(int quantity) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_screen_display_columnar order by monthtime desc limit ?");
		params.add(quantity);
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List getDisplayDay(String now) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_screen_display_day where 1=1 ");
		if(now != null){
			sql.append(" and nowtime like ? ");
			params.add(now + "%");
		}
		sql.append("order by id desc limit 2");
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List getDisplayMonth(String now) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_screen_display_month where 1=1 ");
		if(now != null){
			sql.append("and nowtime like ? ");
			params.add(now + "%");
		}
		sql.append("order by id desc");
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	@SuppressWarnings("rawtypes")
	@Override
	public int addDisplayMonth(int historyhighestonline, String nowStr) {
		List l = getDisplayMonth(nowStr.substring(0, 7));
		if(l.isEmpty()){
			String sql = "insert into t_ws_screen_display_month(historyhighestonline, nowtime) values(?, ?)";
			iBaseDAO.update(sql, new Object[]{historyhighestonline, nowStr});
			return 1;
		}else{
			return 0;
		}
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	public void updateDisplayFanChartLoop(List fanChat) {
		String sql = "update t_ws_screen_display_fan_chart set value = ? where name = ?";
		for(Object fc : fanChat){
			Map f = (Map) fc;
			iBaseDAO.update(sql, new Object[]{f.get("value"), f.get("name")});
		}
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	public int addDisplayDay(double todayamount, int currentfans, int addfanstoday, String nowStr) {
		List l = getDisplayDay(nowStr.substring(0, 10));
		if(l.isEmpty()){
			String sql = "insert into t_ws_screen_display_day(todayamount, currentfans, addfanstoday, nowtime) values(?, ?, ?, ?)";
			iBaseDAO.update(sql, new Object[]{todayamount, currentfans, addfanstoday, nowStr});
			return 1;
		}else{
			return 0;
		}
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int getGrowth(String now) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select CAST(sum(addfanstoday) AS CHAR) s from t_ws_screen_display_day where nowtime like ?");
		params.add(now + "%");
		List l = iBaseDAO.queryForList(sql.toString(), params.toArray());
		if(l.size() > 0) return Integer.valueOf(((Map)l.get(0)).get("s").toString());
		else return 0;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int getDisplayColumnarValByMonth(String now) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select growth from t_ws_screen_display_columnar where monthtime like ?");
		params.add(now + "%");
		List l = iBaseDAO.queryForList(sql.toString(), params.toArray());
		if(l.size() > 0) return Integer.valueOf(((Map)l.get(0)).get("growth").toString());
		else return 0;
	}
	
	@Override
	public int addDisplayColumnar(int growth, String growthrate, String nowStr) {
		int l = getDisplayColumnarValByMonth(nowStr.substring(0, 7));
		if(l == 0){
			String sql = "insert into t_ws_screen_display_columnar(growth, growthrate, monthtime) values(?, ?, ?)";
			iBaseDAO.update(sql, new Object[]{growth, growthrate, nowStr});
			return 1;
		}else{
			return 0;
		}
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public void addDisplayPolyline(List<Map> polys) {
		if(!polys.isEmpty()){
			List l = getDisplayPolyline(polys.get(0).get("nowtime").toString().substring(0, 10));
			if(l.isEmpty()){
				StringBuilder sql = new StringBuilder();
				List params = new ArrayList();
				sql.append("insert into t_ws_screen_display_polyline(peak, views, nowtime) values ");
				for(Map p : polys){
					sql.append("(?, ?, ?),");
					params.add(p.get("peak"));
					params.add(p.get("views"));
					params.add(p.get("nowtime"));
				}
				String sqlStr = sql.toString();
//				System.out.println(sqlStr.substring(0, sqlStr.length()-1));
				iBaseDAO.update(sqlStr.substring(0, sqlStr.length()-1), params.toArray());
			}
		}
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public int addMapData(String eins, String zwei, String drei) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("insert into t_ws_screen_display_map(name, longitude, latitude, value) values (?, ?, ?, 40)");
		params.add(eins);
		params.add(drei);
		params.add(zwei);
		return iBaseDAO.update(sql.toString(), params.toArray());
	}

}
