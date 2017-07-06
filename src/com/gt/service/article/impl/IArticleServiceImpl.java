package com.gt.service.article.impl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.article.ArticleMain;
import com.gt.service.article.IArticleService;
import com.gt.utils.JedisUtil;

import net.sf.json.JSONArray;

@Service(value="iArticleServiceImpl")
public class IArticleServiceImpl implements IArticleService{
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_article_main where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("article_type") != null){
			sql.append("and article_type = ? ");
			params.add(param.get("article_type"));
		}
		sql.append("order by article_type, createtime desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public Integer selectListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(id) from t_ws_article_main where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("article_type") != null){
			sql.append("and article_type = ? ");
			params.add(param.get("article_type"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	@Transactional
	public Integer insert(ArticleMain articleMain, HttpServletRequest request) throws IOException {
//		StringBuilder sql = new StringBuilder();
//		sql.append("INSERT INTO t_ws_article_main(article_type, content, creater, createtime, title, video_url) ");
//		sql.append("VALUES(?, ?, ?, ?, ?, ?)");
//		return iBaseDAO.update(sql.toString(), new Object[]{articleMain.getArticleType(), articleMain.getContent(), 
//				articleMain.getCreater(), articleMain.getCreatetime(), articleMain.getTitle(), articleMain.getVideoUrl()});
		iBaseDAO.save(articleMain);
		createArticlePage(articleMain, request, buildMenu());
		String json = JSONArray.fromObject(selectList(new HashMap())).toString();
		JedisUtil.set("article:list", json);
		return 1;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	@Transactional
	public Integer delete(Integer id, HttpServletRequest request) throws IOException {
		String sql = "delete from t_ws_article_main where id = ?";
		int i = iBaseDAO.update(sql, id);
		delArticlePage(id, request);
		String json = JSONArray.fromObject(selectList(new HashMap())).toString();
		JedisUtil.set("article:list", json);
		return i;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	@Transactional
	public Integer update(ArticleMain articleMain, HttpServletRequest request) throws IOException {
		iBaseDAO.update(articleMain);
		createArticlePage(articleMain, request, buildMenu());
		String json = JSONArray.fromObject(selectList(new HashMap())).toString();
		JedisUtil.set("article:list", json);
		return 1;
	}
	
	public void createArticlePage(ArticleMain articleMain, HttpServletRequest request, String menu) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("/");
		File page = new File(path + "/html/articlePage/article_"+articleMain.getId()+".jsp");
		if(!page.getParentFile().exists()){
			page.getParentFile().mkdirs();
		}
		page.createNewFile();
		FileWriter fw = new FileWriter(page, false);
		BufferedWriter bw =  new BufferedWriter(
				new OutputStreamWriter(new FileOutputStream(new File(path + "/html/articlePage/article_"+articleMain.getId()+".jsp")),"utf-8"));
		String s = new String(readArticlePage(articleMain, request, menu));
		bw.write(s);
		bw.flush();
		bw.close();
		fw.close();
	}
	
	public void createArticlePage(ArticleMain articleMain, String path, String menu, boolean flag) throws IOException {
		File page = new File(path + "/html/articlePage/article_"+articleMain.getId()+".jsp");
		if(!page.exists() || flag){
			if(!page.getParentFile().exists()){
				page.getParentFile().mkdirs();
			}
			page.createNewFile();
			FileWriter fw = new FileWriter(page, false);
			BufferedWriter bw =  new BufferedWriter(
					new OutputStreamWriter(new FileOutputStream(new File(path + "/html/articlePage/article_"+articleMain.getId()+".jsp")),"utf-8"));

			String s = new String(readArticlePage(articleMain, path, menu));
			bw.write(s);
			bw.flush();
			bw.close();
			fw.close();
		}
	}
	
	public boolean delArticlePage(int id, HttpServletRequest request) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("/");
		File page = new File(path + "/html/articlePage/article_"+id+".jsp");
		boolean flag = false;
		if (page.exists() && page.isFile()) {
			flag = page.delete();
		}
		return flag;
	}
	
	public String readArticlePage(ArticleMain articleMain, HttpServletRequest request, String menu) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder pageStr = new StringBuilder();
		File page = new File(path + "/html/articlePage/article_temp.jsp");
		BufferedReader reader = new BufferedReader(new FileReader(page));
		String tempString = null;
        while ((tempString = reader.readLine()) != null) {
            pageStr.append(tempString);
        }
        reader.close();
		return pageStr.toString()
				.replace("@@page_title@@", articleMain.getArtPageTitle())
				.replace("@@meta@@", articleMain.getArtMeta())
				.replace("@@subtitle@@","多粉产品动态")
				.replace("@@menu@@", menu)
				.replace("@@title@@", articleMain.getTitle())
				.replace("@@content@@", articleMain.getContent())
				.replace("@@datetime@@", new SimpleDateFormat("yyyy-MM-dd").format(articleMain.getCreatetime()));
	}
	
	public String readArticlePage(ArticleMain articleMain, String path, String menu) throws IOException {
		StringBuilder pageStr = new StringBuilder();
		File page = new File(path + "/html/articlePage/article_temp.jsp");
		BufferedReader reader = new BufferedReader(new FileReader(page));
		String tempString = null;
        while ((tempString = reader.readLine()) != null) {
            pageStr.append(tempString);
        }
        reader.close();
		return pageStr.toString()
				.replace("@@page_title@@", articleMain.getArtPageTitle())
				.replace("@@meta@@", articleMain.getArtMeta())
				.replace("@@subtitle@@","多粉产品动态")
				.replace("@@menu@@", menu)
				.replace("@@title@@", articleMain.getTitle())
				.replace("@@content@@", articleMain.getContent())
				.replace("@@datetime@@", new SimpleDateFormat("yyyy-MM-dd").format(articleMain.getCreatetime()));
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@PostConstruct
	public void initArticlePage() throws Exception {
		try {
			log.debug("文章静态文件生成检测");
			StringBuilder sql = new StringBuilder();
			List l = new ArrayList();
			sql.append("SELECT * FROM t_ws_article_main ");
			l = iBaseDAO.queryForList(sql.toString(), new Object[]{});
			String path = this.getClass().getClassLoader().getResource("").getPath().substring(1).replace("WEB-INF/classes/", "");
			for(Object a : l){
				Map<String, Object> m = (Map<String, Object>) a;
				ArticleMain am = new ArticleMain();
				am.setId(Integer.valueOf(m.get("id").toString()));
				am.setTitle(m.get("title").toString());
				am.setContent(m.get("content").toString());
				am.setCreatetime((Date) m.get("createtime"));
				am.setArtPageTitle(m.get("art_page_title").toString());
				am.setArtMeta(m.get("art_meta").toString());
				createArticlePage(am, path, buildMenu(), false);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	private String buildMenu(){
		StringBuilder menu = new StringBuilder();
		String li0 = "";
		int li0c = 0;
		String li1 = "";
		int li1c = 0;
		String li2 = "";
		int li2c = 0;
		List<Map> l = selectList(new HashMap());
		for(Map m : l){
			int key = Integer.valueOf(m.get("article_type").toString());
			String c = "<li class='newsList-article'><span class='dot-green'></span><span class='ctnnews'>"
					+"<a href='/html/articlePage/article_"+m.get("id")+".jsp' >"+m.get("title")+"</a></span></li>";
			switch (key) {
			case 0:if(li0c < 5){li0 += c;li0c++;}break;
			case 1:if(li1c < 5){li1 += c;li1c++;}break;
			case 2:if(li2c < 5){li2 += c;li2c++;}break;
			default:break;
			}
		}
		menu.append("<h3 class='fl titleNewsCnt'>行业动态</h3>");
		menu.append("<ul class='ul-newslist'>");
		menu.append(li0);
		menu.append("</ul>");
		menu.append("<h3 class='fl titleNewsCnt'>产品更新</h3>");
		menu.append("<ul class='ul-newslist'>");
		menu.append(li1);
		menu.append("</ul>");
		menu.append("<h3 class='fl titleNewsCnt'>公司新闻</h3>");
		menu.append("<ul class='ul-newslist'>");
		menu.append(li2);
		menu.append("</ul>");
		return menu.toString();
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public void allReset(HttpServletRequest request) throws Exception {
		log.debug("文章静态文件重新生成");
		StringBuilder sql = new StringBuilder();
		List l = new ArrayList();
		sql.append("SELECT * FROM t_ws_article_main ");
		l = iBaseDAO.queryForList(sql.toString(), new Object[]{});
		String path = this.getClass().getClassLoader().getResource("").getPath().substring(1).replace("WEB-INF/classes/", "");
		for(Object a : l){
			Map<String, Object> m = (Map<String, Object>) a;
			ArticleMain am = new ArticleMain();
			am.setId(Integer.valueOf(m.get("id").toString()));
			am.setTitle(m.get("title").toString());
			am.setContent(m.get("content").toString());
			am.setCreatetime((Date) m.get("createtime"));
			am.setArtPageTitle(m.get("art_page_title").toString());
			am.setArtMeta(m.get("art_meta").toString());
			createArticlePage(am, path, buildMenu(), true);
		}
	}

}
