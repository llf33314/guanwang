package com.gt.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
/**
 * 
 * @author qusk
 * @date 2015年9月16日
 * @description 底层DAO接口
 */
@SuppressWarnings("rawtypes")
public interface IBaseDAO {
	/**根据ID获取一个对象*/
	public Object get(Class clz,Integer id);
	/**保存*/
	public Serializable save(Object obj);
	/**删除*/
	public void delete(Object obj);
	/**删除*/
	public void delete(Class clz,Integer id);
	/**删除*/
	public void delete(String sql);
	/**更新*/
	public void update(Object obj);
	/**根据主键查询*/
	public Object findById(Class clz , Serializable id);
	/**根据HQL查询*/
	public List findByHql(String hql,Object...objects);
	/**根据MAP查询*/
	public List findByMap(Class clz,Map map);
	/**根据SQL查询*/
	public List queryForList(String sql,Object...args);
	
	public Map  queryForMap(String sql,Object...args);
	/**查询字段为空的对象集合*/
	public List findIsNull(Class clz,String pro);
	/**查询从X到Y条，相当于MySql的limit函数*/
	public List findByPage(String hql,Integer firstResult,Integer maxResult);
	/**Like查询*/
	public List findByLike(Class clz,String pro,String param);
	/**根据主键批量删除*/
	public void deleteAllByIds(String entity,String pro, Object[] obj);
	/**
	 * 分页查询
	 * @param clz 对象
	 * @param currPage 当前页
	 * @param param 条件参数
	 * @param paramType 参数的查询类型 1-模糊查询，0-等值查询 ，2-in查询   
	 */
	public List findByPage(Class clz, Map<String, Object> param,Integer paramType);
	/**查询条数*/
	public Long count(String hql,Object...objects);
	/**查询SQL条数*/
	public Long countsql(String sql,Object...objects);
	/**根据属性查询单个对象*/
	public Object findByPro(Class clz,Map param);
	
	public List findBySql(String sql,Class clz,Object...objects);
	
	public List findBySql(String sql,Object...objects);
	/**根据SQL模糊查询*/
	public List findByLike(String sql,Object...objects);
	
	public List findByLike(Class clz,Map<String, Object> params);
	
	public List findByLikeOR(Class clz,Map<String, Object> params);
	
	/**查询对象集合不带任何条件*/
	public List findAll(Class clz);
	
	public Integer update(String sql, Object...objects);
}
