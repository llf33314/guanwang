<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>技术支持</title>
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
	                        <div class="muted pull-left">技术支持</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('jsp/manage/technicalSupport/TSMenuEdit.jsp')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
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
			        	 name: "菜单等级",
			        	 col: "tsLevel",
			        	 render: function(value){
			        		switch (value.tsLevel) {
								case 1:return "一级";
								case 2:return "二级";
							}
			        	 }
			         }, 
			         {
			        	 name: "父级菜单名",
			        	 col: "pName",
			        	 render: function(value){
			        		if (value.pName == null) return "";
			        		else return value.pName;
			        	 }
			         }, 
			         {
			        	 name: "菜单名",
			        	 col: "tsName"
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
			        		 return "<a class='btn btn-success' onclick='gtView(\"jsp/manage/technicalSupport/TSMenuEdit.jsp?i="+value.id+"\")'>修改</a>&nbsp;" +
			        		 	"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"technicalSupport/delMenu\",{id:"+value.id+"}, \"/jsp/manage/technicalSupport/TSMenuIndex.jsp\", $(this))'>删除</a>"; 
			        	 }
			         }
			        ],
			url: "/technicalSupport/html/menuList",
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