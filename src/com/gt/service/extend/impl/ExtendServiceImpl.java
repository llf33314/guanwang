package com.gt.service.extend.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.extend.ExtendQQMain;
import com.gt.service.extend.IExtendService;
import com.gt.utils.CommonUtil;

@Service
public class ExtendServiceImpl implements IExtendService {

	@Autowired
	private IBaseDAO baseDAO;
	
	/*@SuppressWarnings("unchecked")
	@Override
	public Map<String, Object> getExtendQQ() {
		String sql = "SELECT * FROM t_ws_extend_qq WHERE extend_status = 0 AND CURTIME() BETWEEN extend_start AND extend_end;";
		List<Map<String, Object>> lists = baseDAO.queryForList(sql);
		if(lists == null || lists.size() <= 0){
			sql = "SELECT * FROM t_ws_extend_qq WHERE extend_status = 0 AND extend_start > extend_end AND (CURTIME() BETWEEN extend_start AND '24:00' OR CURTIME() BETWEEN '00:00' AND extend_end);";
			lists = baseDAO.queryForList(sql);
			if(lists == null || lists.size() <= 0){
				return null;
			}
		}
		return lists.get(0);
	}*/
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Object> getExtendQQ(String mei) throws Exception{
		String sql = "SELECT * FROM t_ws_extend_qq WHERE extend_status = 0 AND CURTIME() BETWEEN extend_start AND extend_end AND extend_type = ?;";
		List<Map<String, Object>> lists = baseDAO.queryForList(sql, mei);
		if(lists == null || lists.size() <= 0){
			String sql2 = "SELECT * FROM t_ws_extend_qq WHERE extend_status = 0 AND CURTIME() BETWEEN extend_start AND extend_end AND extend_type = 1;";
			lists = baseDAO.queryForList(sql2);
			if(lists == null || lists.size() <= 0){
				sql = "SELECT * FROM t_ws_extend_qq WHERE extend_status = 0 AND extend_start > extend_end AND (CURTIME() BETWEEN extend_start AND '24:00' OR CURTIME() BETWEEN '00:00' AND extend_end) AND extend_type = ?;";
				lists = baseDAO.queryForList(sql, mei);
				if(lists == null || lists.size() <= 0){
					return null;
				}
			}
		}
		return lists.get(0);
	}

	@Override
	public ExtendQQMain findQQById(Integer id) {
		if(id == null)
			return null;
		return (ExtendQQMain) baseDAO.findById(ExtendQQMain.class, id);
	}

	@Override
	public void createExtendQQ(ExtendQQMain qqMain) {
		if(CommonUtil.isEmpty(qqMain.getId())){
			baseDAO.save(qqMain);
		} else{
			baseDAO.update(qqMain);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, Object>> findQQAll() {
		String sql = "SELECT * FROM t_ws_extend_qq limit 20;";
		return baseDAO.queryForList(sql);
	}

	@Override
	public void delQQById(Integer id) {
		String sql = "DELETE FROM t_ws_extend_qq WHERE ID = " + id + ";";
		baseDAO.delete(sql);
	}

}
