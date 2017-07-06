package com.gt.service.productCenter.impl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gt.dao.IBaseDAO;
import com.gt.model.productCenter.ProductCenter;
import com.gt.model.productCenter.ProductCenterBottomImg;
import com.gt.model.productCenter.ProductCenterImg;
import com.gt.model.productCenter.ProductCenterType;
import com.gt.model.productCenter.ProductCenterVbtn;
import com.gt.service.productCenter.ProductCenterService;

@Service(value="productCenterServiceImpl")
public class ProductCenterServiceImpl implements ProductCenterService {
	
	Logger log = Logger.getLogger(getClass());
	
	@Autowired
	private IBaseDAO iBaseDAO;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id where 1=1 ");
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
		sql.append("select (a.id) from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id where 1=1 ");
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
	public int insert(ProductCenter a, List<ProductCenterImg> b, HttpServletRequest request) throws Exception {
		iBaseDAO.save(a);
		for(ProductCenterImg c : b){
			c.setProductid(a.getId());
			iBaseDAO.save(c);
		}
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder sql = new StringBuilder();
		sql.append("select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(sql.toString(), a.getId()).get(0);
//		createProductCenterPage(_a, b, path, true);
		return 1;
	}
	
	@Transactional
	@Override
	public int delete(Integer id, HttpServletRequest request) throws Exception {
		String sql = "delete from t_ws_product_center_img where productid = ?";
		iBaseDAO.update(sql, id);
		sql = "delete from t_ws_product_center_vbtn where productid = ?";
		iBaseDAO.update(sql, id);
		sql = "delete from t_ws_product_center where id = ?";
		int i = iBaseDAO.update(sql, id);
		delProductCenterPage(id, request);
		return i;
	}
	
	@SuppressWarnings({ "rawtypes", "unused" })
	@Transactional
	@Override
	public int update(ProductCenter a, List<ProductCenterImg> b, HttpServletRequest request) throws Exception {
		iBaseDAO.update(a);
		String sql = "delete from t_ws_product_center_img where productid = ?";
		iBaseDAO.update(sql, a.getId());
		for(ProductCenterImg c : b){
			iBaseDAO.save(c);
		}
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder _sql = new StringBuilder();
		_sql.append("select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(_sql.toString(), a.getId()).get(0);
//		createProductCenterPage(_a, b, path, true);
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
	public int insert(ProductCenter a, List<ProductCenterImg> b, List<ProductCenterVbtn> d, HttpServletRequest request) throws Exception {
		iBaseDAO.save(a);
		for(ProductCenterImg c : b){
			c.setProductid(a.getId());
			iBaseDAO.save(c);
		}
		for(ProductCenterVbtn e : d){
			e.setProductid(a.getId());
			iBaseDAO.save(e);
		}
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder sql = new StringBuilder();
		sql.append("select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(sql.toString(), a.getId()).get(0);
		createProductCenterPage(_a, b, d, path, true);
		return 1;
	}
	
	@Transactional
	@SuppressWarnings("rawtypes")
	@Override
	public int update(ProductCenter a, List<ProductCenterImg> b, List<ProductCenterVbtn> d, HttpServletRequest request) throws Exception {
		iBaseDAO.update(a);
		String sql = "delete from t_ws_product_center_img where productid = ?";
		iBaseDAO.update(sql, a.getId());
		for(ProductCenterImg c : b){
			iBaseDAO.save(c);
		}
		String sql2 = "delete from t_ws_product_center_vbtn where productid = ?";
		iBaseDAO.update(sql2, a.getId());
		for(ProductCenterVbtn e : d){
			e.setProductid(a.getId());
			iBaseDAO.save(e);
		}
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder _sql = new StringBuilder();
		_sql.append("select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(_sql.toString(), a.getId()).get(0);
		createProductCenterPage(_a, b, d, path, true);
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
		String sql = "delete from t_ws_product_center_type where id = ?";
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
	public void createProductCenterPage(Map productCenter, List<ProductCenterImg> productCenterImgs, 
			List<ProductCenterVbtn> productCenterVbtns, String path, boolean flag) throws IOException {
		File page = new File(path + "/html/product-center/product_"+productCenter.get("id")+".jsp");
		if(!page.exists() || flag){
			if(!page.getParentFile().exists()){
				page.getParentFile().mkdirs();
			}
			page.createNewFile();
			FileWriter fw = new FileWriter(page, false);
			BufferedWriter bw =  new BufferedWriter(new OutputStreamWriter(new FileOutputStream(page),"utf-8"));
			String s = new String(readProductCenterPage(productCenter, productCenterImgs, productCenterVbtns, path));
			bw.write(s);
			bw.flush();
			bw.close();
			fw.close();
		}
		log.debug("create : product_"+productCenter.get("id")+".jsp");
	}
	
	public boolean delProductCenterPage(int id, HttpServletRequest request) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("/");
		File page = new File(path + "/html/product-center/product_"+id+".jsp");
		boolean flag = false;
		if (page.exists() && page.isFile()) {
			flag = page.delete();
		}
		return flag;
	}
	
	@SuppressWarnings("rawtypes")
	public String readProductCenterPage(Map productCenter, List<ProductCenterImg> productCenterImgs, 
			List<ProductCenterVbtn> productCenterVbtns, String path) throws IOException {
		StringBuilder pageStr = new StringBuilder();
		File page = new File(path + "/html/product-center/productTemplate.jsp");
		BufferedReader reader = new BufferedReader(new FileReader(page));
		String tempString = null;
        while ((tempString = reader.readLine()) != null) {
            pageStr.append(tempString);
        }
        reader.close();
        
        StringBuilder sb = new StringBuilder();
        for(ProductCenterImg centerImg : productCenterImgs){
        	sb.append("<li class=\"show-img\"><img class=\" \" src=\""+centerImg.getImgurl()+"\" alt=\"\"></li>");
        }
        
        StringBuilder vbtn = new StringBuilder();
        for(ProductCenterVbtn Vbtns : productCenterVbtns){
        	vbtn.append("<input type=\"button\" value=\""+Vbtns.getBtnname()+"\" onclick='WSFUNCTION.videoFrame(\""+Vbtns.getVlink()+"\");'/>");
        }
        
        String s1 = "使用手册";
        String s2 = "相关推荐";
        String s3 = "产品详情";
        String s4 = "功能亮点";
        String s5 = "(扫描二维码体验)";
        if("".equals(productCenter.get("qrcode").toString()) || productCenter.get("qrcode") == null) s5 = "";
        String s6 = "类型";
        String s7 = "行业";
        String s8 = "所有";
        String s9 = "套餐";
        String s10 = "基础版及以上";
        String s11 = "当前位置";
        String s12 = "首页";
        String s13 = "产品中心";
        
		return pageStr.toString()
				.replace("@@page_title@@", productCenter.get("pcpagetitle").toString())
				.replace("@@meta@@", productCenter.get("pcmeta").toString())
				.replace("@@logo@@", productCenter.get("logourl").toString())
				.replace("@@pcname@@", productCenter.get("pcname").toString())
				.replace("@@pcdesc@@", productCenter.get("pcdesc").toString())
				.replace("@@pctypename@@", productCenter.get("pctypename").toString())
				.replace("@@pcdetail@@", productCenter.get("pcdetail").toString())
				.replace("@@pcfeatures@@", productCenter.get("pcfeatures").toString())
				.replace("@@imgs@@", sb.toString())
				.replace("@@qrcode@@", productCenter.get("qrcode").toString())
				.replace("@@s1@@", s1)
				.replace("@@s2@@", s2)
				.replace("@@s3@@", s3)
				.replace("@@s4@@", s4)
				.replace("@@s5@@", s5)
				.replace("@@s6@@", s6)
				.replace("@@s7@@", s7)
				.replace("@@s8@@", s8)
				.replace("@@s9@@", s9)
				.replace("@@s10@@", s10)
				.replace("@@s11@@", s11)
				.replace("@@s12@@", s12)
				.replace("@@s13@@", s13)
				.replace("@@vbtn@@", vbtn);
	}
	
	@SuppressWarnings({ "rawtypes" })
	@PostConstruct
	public void initProductPage() throws Exception {
		try {
			log.debug("产品静态文件生成检测");
			String path = this.getClass().getClassLoader().getResource("").getPath().substring(1).replace("WEB-INF/classes/", "");
			
			List pcs = new ArrayList();
			List pcis = new ArrayList();
			List pcb = new ArrayList();
			String sql = "select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id";
			pcs = iBaseDAO.queryForList(sql, new Object[]{});
			sql = "SELECT * FROM t_ws_product_center_img b";
			pcis = iBaseDAO.queryForList(sql, new Object[]{});
			sql = "SELECT * FROM t_ws_product_center_vbtn d";
			pcb = iBaseDAO.queryForList(sql, new Object[]{});
			
			for(Object a : pcs){
				Map _a = (Map) a;
				List<ProductCenterImg> b = new ArrayList<ProductCenterImg>();
				List<ProductCenterVbtn> d = new ArrayList<ProductCenterVbtn>();
				for(Object p : pcis){
					Map __p = (Map) p;
					if(_a.get("id").equals(__p.get("productid"))){
						ProductCenterImg _p = new ProductCenterImg();
						_p.setImgurl(__p.get("imgurl").toString());
						b.add(_p);
					}
				}
				for(Object p : pcb){
					Map __p = (Map) p;
					if(_a.get("id").equals(__p.get("productid"))){
						ProductCenterVbtn _p = new ProductCenterVbtn();
						_p.setBtnname(__p.get("btnname").toString());
						_p.setVlink(__p.get("vlink").toString());
						d.add(_p);
					}
				}
				createProductCenterPage(_a, b, d, path, false);
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
		List pcis = new ArrayList();
		List pcb = new ArrayList();
		String sql = "select b.pctypename, a.* from t_ws_product_center a join t_ws_product_center_type b on a.classid=b.id";
		pcs = iBaseDAO.queryForList(sql, new Object[]{});
		sql = "SELECT * FROM t_ws_product_center_img b";
		pcis = iBaseDAO.queryForList(sql, new Object[]{});
		sql = "SELECT * FROM t_ws_product_center_vbtn d";
		pcb = iBaseDAO.queryForList(sql, new Object[]{});
		
		for(Object a : pcs){
			Map _a = (Map) a;
			List<ProductCenterImg> b = new ArrayList<ProductCenterImg>();
			List<ProductCenterVbtn> d = new ArrayList<ProductCenterVbtn>();
			for(Object p : pcis){
				Map __p = (Map) p;
				if(_a.get("id").equals(__p.get("productid"))){
					ProductCenterImg _p = new ProductCenterImg();
					_p.setImgurl(__p.get("imgurl").toString());
					b.add(_p);
				}
			}
			for(Object p : pcb){
				Map __p = (Map) p;
				if(_a.get("id").equals(__p.get("productid"))){
					ProductCenterVbtn _p = new ProductCenterVbtn();
					_p.setBtnname(__p.get("btnname").toString());
					_p.setVlink(__p.get("vlink").toString());
					d.add(_p);
				}
			}
			createProductCenterPage(_a, b, d, path, true);
		}
	}

}
