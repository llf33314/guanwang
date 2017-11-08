package com.gt.service.operationCourse.impl;

import com.gt.dao.IBaseDAO;
import com.gt.model.operationCourse.OperationCourse;
import com.gt.model.operationCourse.OperationCourseTeacher;
import com.gt.service.operationCourse.OperationCourseService;
import com.gt.utils.CommonUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service(value="operationCourseServiceImpl")
public class OperationCourseServiceImpl implements OperationCourseService {

	Logger log = Logger.getLogger(getClass());

	@Autowired
	private IBaseDAO iBaseDAO;

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select b.teachername, a.* from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("teacherid") != null){
			sql.append("and a.teacherid = ? ");
			params.add(param.get("teacherid"));
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
		sql.append("select (a.id) from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id where 1=1 ");
		if(param.get("id") != null){
			sql.append("and a.id = ? ");
			params.add(param.get("id"));
		}
		if(param.get("teacherid") != null){
			sql.append("and a.teacherid = ? ");
			params.add(param.get("teacherid"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}

	@SuppressWarnings({ "rawtypes", "unused" })
	@Transactional
	@Override
	public int insert(OperationCourse a,  HttpServletRequest request) throws Exception {
		iBaseDAO.save(a);
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder sql = new StringBuilder();
		sql.append("select b.teachername,b.teacherdesc,b.teacherimg, a.* from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(sql.toString(), a.getId()).get(0);
		a.setTeacherdesc(_a.get("teacherdesc").toString());
		a.setTeacherimg(_a.get("teacherimg").toString());
		a.setTeachername(_a.get("teachername").toString());
		createProductCenterPage(a, path, true);
//		createProductCenterPage(a, "D:/Downloads/05/weew/WebSite/WebContent", true);
		return 1;
	}

	@Transactional
	@Override
	public int delete(Integer id, HttpServletRequest request) throws Exception {
		String sql = "delete from t_ws_operation_course where id = ?";
		int i = iBaseDAO.update(sql, id);
		delProductCenterPage(id, request);
		return i;
	}

	@SuppressWarnings({ "rawtypes", "unused" })
	@Transactional
	@Override
	public int update(OperationCourse a, HttpServletRequest request) throws Exception {
		iBaseDAO.update(a);
		String path = request.getSession().getServletContext().getRealPath("/");
		StringBuilder sql = new StringBuilder();
		sql.append("select b.teachername,b.teacherdesc,b.teacherimg, a.* from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id where a.id = ?");
		Map _a = (Map) iBaseDAO.queryForList(sql.toString(), a.getId()).get(0);
		a.setTeacherdesc(_a.get("teacherdesc").toString());
		a.setTeacherimg(_a.get("teacherimg").toString());
		a.setTeachername(_a.get("teachername").toString());
		createProductCenterPage(a,path, true);
//		createProductCenterPage(a, "D:/Downloads/05/weew/WebSite/WebContent", true);
		return 1;
	}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectTypeList(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select * from t_ws_operation_course_teacher where 1=1 ");
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
		sql.append("select count(id) from t_ws_operation_course_teacher where 1=1 ");
		if(param.get("id") != null){
			sql.append("and id = ? ");
			params.add(param.get("id"));
		}
		int pageSize = Integer.valueOf(param.get("pageSize").toString());
		Long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (i.intValue() + pageSize - 1) / pageSize;
	}

	@Override
	public int insertType(OperationCourseTeacher a) {
		iBaseDAO.save(a);
		return 1;
	}

	@Override
	public int deleteType(Integer id) {
		String sql = "delete from t_ws_operation_course_teacher where id = ?";
		int i = iBaseDAO.update(sql, id);
		return i;
	}

	@Override
	public int updateType(OperationCourseTeacher a) {
		iBaseDAO.update(a);
		return 1;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@SuppressWarnings("rawtypes")
	public void createProductCenterPage(OperationCourse operationCourse, String path, boolean flag) throws IOException {
		File page = new File(path + "/html/operationCourse/operationCourse_"+operationCourse.getId()+".jsp");
		if(!page.exists() || flag){
			if(!page.getParentFile().exists()){
				page.getParentFile().mkdirs();
			}
			page.createNewFile();
			FileWriter fw = new FileWriter(page, false);
			BufferedWriter bw =  new BufferedWriter(new OutputStreamWriter(new FileOutputStream(page),"utf-8"));
			String s = new String(readProductCenterPage(operationCourse, path));
			bw.write(s);
			bw.flush();
			bw.close();
			fw.close();
		}
		log.debug("create : operationCourse__"+operationCourse.getId()+".jsp");
	}

	public boolean delProductCenterPage(int id, HttpServletRequest request) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("/");
		File page = new File(path + "/html/operationCourse/operationCourse_"+id+".jsp");
		boolean flag = false;
		if (page.exists() && page.isFile()) {
			flag = page.delete();
		}
		return flag;
	}

	@SuppressWarnings("rawtypes")
	public String readProductCenterPage(OperationCourse operationCourse, String path) throws IOException {
		StringBuilder pageStr = new StringBuilder();
		File page = new File(path + "/html/operationCourse/operationTemplate.jsp");
		BufferedReader reader = new BufferedReader(new FileReader(page));
		String tempString = null;
        while ((tempString = reader.readLine()) != null) {
            pageStr.append(tempString);
        }
        reader.close();

		StringBuilder insethtml = new StringBuilder();
		String[] contents = operationCourse.getContents().split("&");
		String[] imageslist = operationCourse.getImageslist().split("&");
		String[] videolist = operationCourse.getVideolist().split(",");
		for (int i = 0 ; i < contents.length ; i++){
			if (CommonUtil.isNotEmpty(contents[i])){
					insethtml.append("<div class=\"art-content-text\">");
					insethtml.append(contents[i]);
					insethtml.append("</div>");
			}
			if (!imageslist[i].equals("/images/duofenIntroduction/plus.png")){
				insethtml.append(" <div class=\"art-content-img\">");
				insethtml.append("<img src=\""+imageslist[i]+"\"/>");
				insethtml.append(" </div>");
			}
			if ( videolist.length != 0 && i < videolist.length && CommonUtil.isNotEmpty(videolist[i])){
				insethtml.append(" <div class=\"art-content-img\">");
//				insethtml.append(" <video preload=\"none\" controls width=100% height=\"500\"  style=\"background-color: #000\">");
//				insethtml.append(" <source src=\""+videolist[i]+"\" type=\"video/mp4\">");
//				insethtml.append("</video>");
				insethtml.append(videolist[i]);
				insethtml.append(" </div>");
			}
		}
        String s1 = "授课讲师";
        String s2 = "讲师的其他课程:";
        String s3 = "最新推荐";
        String s4 = "下一篇";
        String s5 = "上一篇";
        String s6 = "暂无其他课程";
		return pageStr.toString()
   			    .replace("@@page_title@@", operationCourse.getPcdesc())
				.replace("@@meta@@",operationCourse.getPcdesc())
				.replace("@@logo@@", operationCourse.getLogourl())
				.replace("@@contenttitles@@", operationCourse.getContenttitles())
				.replace("@@pcdesc@@", operationCourse.getPcdesc())
				.replace("@@createtime@@",operationCourse.getCreatetime().substring(0,10))
				.replace("@@teachername@@", operationCourse.getTeachername())
				.replace("@@teacherdesc@@", operationCourse.getTeacherdesc())
				.replace("@@id@@", operationCourse.getId().toString())
				.replace("@@teacherid@@", operationCourse.getTeacherid().toString())
				.replace("@@teacherimg@@", operationCourse.getTeacherimg())
				.replace("@@s1@@", s1)
				.replace("@@s2@@", s2)
				.replace("@@s3@@", s3)
				.replace("@@s4@@", s4)
				.replace("@@s5@@", s5)
				.replace("@@s6@@", s6)
				.replace("@@insethtml@@", insethtml);
	}

	@SuppressWarnings({ "rawtypes" })
	@PostConstruct
	public void initProductPage() throws Exception {
		try {
			log.debug("产品静态文件生成检测");
			String path = this.getClass().getClassLoader().getResource("").getPath().substring(1).replace("WEB-INF/classes/", "");

			List pcs = new ArrayList();
			String sql = "select b.teachername,b.teacherdesc,b.teacherimg, a.* from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id ";
			pcs = iBaseDAO.queryForList(sql, new Object[]{});
			for (int i  = 0 ; i < pcs.size() ; i++ ){
				OperationCourse a = new OperationCourse();
                Map __p = (Map) pcs.get(i);
				a.setId(CommonUtil.toInteger(__p.get("id")));
                a.setTeacherid(CommonUtil.toInteger(__p.get("teacherid")));
                a.setContents(CommonUtil.isNotEmpty(__p.get("contents")) ? __p.get("contents").toString() : "");
                a.setContenttitles(CommonUtil.isNotEmpty(__p.get("contenttitles")) ? __p.get("contenttitles").toString() : "");
                a.setImageslist(CommonUtil.isNotEmpty(__p.get("imageslist")) ? __p.get("imageslist").toString() : "");
                a.setLogourl(CommonUtil.isNotEmpty(__p.get("logourl")) ? __p.get("logourl").toString() : "");
                a.setPcdesc(CommonUtil.isNotEmpty(__p.get("pcdesc")) ? __p.get("pcdesc").toString() : "");
                a.setApplystate(CommonUtil.toInteger(__p.get("applystate")));
                a.setApplydesc(CommonUtil.isNotEmpty(__p.get("applydesc")) ? __p.get("applydesc").toString() : "");
                a.setApplycount(CommonUtil.toInteger(__p.get("applycount")));
                a.setVideolist(CommonUtil.isNotEmpty(__p.get("videolist")) ? __p.get("videolist").toString() : "");
				a.setTeacherdesc(__p.get("teacherdesc").toString());
				a.setTeacherimg(__p.get("teacherimg").toString());
				a.setTeachername(__p.get("teachername").toString());
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
        String sql = "select b.teachername,b.teacherdesc,b.teacherimg, a.* from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id ";
        pcs = iBaseDAO.queryForList(sql, new Object[]{});
        for (int i  = 0 ; i < pcs.size() ; i++ ){
			OperationCourse a = new OperationCourse();
			Map __p = (Map) pcs.get(i);
			a.setId(CommonUtil.toInteger(__p.get("id")));
			a.setTeacherid(CommonUtil.toInteger(__p.get("teacherid")));
			a.setContents(CommonUtil.isNotEmpty(__p.get("contents")) ? __p.get("contents").toString() : "");
			a.setContenttitles(CommonUtil.isNotEmpty(__p.get("contenttitles")) ? __p.get("contenttitles").toString() : "");
			a.setImageslist(CommonUtil.isNotEmpty(__p.get("imageslist")) ? __p.get("imageslist").toString() : "");
			a.setLogourl(CommonUtil.isNotEmpty(__p.get("logourl")) ? __p.get("logourl").toString() : "");
			a.setPcdesc(CommonUtil.isNotEmpty(__p.get("pcdesc")) ? __p.get("pcdesc").toString() : "");
			a.setApplystate(CommonUtil.toInteger(__p.get("applystate")));
			a.setApplydesc(CommonUtil.isNotEmpty(__p.get("applydesc")) ? __p.get("applydesc").toString() : "");
			a.setApplycount(CommonUtil.toInteger(__p.get("applycount")));
			a.setVideolist(CommonUtil.isNotEmpty(__p.get("videolist")) ? __p.get("videolist").toString() : "");
			a.setTeacherdesc(__p.get("teacherdesc").toString());
			a.setTeacherimg(__p.get("teacherimg").toString());
			a.setTeachername(__p.get("teachername").toString());
			createProductCenterPage(a, path, true);
        }
	}


	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public int selectListCount1(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select count(a.id) from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id where 1=1 ");
		if(param.get("pcdesc") != null){
			sql.append("and a.pcdesc like ? ");
			params.add("%"+param.get("pcdesc")+"%");
		}
		long i = iBaseDAO.countsql(sql.toString(), params.toArray());
		return (int)i;
	}


	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List selectList1(Map param) {
		StringBuilder sql = new StringBuilder();
		List params = new ArrayList();
		sql.append("select b.teachername,b.teacherdesc,b.teacherimg, a.* from t_ws_operation_course a join t_ws_operation_course_teacher b on a.teacherid=b.id where 1=1 ");
		if(param.get("pcdesc") != null){
			sql.append("and a.pcdesc like ? ");
			params.add("%"+param.get("pcdesc")+"%");
		}
		sql.append("order by a.id desc, a.createtime desc ");
		if(param.get("page") != null){
			sql.append("limit ?,?");
			params.add(param.get("page"));
			params.add(param.get("pageSize"));
		}
		return iBaseDAO.queryForList(sql.toString(), params.toArray());
	}

}
