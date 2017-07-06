package com.gt.service.menu;

import java.util.List;
import java.util.Map;

import com.gt.model.menu.Menu;
import com.gt.model.user.User;

/**
 * 
 * @author psr
 *
 */
public interface IMenuService {

	/**
	 * 获取当前用户所属菜单
	 * @param user
	 * @return
	 * [
         {name:"首页", url:"test/index2.do", childName:"", childMenu:[]}, 
         {name:"客户案例", url:"${pageContext.request.contextPath}/customercase/list.action?pageIndex=1&pageSize=6"}, 
         {name:"合作加盟", url:"jsp/manage/cooperation/list.jsp"}, 
         {name:"多粉动态", url:"jsp/manage/article/index.jsp", childName:"MenuAbout", childMenu:[]},
             {name:"多粉动态", url:"jsp/manage/article/index.jsp", childName:"MenuAbout", childMenu:
        	 [{name:"产品更新"}, {name:"公司新闻", url:"jsp/manage/dynamic/test.jsp"}, {name:"企业动态"}, {name:"沙龙学堂"}]},  
         {name:"帮助中心", childName:"MenuHelp", childMenu:
        	 [{name:"多粉套餐"}, {name:"使用指南"}, {name:"员工查询"}]},
       	 {name:"加入我们（招聘信息）", url:"", childName:"", childMenu:[]},
       	 {name:"技术支持（问答）", url:"", childName:"QandA", childMenu:
       		 [{name:"技术支持菜单", url:"jsp/manage/technicalSupport/TSMenuIndex.jsp"}, 
       		  {name:"Q&A", url:"jsp/manage/technicalSupport/TSQ&AIndex.jsp"}]},
       	 {name:"使用手册", url:"", childName:"", childMenu:[]},
       	 {name:"代理商申请", url:"", childName:"", childMenu:[]},
       	 {name:"代理商查询", url:"", childName:"", childMenu:[]},
       	 {name:"员工查询", url:"", childName:"", childMenu:[]}
       	];
	 */
	public List<Map<String, Object>> getMenuByUser(User user);

	@SuppressWarnings("rawtypes")
	public List selectList(Map param);

	@SuppressWarnings("rawtypes")
	public int selectListCount(Map param);

	public int insert(Menu m);

	public int delete(Integer id);

	public int update(Menu m);
	
}
