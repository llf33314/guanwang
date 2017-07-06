package com.gt.dao.impl;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.gt.dao.IBaseDAO;
/**
 * 
 * @author qusk
 * @date 2015年9月16日
 * @description 底层DAO接口实现类
 */
@SuppressWarnings("rawtypes")
@Repository
public class BaseDaoImpl  implements IBaseDAO{
	private static final org.apache.log4j.Logger log = Logger.getLogger(BaseDaoImpl.class);
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private JdbcTemplate jdbc;
	private Session session;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public void setSession(Session session) {
		this.session = session;
	}
	/**
	 * 添加一条数据
	 */
	@Override
	public Serializable save(Object obj) {
		Serializable id=null;
		try {
			if(obj == null){
				throw new Exception("object is null !");
			}else{
				id=getSession().save(obj);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return id;
	}

	/**
	 * 删除一个对象
	 */
	@Override
	public void delete(Object obj) {
		try {
			if(obj == null){
				throw new Exception("object is null !");
			}else{
				getSession().delete(obj);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

	/**
	 * 根据主键查询一个对象
	 */
	@Override
	public Object findById( Class clz, Serializable id) {
		Object obj = null;
		try {
			if(id == null){
				throw new Exception("id is null !");
			}else{
				obj = getSession().get(clz, id);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return obj;
	}

	/**
	 * 根据HQL查询
	 */
	@Override
	public List findByHql(String hql,Object...objects) {
		List list = null;
		try {
			Query query = getSession().createQuery(hql);
			if(objects != null && objects.length > 0){
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
			}
			list = query.list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 根据map集合查询
	 * @param map key：对象属性名称，value：值
	 */
	@Override
	public List findByMap(Class clz, Map map) {
		List list = null;
		try {
			if(map == null){
				throw new Exception("map is null !");
			}else{
				list = getSession().createCriteria(clz).add(Restrictions.allEq(map)).list();
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 根据SQL查询
	 * @param sql
	 * @param objects
	 * @return
	 */
	@Override
	public List queryForList(String sql,Object...args) {
		List ls =  null;
		try {
			ls = jdbc.queryForList(sql,args);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	/**
	 * 查询字段为空的对象集合
	 * @param clz 对象
	 * @param pro 对象的属性
	 * @return
	 */
	@Override
	public List findIsNull(Class clz, String pro) {
		List ls =  null;
		try {
			ls = getSession().createCriteria(clz).add(Restrictions.isNull(pro)).list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}


	/**
	 * 范围查询    相当于MySql的limit函数
	 * @param hql 
	 * @param firstResult 开始位置
	 * @param maxResult 结束位置
	 * @return
	 */
	@Override
	public List findByPage(String hql, Integer firstResult, Integer maxResult) {
		List ls =  null;
		try {
			ls = getSession().createQuery(hql).setFirstResult(firstResult).setMaxResults(maxResult).list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	/**
	 * 更新对象
	 * @param obj
	 */
	@Override
	public void update(Object obj) {
		try {
			if(obj == null){
				throw new Exception("object is null !");
			}else{
				getSession().update(obj);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		
	}

	/**
	 * 模糊查询 支持单一对象，单一条件
	 * @param clz
	 * @param pro 
	 * @param param 如：%123% or 123% ...
	 * @return
	 */
	@Override
	public List findByLike(Class clz, String pro, String param) {
		List ls = null;
		try {
			ls = getSession().createCriteria(clz).add(Restrictions.like(pro, "%"+param+"%")).list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	/**
	 * 根据属性批量删除 支持单一对象
	 * @param entity 实体名称
	 * @param id 如果传入空则认为是"id"
	 * @param obj 
	 * @return
	 */
	@Override
	public void deleteAllByIds(String entity,String pro, Object[] obj) {
		try {
			if(obj == null || obj.length <= 0){
				throw new Exception("param is null !");
			}else{
				String hql = "delete from "+entity +"where "+("".equals(pro)?"id":pro) + "in(";
				for (int i = 0; i < obj.length; i++) {
					hql += obj[i]+",";
				}
				hql = hql.substring(0,hql.lastIndexOf(","))+")";
				getSession().createQuery(hql).executeUpdate();
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

	/**
	 * 分页查询
	 * @param clz 对象
	 * @param currPage 当前页
	 * @param param 条件参数 (key-对应属性,value-对应的值)
	 * @param paramType 参数的查询类型 1-模糊查询，0-等值查询 
	 *                  2-in查询
	 */
	@Override
	public List findByPage(Class clz,Map<String, Object> param,Integer paramType) {
		List ls = null;
		try {
			Integer page = 1;
			Integer rows = 10;
			if(param.get("page") != null){
				page = Integer.parseInt(param.get("page").toString());
			}
			if(param.get("rows") != null){
				rows = Integer.parseInt(param.get("rows").toString());
			}
			Integer firstResult = (page-1)*rows;
			Integer maxResults = rows;
			//将分页的参数移除,留下查询的参数
			param.remove("page");
			param.remove("rows");
			Criteria c = getSession().createCriteria(clz);
			if(param.get("desc") != null){
				c.addOrder(Order.desc(param.get("desc").toString()));
				param.remove("desc");
			}
			if(paramType != null && paramType == 0){
				c= c.add(Restrictions.allEq(param));
			}else if(paramType != null && paramType == 1){
				for (String key : param.keySet()) {
					c.add(Restrictions.like(key, "%"+param.get(key)+"%"));
				}
			}else if(paramType != null && paramType == 2){
				for (String key : param.keySet()) {
					c.add(Restrictions.in(key, (Object[])param.get(key)));
				}
			}
			ls = c.setFirstResult(firstResult).setMaxResults(maxResults).list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}
	
	/**
	 * 根据count语句获取条数
	 * @param hql 语句
	 * @param objects 条件参数
	 */
	@Override
	public Long count(String hql, Object... objects) {
		Long l = null;
		try {
			Query query = getSession().createQuery(hql);
			if(objects != null && objects.length > 0){
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
			}
			l = (Long) query.uniqueResult();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return l;
	}

	/**
	 * 根据属性查询对象
	 * @param clz 对象
	 * @param param 参数
	 */
	@Override
	public Object findByPro(Class clz, Map param) {
		Object obj = null;
		try {
			obj = getSession().createCriteria(clz).add(Restrictions.allEq(param)).uniqueResult();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return obj;
	}
	/**
	 * 根据SQL获取条数
	 * @param sql sql
	 * @param objects 参数
	 */
	@Override
	public Long countsql(String sql, Object... objects) {
		 Long l1 = null;
		BigInteger l = null;
		try {
			Query query = getSession().createSQLQuery(sql);
			if(objects != null && objects.length > 0){
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
			}
			l =  (BigInteger) query.uniqueResult();
			l1 = l.longValue();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return l1;
	}
	
	/**
	 * 针对单个对象的sql，返回List<Map>
	 * @param sql sql语句
	 * @param clz 对象
	 * @param objects参数
	 */
	@Override
	public List findBySql(String sql, Class clz, Object... objects) {
		List list = null;
		try {
			SQLQuery query = getSession().createSQLQuery(sql).addEntity(clz);  
			query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
			if(objects != null && objects.length > 0){
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
			}  
			list = query.list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * sql查询，返回map
	 * @param sql 
	 * @param args 参数
	 */
	@Override
	public Map queryForMap(String sql,Object...args) {
		Map map = null;
		try {
			map = jdbc.queryForMap(sql, args);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return map;
	}

	@Override
	public void delete(Class clz, Integer id) {
		try {
			getSession().delete(getSession().load(clz, id));
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

	/**
	 * 根据SQL模糊查询
	 * @param sql 如：select * from user where user.xx like %?%
	 * @param objects 参数
	 */
	public List findByLike(String sql, Object... objects) {
		List ls = null;
		try {
			Query query = getSession().createSQLQuery(sql);
			if(objects != null && objects.length > 0){
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
			}
			ls = query.list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	/**
	 * 模糊查询(支持单个对象)
	 * @param clz 对象
	 * @param params 参数
	 */
	public List findByLike(Class clz, Map<String, Object> params) {
		List ls = null;
		try {
			 Criteria c = getSession().createCriteria(clz);
			 if(params != null){
				for (String key : params.keySet()) {
					c.add(Restrictions.like(key, "%"+params.get(key)+"%"));
				}
			 }
			 ls = c.list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}
	
	/**
	 * 模糊查询(支持单个对象)
	 * @param clz 对象
	 * @param params 参数
	 */
	public List findByLikeOR(Class clz, Map<String, Object> params) {
		List ls = null;
		try {
			 Criteria c = getSession().createCriteria(clz);
			 if(params != null){
				Disjunction dis = Restrictions.disjunction();
				for (String key : params.keySet()) {
					dis.add(Restrictions.like(key, "%"+params.get(key)+"%"));
				}
				c.add(dis);
			 }
			 
			 ls = c.list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	/**
	 * 根据SQL删除
	 * @param sql 
	 */
	public void delete(String sql) {
		try {
			jdbc.execute(sql);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

	/**
	 * 查询对象集合不带任何条件
	 */
	public List findAll(Class clz) {
		List ls = null;
		try {
			ls = getSession().createCriteria(clz).list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	/**
	 * 根据sql查询
	 */
	public List findBySql(String sql, Object... objects) {
		List ls = null;
		try {
			Query query = getSession().createSQLQuery(sql);
			if(objects != null && objects.length > 0){
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
			}
			ls = query.list();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return ls;
	}

	@Override
	public Object get(Class clz, Integer id) {
		return getSession().get(clz, id);
	}

	@Override
	public Integer update(String sql, Object... objects) {
		return jdbc.update(sql, objects);
	}
}
