<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>案例中心</title>
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
	                        <div class="muted pull-left">案例中心</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/caseCenter/caseEdit.jsp')">
	                                 	<button class="btn btn-success">新增 <i class="icon-plus icon-white"></i></button>
	                                 </a>
	                              </div>
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/caseCenter/caseClassIndex.jsp')">
	                                 	<button class="btn btn-primary">分类列表</button>
	                                 </a>
	                              </div>
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
			        	 name: "分类",
			        	 col: "classname"
			         }, 
			         {
			        	 name: "描述",
			        	 col: "casedesc"
			         }, 
			         {
			        	 name: "侧边图片",
			        	 col: "descimg",
			        	 render: function(value){
			        		 return "<img src='"+value.descimg+"' style='height: 50px;'/>";
			        	 }
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "createtime"
			         }, 
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 return "<a class='btn btn-success' onclick='gtView(\"/jsp/manage/caseCenter/caseEdit.jsp?i="+value.id+"\")'>修改</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"caseCenter/del\",{id:"+value.id+"}, "
			        		 			+"\"/jsp/manage/caseCenter/caseIndex.jsp\", $(this))'>删除</a>"; 
			        	 }
			         }
			        ],
			url: "/caseCenter/html/list",
			param: {}
		});
		
	});
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<!-- <script src="templatelibs/bootstrap/js/bootstrap.min.js"></script> -->
	<script src="templatelibs/vendors/datatables/js/jquery.dataTables.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
	<script src="templatelibs/assets/DT_bootstrap.js"></script>
</body>
</html>