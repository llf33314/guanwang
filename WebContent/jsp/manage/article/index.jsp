<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多粉动态</title>
<style type="text/css">

</style>
</head>
<body>
	<div class="container-fluid">
	    <div class="row-fluid">
	        <!--/span-->
	        <div class="span12" id="content">
	             
	             <div class="row-fluid">
	                <!-- block -->
	                <div class="block">
	                    <div class="navbar navbar-inner block-header">
	                        <div class="muted pull-left">多粉动态</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('jsp/manage/article/edit.jsp')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
	                                 </a>
	                                 <a href="javascript:void(0);" onclick="allReset()" style="margin-left: 10px;">
	                                 	<button class="btn btn-primary">重新生成文件</button>
	                                 </a>
	                              </div>
	                              <!-- <div class="btn-group pull-right">
	                                 <button data-toggle="dropdown" class="btn dropdown-toggle">
	                                 	Tools <span class="caret"></span>
	                                 </button>
	                                 <ul class="dropdown-menu">
	                                    <li><a href="#">Print</a></li>
	                                    <li><a href="#">Save as PDF</a></li>
	                                    <li><a href="#">Export to Excel</a></li>
	                                 </ul>
	                              </div> -->
	                           </div>
	                            
	                            <table cellpadding="0" cellspacing="0" border="0" 
	                            	class="table table-striped table-bordered" id="example2">
	                            </table>
	                        </div>
	                    </div>
	                </div>
	                <!-- /block -->
	            </div>
	        </div>
	    </div>
	    
	</div>
	<!--/.fluid-container-->
	<script>
	$(function() {
		WSFUNCTION.initTables({
			tableId: "example2",
			columns: [
			         {
			        	 name: "类型",
			        	 col: "article_type",
			        	 render: function(value){
			        		switch (value.article_type) {
								case 0:return "行业动态";
								case 1:return "产品更新";
								case 2:return "公司新闻";
								case 3:return "沙龙学院";
								case 4:return "公告";
							}
			        	 }
			         }, 
			         {
			        	 name: "文章标题/公告内容",
			        	 col: "title"
			         }, 
			         {
			        	 name: "创建人",
			        	 col: "creater"
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "createtime",
			        	 render: function(value){
			        		 var d = new Date(value.createtime.time);
			        		 return d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+
			        		 	d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
			        	 }
			         }, 
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 //return "<a href='javascript:void(0);' onclick='del(\"article/del\",{id:"+value.id+"})'>删除</a>";
			        		 return "<a class='btn btn-success' onclick='gtView(\"jsp/manage/article/edit.jsp?i="+value.id+"\")'>修改</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"article/del\",{id:"+value.id+"}, \"/jsp/manage/article/index.jsp\", $(this));'>删除</a>";
			        	 }
			         }
			        ],
			url: "article/html/list",
			param: {}
		});
	});
	
	function allReset(){
		$.ajax({
			url: "/article/allReset", 
			type: "POST",
			async: false,
			data: {},
			success: function(data){
				var d = eval("("+data+")");
				if(d.status == 1){
					WSFUNCTION.msgBox("信息", d.msg);
				}else{
					WSFUNCTION.msgBox("信息", d.msg);
				}
			},
			error: function(){
				WSFUNCTION.msgBox("信息", "网络繁忙!");
			}
		});
	}
	
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<!-- <script src="templatelibs/bootstrap/js/bootstrap.min.js"></script> -->
	<script src="templatelibs/vendors/datatables/js/jquery.dataTables.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
	<script src="templatelibs/assets/DT_bootstrap.js"></script>
</body>
</html>