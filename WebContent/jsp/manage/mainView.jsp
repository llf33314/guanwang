<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/manage/common/taglibs.jsp"%>
<%@ include file="/jsp/manage/common/templatelibs.jsp"%>
<%@ include file="/jsp/manage/common/utils.jsp"%>

<!DOCTYPE html>
<html lang="zh-CN">

    <head>
        <title>多粉官网后台管理系统</title>
        <link>
        <style type="text/css">
        	/* #mainView {
				width: 1245px;
				position: absolute;
			    right: 0;
			} */
        </style>
        <script type="text/javascript">
        	$(function(){
        		var a;
        		$.ajax({
          			type: 'POST',
          			url: path + "menu/getMenus.do",
          			dataType: 'json',
          			async : false, 
          			error: function(){
          				alert("获取菜单信息错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
          			},
          			success: function(data){
          				if(data.status == 0){
          					alert("链接超时，请重新登录");
          					window.location = path + "manage/index/toLogin.do";
          				}else{
          					a = data.menus;
          					var user = data.user;
          					$("#userName").html(user.userName);
          				}
          			}
          		});
        		/* var a = [
        		         {name:"首页", url:"test/index2.do", childName:"", childMenu:[]}, 
        		         {name:"客户案例", url:"${pageContext.request.contextPath}/customercase/list.action?pageIndex=1&pageSize=6"}, 
        		         {name:"合作加盟", url:"jsp/manage/cooperation/list.jsp"},  
        		         {name:"多粉动态", url:"jsp/manage/article/index.jsp", childName:"MenuAbout", childMenu:[]},
        		       	 {name:"加入我们（招聘信息）", url:"jsp/manage/joinus/index.jsp", childName:"", childMenu:[]},
        		       	 {name:"技术支持（问答）", url:"", childName:"QandA", childMenu:
        		       		 [{name:"技术支持菜单", url:"jsp/manage/technicalSupport/TSMenuIndex.jsp"}, 
        		       		  {name:"Q&A", url:"jsp/manage/technicalSupport/TSQ&AIndex.jsp"}]},
        		       	 {name:"使用手册", url:"/jsp/manage/manual/index.jsp", childName:"", childMenu:[]},
        		       	 {name:"代理商申请", url:"jsp/manage/agent/index.jsp", childName:"", childMenu:[]},
       		       	 	 {name:"代理商查询", url:"jsp/manage/agent/list.jsp", childName:"", childMenu:[]},
        		       	 {name:"员工查询", url:"", childName:"", childMenu:[]}
        		       	]; */
				setMenu(a);    
     		    gtView("test/index2.do");
     		    
     		    
     		    
     		    $('#mainMenu li').unbind('click').bind('click', function(){
     		    	$(this).find('a').toggleClass('collapsed');
     		    	$(this).find('.nav').slideToggle();
     		    	
     		    });
        	});
        	function setMenu(menuData){
        		var c = "";
        		for(var i=0;i<menuData.length;i++){
        			var a = "", dir = "down";
        			if(i == 0) a = "class='active'";
        			c += "<li "+a+">";
        			if(menuData[i].childName != null && menuData[i].childMenu.length != 0){
        				c += "<a href='#"+menuData[i].childName+"' data-toggle='collapse' data-parent='#mainMenu'>";
        			}else{
        				var d = "void(0)";
        				if(menuData[i].url != null && menuData[i].url != "") d = "gtView(\""+menuData[i].url+"\")";
        				c += "<a href='javascript:"+d+";'>";
        				dir = "right";
        			}
        			c += "<i class='icon-chevron-right icon-chevron-"+dir+"'></i> "+menuData[i].name;
        			c += "</a>";
        			if(menuData[i].childName != null && menuData[i].childMenu.length != 0){
        				var childm = menuData[i].childMenu;
	        			c += "<ul id='"+menuData[i].childName+"' class='nav nav-list collapse'>";
	        			for(var j=0;j<childm.length;j++){
	        				var b = "void(0)";
	        				if(childm[j].url != null && childm[j].url != "") b = "gtView(\""+childm[j].url+"\")";
		        			c += "<li><a href='javascript:"+b+";'>"+childm[j].name+"</a></li>";
	        			}
		        		c += "</ul>";
        			}
        			c += "</li>";
        		}
        		$("#mainMenu").html(c);
        	}
        </script>
       	<script type="text/javascript">
       		//导航栏点击改变选中的样式
       		$(function(){
       			$("#mainMenu li").click(function(){
       				$("#mainMenu li").removeClass("active");
					$(this).addClass("active");
       			});
       		});
       	</script>
       	
       
    </head>
    
    <body>
    	<!-- 头部导航栏 -->
    	<div class="navbar navbar-fixed-top">
		    <div class="navbar-inner">
		        <div class="container-fluid">
		            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
		             <span class="icon-bar"></span>
		            </a>
		            <a class="brand" href="#">多粉官网后台管理系统</a>
		            <div class="nav-collapse collapse">
		                <ul class="nav pull-right">
		                    <li class="dropdown">
		                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> 
		                        	<i class="icon-user"></i><span id="userName">用户名</span><i class="caret"></i>
		                        </a>
		                        <ul class="dropdown-menu">
		                        	<li>
		                                <a href="#modifyPWDModal" data-toggle="modal">修改密码</a>
		                            </li>
		                            <li class="divider"></li>
		                            <li>
		                                <a href="/user/loginOut.do">注销</a>
		                            </li>
		                        </ul>
		                    </li>
		                </ul>
		                <ul class="nav">
		                    <li class="active">
		                        <a>首页</a>
		                    </li>
		                </ul>
		            </div>
		            <!--/.nav-collapse -->
		        </div>
		    </div>
		</div>
    	
    	<!-- 内容开始 -->
    	<div class="container-fluid">
        <div class="row-fluid">
        
    	<!-- 左部导航栏 -->
    	<div class="span2 navbar-static-top">
		    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse" id="mainMenu">
		    </ul>
		</div>
    	
    	<!-- 主要内容 -->
        <div id="mainView" class="span10">
			<!-- load 内容 -->	
        </div>
        
        </div>
        </div>
	
		<!-- <footer class="container">
        	<p class="text-center">Copyright © 2015. 粤ICP备15016183号-3. 经营许可证编号：粤B2-20150533 广东谷通科技有限公司</p>
        </footer> -->

		<!-- 修改密码 -->
		<%@ include file="/jsp/manage/user/modifyPWD.jsp"%>
		
    </body>
	
</html>