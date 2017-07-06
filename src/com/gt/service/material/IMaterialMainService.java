package com.gt.service.material;

import java.util.List;
import java.util.Map;

import com.gt.model.material.MaterialMain;

public interface IMaterialMainService {

	public Integer save(MaterialMain materialMain);
	
	public void delet(MaterialMain materialMain);
	
	public void update(MaterialMain materialMain);
	
	public List<MaterialMain> listMaterials(Map<String, Object> params, Integer paramType);

	public int count(int type);
	
	public MaterialMain getMaterialMainById(Integer id);
}
