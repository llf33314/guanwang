package com.gt.service.extend;

import java.util.List;
import java.util.Map;

import com.gt.model.extend.ExtendQQMain;

public interface IExtendService {

	/**
	 * 获取QQ信息
	 * @return
	 */
	/*public Map<String, Object> getExtendQQ();*/
	
	public Map<String, Object> getExtendQQ(String mei) throws Exception;

	/**
	 * 根据ID获取
	 * @param id
	 * @return
	 */
	public ExtendQQMain findQQById(Integer id);

	/**
	 * 保存QQ
	 * @param qqMain
	 */
	public void createExtendQQ(ExtendQQMain qqMain);

	/**
	 * 查询所有QQ账号
	 * @return
	 */
	public List<Map<String, Object>> findQQAll();


	public void delQQById(Integer id);
	
}
