package com.gt.service.material.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.material.MaterialMain;
import com.gt.service.material.IMaterialMainService;

@Service
public class MaterialServiceImpl implements IMaterialMainService{

	@Autowired
	private IBaseDAO baseDao;
	
	@Override
	public Integer save(MaterialMain materialMain) {
		return (Integer) baseDao.save(materialMain);
	}

	@Override
	public void delet(MaterialMain materialMain) {
		String sql = "DELETE FROM t_ws_meterial_main WHERE id = " + materialMain.getId() + ";";
		baseDao.delete(sql);
	}

	@Override
	public void update(MaterialMain materialMain) {
		baseDao.update(materialMain);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MaterialMain> listMaterials(Map<String, Object> params, Integer paramType) {
		params.put("desc", "id");
		return baseDao.findByPage(MaterialMain.class, params, paramType);
	}

	@Override
	public int count(int type) {
		String sql = "SELECT COUNT(id) FROM t_ws_meterial_main WHERE material_type = ? AND material_status = 0;";
		long count = baseDao.countsql(sql, type);
		return (int) count;
	}

	@Override
	public MaterialMain getMaterialMainById(Integer id) {
		return (MaterialMain) baseDao.findById(MaterialMain.class, id);
	}

}
