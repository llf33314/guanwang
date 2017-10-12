package com.gt.service.productCenter.impl;

import com.alibaba.fastjson.JSON;
import com.gt.dao.IBaseDAO;
import com.gt.model.productCenter.*;
import com.gt.service.productCenter.ProductCenterNewService;
import com.gt.utils.CommonUtil;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service(value="productCenterNewServiceImpl")
public class ProductCenterNewServiceImpl implements ProductCenterNewService {
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select b.pctypename, a.* from t_ws_product_center_new a join t_ws_product_center_type b on a.classid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("classid") != null){
			sql.append("and a.classid = ? ");
			params.add(param.get("classid"));
		}
		sql.append("order by a.id desc, a.createtime desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int selectListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select (a.id) from t_ws_product_center_new a join t_ws_product_center_type b on a.classid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("classid") != null){
			sql.append("and a.classid = ? ");
			params.add(param.get("classid"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@SuppressWarnings({ "rawtypes", "unused" })
	@Transactional
	@Override
	public int insert(ProductCenterNew a, List<ProductCenterImg> b, HttpServletRequest request) throws Exception {
		iBaseDAO.save(a);
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder sql = new StringBuilder();
		sql.append("select b.pctypename, a.* from t_ws_product_center_new a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(sql.toString(), a.getId()).get(0);
		createProductCenterPage(a, path, true);
		return 1;
	}
	
	@Transactional
	@Override
	public int delete(Integer id, HttpServletRequest request) throws Exception {
		String sql = "delete from t_ws_product_center_new where id = ?";
		int i = iBaseDAO.update(sql, id);
		delProductCenterPage(id, request);
		return i;
	}
	
	@SuppressWarnings({ "rawtypes", "unused" })
	@Transactional
	@Override
	public int update(ProductCenterNew a, List<ProductCenterImg> b, HttpServletRequest request) throws Exception {
		iBaseDAO.update(a);
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder _sql = new StringBuilder();
		_sql.append("select b.pctypename, a.* from t_ws_product_center_new a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(_sql.toString(), a.getId()).get(0);
		createProductCenterPage(a, path, true);
		return 1;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectImgList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.* from t_ws_product_center_img a where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("productid") != null){
			sql.append("and a.productid = ? ");
			params.add(param.get("productid"));
		}
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@Transactional
	@SuppressWarnings("rawtypes")
	@Override
	public int insert(ProductCenterNew a, HttpServletRequest request) throws Exception {
		iBaseDAO.save(a);
		String path = request.getSession().getServletContext().getRealPath("/");
//		StringBuilder sql = new StringBuilder();
//		sql.append("select a.* from t_ws_product_center_new a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
//		Map _a = (Map) iBaseDAO.queryForList(sql.toString(), a.getId()).get(0);
		createProductCenterPage(a, path, true);
		return 1;
	}
	
	@Transactional
	@SuppressWarnings("rawtypes")
	@Override
	public int update(ProductCenterNew a, HttpServletRequest request) throws Exception {
		iBaseDAO.update(a);
		String path = request.getSession().getServletContext().getRealPath("/");
		createProductCenterPage(a, path, true);
		return 1;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectBtnList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select a.* from t_ws_product_center_vbtn a where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("productid") != null){
			sql.append("and a.productid = ? ");
			params.add(param.get("productid"));
		}
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectTypeList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_product_center_type where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		sql.append("order by id desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int selectTypeListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(id) from t_ws_product_center_type where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	public int insertType(ProductCenterType a) {
		iBaseDAO.save(a);
		return 1;
	}
	
	@Override
	public int deleteType(Integer id) {
		String sql = "delete from t_ws_product_center_new where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}
	
	@Override
	public int updateType(ProductCenterType a) {
		iBaseDAO.update(a);
		return 1;
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List selectBottomImgList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_product_center_bottom_img where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		sql.append("order by id desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public int selectBottomImgListCount(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(id) from t_ws_product_center_bottom_img where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}
	
	@Override
	public int deleteBottomImg(Integer id) {
		String sql = "delete from t_ws_product_center_bottom_img where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	public int insertBottomImg(ProductCenterBottomImg a) {
		iBaseDAO.save(a);
		return 1;
	}

	@Override
	public int updateBottomImg(ProductCenterBottomImg a) {
//		iBaseDAO.update(a);
		String sql = "update t_ws_product_center_bottom_img set imgurl = ?, imgdesc = ?, url = ? where id = ?";
		int i = iBaseDAO.update(sql, a.getImgurl(), a.getImgdesc(), a.getUrl(), a.getId());
		return i;
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@SuppressWarnings("rawtypes")
	public void createProductCenterPage(ProductCenterNew productCenterNew, String path, boolean flag) throws IOException {
		File page = new File("D:/Downloads/05/weew/WebSite/WebContent" + "/html/product-center/productNew_"+productCenterNew.getId()+".jsp");
		if(!page.exists() || flag){
			if(!page.getParentFile().exists()){
				page.getParentFile().mkdirs();
			}
			page.createNewFile();
			FileWriter fw = new FileWriter(page, false);
			BufferedWriter bw =  new BufferedWriter(new OutputStreamWriter(new FileOutputStream(page),"utf-8"));
			String s = new String(readProductCenterPage(productCenterNew, "D:/Downloads/05/weew/WebSite/WebContent"));
			bw.write(s);
			bw.flush();
			bw.close();
			fw.close();
		}
		log.debug("create : productNew_"+productCenterNew.getId()+".jsp");
	}
	
	public boolean delProductCenterPage(int id, HttpServletRequest request) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("/");
		File page = new File(path + "/html/product-center/productNew_"+id+".jsp");
		boolean flag = false;
		if (page.exists() && page.isFile()) {
			flag = page.delete();
		}
		return flag;
	}
	
	@SuppressWarnings("rawtypes")
	public String readProductCenterPage(ProductCenterNew productCenter, String path) throws IOException {
		StringBuilder pageStr = new StringBuilder();
		File page = new File(path + "/html/product-center/productTemplateNew.jsp");
		BufferedReader reader = new BufferedReader(new FileReader(page));
		String tempString = null;
        while ((tempString = reader.readLine()) != null) {
            pageStr.append(tempString);
        }
        reader.close();
        
        StringBuilder sb = new StringBuilder();
//        for(ProductCenterImg centerImg : productCenterImgs){
//        	sb.append("<li class=\"show-img\"><img class=\" \" src=\""+centerImg.getImgurl()+"\" alt=\"\"></li>");
//        }
//
		StringBuilder insethtml = new StringBuilder();
		String[] contenttitles = productCenter.getContenttitles().split("&");
		String[] contents = productCenter.getContents().split("&");
		String[] imageslist = productCenter.getImageslist().split("&");
		for (int i = 0 ; i < contenttitles.length ; i++){
			insethtml.append("<li>");
			insethtml.append("  <h3>"+contenttitles[i]+"</h3>");
			if(contents[i].indexOf("#") != -1){
				String[] contentss = contents[i].split("#");
				for (int j = 0 ; j < contentss.length ; j++){
					insethtml.append(" <p class=\"a-details-p\">"+contentss[j]+"</p>");
				}
			}else{
				insethtml.append(" <p>"+contents[i]+"</p>");
			}
			if (!imageslist[i].equals("/images/duofenIntroduction/plus.png")){
				insethtml.append(" <img src=\""+imageslist[i]+"\" class=\"a-details-img\">");
			}
			insethtml.append("</li>");
		}
		if(!productCenter.getQrcode().equals("/images/duofenIntroduction/plus.png")){
			insethtml.append("<li>\n" +
					"\t\t\t\t<h3>扫一扫，立即体验!</h3>\n" +
					"\t\t\t\t<div class=\"a-details-ewm\">");
			insethtml.append("<img src=\""+productCenter.getQrcode()+"\">\n" +
					"\t\t\t\t\t<p>"+productCenter.getPcname()+"</p>\n" +
					"\t\t\t\t</div>\n" +
					"\t\t\t</li>");
		}
//
        String s1 = "使用手册";
        String s2 = "相关推荐";
        String s3 = "产品详情";
        String s4 = "功能亮点";
        String s5 = "(扫描二维码体验)";
        String s6 = "类型";
        String s7 = "行业";
        String s8 = "所有";
        String s9 = "套餐";
        String s10 = "基础版及以上";
        String s11 = "当前位置";
        String s12 = "首页";
        String s13 = "产品中心";
        
		return pageStr.toString()
				.replace("@@page_title@@", productCenter.getPcpagetitle())
				.replace("@@meta@@",productCenter.getPcmeta())
				.replace("@@logo@@", productCenter.getLogourl())
				.replace("@@pcname@@", productCenter.getPcname())
				.replace("@@pcdesc@@", productCenter.getPcdesc())
//				.replace("@@pctypename@@", productCenter.getpc)
				.replace("@@imgs@@", sb.toString())
				.replace("@@shiyong@@", "(使用手册)")
				.replace("@@s2@@", s2)
				.replace("@@insethtml@@", insethtml)
				.replace("@@qrcode@@", productCenter.getQrcode());
//				.replace("@@vbtn@@", vbtn);
	}
	
	@SuppressWarnings({ "rawtypes" })
	@PostConstruct
	public void initProductPage() throws Exception {
		try {
			log.debug("产品静态文件生成检测");
			String path = this.getClass().getClassLoader().getResource("").getPath().substring(1).replace("WEB-INF/classes/", "");

			List pcs = new ArrayList();
			String sql = "select a.* from t_ws_product_center_new a ";
			pcs = iBaseDAO.queryForList(sql, new Object[]{});
			for (int i  = 0 ; i < pcs.size() ; i++ ){
				ProductCenterNew a = new ProductCenterNew();
                Map __p = (Map) pcs.get(i);
				a.setId(CommonUtil.toInteger(__p.get("id")));
                a.setClassid(CommonUtil.toInteger(__p.get("classid")));
                a.setContents(CommonUtil.isNotEmpty(__p.get("contents")) ? __p.get("contents").toString() : "");
                a.setContenttitles(CommonUtil.isNotEmpty(__p.get("contenttitles")) ? __p.get("contenttitles").toString() : "");
                a.setImageslist(CommonUtil.isNotEmpty(__p.get("imageslist")) ? __p.get("imageslist").toString() : "");
                a.setLogourl(CommonUtil.isNotEmpty(__p.get("logourl")) ? __p.get("logourl").toString() : "");
                a.setPcdesc(CommonUtil.isNotEmpty(__p.get("pcdesc")) ? __p.get("pcdesc").toString() : "");
                a.setPcmeta(CommonUtil.isNotEmpty(__p.get("pcmeta")) ? __p.get("pcmeta").toString() : "");
                a.setPcname(CommonUtil.isNotEmpty(__p.get("pcname")) ? __p.get("pcname").toString() : "");
                a.setPcpagetitle(CommonUtil.isNotEmpty(__p.get("pcpagetitle")) ? __p.get("pcpagetitle").toString() : "");
                a.setQrcode(CommonUtil.isNotEmpty(__p.get("qrcode")) ? __p.get("qrcode").toString() : "");
                createProductCenterPage(a, path, true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings({ "rawtypes" })
	@Override
	public void allReset(HttpServletRequest request) throws Exception {
		log.debug("产品静态文件重新生成");
		String path = this.getClass().getClassLoader().getResource("").getPath().substring(1).replace("WEB-INF/classes/", "");

        List pcs = new ArrayList();
        String sql = "select a.* from t_ws_product_center_new a ";
        pcs = iBaseDAO.queryForList(sql, new Object[]{});
        for (int i  = 0 ; i < pcs.size() ; i++ ){
            ProductCenterNew a = new ProductCenterNew();
            Map __p = (Map) pcs.get(i);
            a.setId(CommonUtil.toInteger(__p.get("id")));
            a.setClassid(CommonUtil.toInteger(__p.get("classid")));
            a.setContents(CommonUtil.isNotEmpty(__p.get("contents")) ? __p.get("contents").toString() : "");
            a.setContenttitles(CommonUtil.isNotEmpty(__p.get("contenttitles")) ? __p.get("contenttitles").toString() : "");
            a.setImageslist(CommonUtil.isNotEmpty(__p.get("imageslist")) ? __p.get("imageslist").toString() : "");
            a.setLogourl(CommonUtil.isNotEmpty(__p.get("logourl")) ? __p.get("logourl").toString() : "");
            a.setPcdesc(CommonUtil.isNotEmpty(__p.get("pcdesc")) ? __p.get("pcdesc").toString() : "");
            a.setPcmeta(CommonUtil.isNotEmpty(__p.get("pcmeta")) ? __p.get("pcmeta").toString() : "");
            a.setPcname(CommonUtil.isNotEmpty(__p.get("pcname")) ? __p.get("pcname").toString() : "");
            a.setPcpagetitle(CommonUtil.isNotEmpty(__p.get("pcpagetitle")) ? __p.get("pcpagetitle").toString() : "");
            a.setQrcode(CommonUtil.isNotEmpty(__p.get("qrcode")) ? __p.get("qrcode").toString() : "");
            createProductCenterPage(a, path, true);
        }
	}

}
