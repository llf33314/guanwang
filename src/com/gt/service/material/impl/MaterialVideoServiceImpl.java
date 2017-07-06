package com.gt.service.material.impl;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.gt.model.material.MaterialMain;
import com.gt.service.material.IMaterialFacotryService;
import com.gt.utils.ContinueFTP;
import com.gt.utils.MD5Util;
import com.gt.utils.MaterialFileUtil;

/**
 * 视频素材处理类
 * 素材类型（1：图片  2：音频  3：视频）
 * @author ryan
 */
public class MaterialVideoServiceImpl extends MaterialBaseService implements IMaterialFacotryService{

	@Override
	public List<MaterialMain> listMaterial(Integer page, Integer rows) {
		Map<String, Object> params = new HashMap<>();
		params.put("materialType", 3);
		params.put("page", page); // 当前页数
		params.put("rows", rows); // 每页的条数
		return materialMainService.listMaterials(params, 0);
	}

	@Override
	public Map<String, Object> uploadMaterial(MultipartFile multipartFile) throws IllegalStateException, IOException {
		Map<String, Object> results = new HashMap<>();
		results.put("status", 0);
		if (multipartFile.getSize() > MaterialFileUtil.getFileSizeLimit(6)) { // 限制文件大小6mb
			results.put("msg", "上传文件不能超过6M");
		} else{
			String fileName = multipartFile.getOriginalFilename();
			String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
			if (!"".equals(suffix) && (suffix.toLowerCase().equals("avi")) || (suffix.toLowerCase().equals("mp4"))
					|| (suffix.toLowerCase().equals("mpeg"))) {
				Long time = System.currentTimeMillis();
				String srcName = MD5Util.getMD5(time + fileName) + "." + suffix;
				String path = videoPath + "/" + srcName;
				
				ContinueFTP myFtp = new ContinueFTP();
				try {
					myFtp.upload(path);
				} catch (Exception e1) {
					e1.printStackTrace();
				}
				
				File file = new File(path);
				if (!file.exists() && !file.isDirectory()) {
					file.mkdirs();
				}
				multipartFile.transferTo(file);
				// 保存到素材库
				try{
					MaterialMain materialMain = new MaterialMain();
					materialMain.setMaterialCreateTime(new Date());
					materialMain.setMaterialName(fileName);
					materialMain.setMaterialSrc(getVideoUrl + "/" + srcName);
					materialMain.setMaterialStatus(0);
					materialMain.setMaterialType(3); // 视频
					materialMain.setMaterialSysName(srcName);
					Integer id = materialMainService.save(materialMain);
					if(id <= 0){
						MaterialFileUtil.delFileByPath(path);
					}
				}catch(Exception e){
					MaterialFileUtil.delFileByPath(path);
					e.printStackTrace();
				}
				results.put("status", 1);
			}else{
				results.put("msg", "上传文件格式不正确，文件只能为（avi,mp4,mpeg）");
			}
		}
		return results;
	}

	@Override
	public int countMaterials() {
		return materialMainService.count(3);
	}

	@Override
	public boolean deleteMaterial(String[] params) {
		try {
			for(String id : params){
				Integer idInt = Integer.parseInt(id);
				MaterialMain materialMain = materialMainService.getMaterialMainById(idInt);
				boolean flag = MaterialFileUtil.delFileByPath(audioPath + "/" + materialMain.getMaterialSysName());
				if(flag)
					materialMainService.delet(materialMain);
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
