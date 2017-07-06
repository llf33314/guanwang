package com.gt.service.article;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.gt.model.article.ArticleMain;

public interface IArticleService {
	
	/**
	 * 文章list
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	List selectList(Map param);
	
	/**
	 * 文章list Count
	 * @param param
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	Integer selectListCount(Map param);
	
	/**
	 * insert 文章
	 * @param articleMain
	 * @return
	 */
	Integer insert(ArticleMain articleMain, HttpServletRequest request) throws IOException;

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	Integer delete(Integer id, HttpServletRequest request) throws IOException;

	/**
	 * 更新
	 * @param articleMain
	 * @return
	 */
	Integer update(ArticleMain articleMain, HttpServletRequest request) throws IOException;

	void allReset(HttpServletRequest request) throws Exception;
	
	
	
}
