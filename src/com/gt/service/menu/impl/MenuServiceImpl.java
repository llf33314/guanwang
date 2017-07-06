package com.gt.service.menu.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.menu.Menu;
import com.gt.model.user.User;
import com.gt.service.menu.IMenuService;

@Service
public class MenuServiceImpl implements IMenuService{

	@Autowired
	private IBaseDAO baseDao;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, Object>> getMenuByUser(User user) {
		List<Map<String, Object>> results = new ArrayList<>();
		String sql = "SELECT te.* FROM t_ws_user_menu tum, t_ws_menu te "
				+ " WHERE tum.ws_menu_id = te.id AND te.menu_pid = 0 AND tum.ws_user_id = ? ORDER BY menu_sort;";
		int userId = user.getId();
		List<Map<String, Object>> menus = baseDao.queryForList(sql, userId);
		for(int i = 0; i < menus.size(); i++){
			Map<String, Object> menu = (Map<String, Object>) menus.get(i);
			Map<String, Object> map = new HashMap<>();
			map.put("name", menu.get("menu_name"));
			map.put("url", menu.get("menu_url"));
			map.put("childName", "child" + menu.get("id"));
			map.put("childMenu", new ArrayList<>());
			int menuType = Integer.parseInt(menu.get("menu_type").toString());
			if(menuType == 1){
				String sqlChild = "SELECT te.menu_name AS name, te.menu_url AS url FROM t_ws_user_menu tum, t_ws_menu te "
						+ " WHERE tum.ws_menu_id = te.id AND te.menu_pid = ? AND tum.ws_user_id = ? ORDER BY menu_sort;";
				int pid = (int) menu.get("id");
				List<Map<String, Object>> menuChilds = baseDao.queryForList(sqlChild, pid, userId);
				map.put("childMenu", menuChilds);
			}
			results.add(map);
		}
		return results;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("SELECT a.*,b.menu_name pName FROM t_ws_menu a ");
		sql.append("LEFT JOIN t_ws_menu b ON a.menu_pid=b.id WHERE 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("type") != null){
			sql.append("and a.menu_type = ? ");
			params.add(param.get("type"));
		}
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return baseDao.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int selectListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("SELECT COUNT(a.id) pName FROM t_ws_menu a ");
		sql.append("LEFT JOIN t_ws_menu b ON a.menu_pid=b.id WHERE 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("type") != null){
			sql.append("and a.menu_type = ? ");
			params.add(param.get("type"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = baseDao.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	@Transactional
	public int insert(Menu m) {
		baseDao.save(m);
		String sql = "INSERT INTO t_ws_user_menu(ws_user_id, ws_menu_id) VALUES(?, ?)";
		baseDao.update(sql, new Object[]{1, m.getId()});
		return 1;
	}
	
	@Override
	@Transactional
	public int delete(Integer id) {
		String sql = "delete from t_ws_menu where id = ?";
		String sql2 = "delete from t_ws_user_menu where ws_menu_id = ?";
		baseDao.update(sql2, id);
		return baseDao.update(sql, id);
	}
	
	@Override
	@Transactional
	public int update(Menu m) {
		baseDao.update(m);
		return 1;
	}
}
