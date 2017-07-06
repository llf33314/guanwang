package com.gt.service.material;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.gt.model.material.MaterialMain;

public interface IMaterialFacotryService {

	/**
	 * 保存文件（单文件）
	 * @param multipartFiles
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public Map<String, Object> uploadMaterial(MultipartFile multipartFile) throws IllegalStateException, IOException;
	
	/**
	 * 分页查询
	 * @param page 起始页
	 * @param rows 每页条数
	 * @return
	 */
	public List<MaterialMain> listMaterial(Integer page, Integer rows);

	/**
	 * 查询素材总数
	 * @return
	 */
	public int countMaterials();

	/**
	 * 删除素材
	 * @param params
	 * @return 
	 */
	public boolean deleteMaterial(String[] params);
	
}
