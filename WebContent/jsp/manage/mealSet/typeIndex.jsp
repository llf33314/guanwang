<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>套餐</title>
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
	                        <div class="muted pull-left">套餐</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/mealSet/typeEdit.jsp')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
	                                 </a>
	                              </div>
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/mealSet/index.jsp')">
	                                 	<button class="btn btn-primary">返回</button>
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
			        	 name: "套餐名",
			        	 col: "typename"
			         }, 
			         {
			        	 name: "价格",
			        	 col: "setprice"
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "createtime"
			         }, 
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 if(value.typename == '基础版' || value.typename == '升级版' || value.typename == '高级版' || value.typename == '至尊版' || value.typename == '白金版' || value.typename == '钻石版')
			        			 return "<a class='btn btn-success' onclick='gtView(\"/jsp/manage/mealSet/typeEdit.jsp?i="+value.id+"\")'>修改</a>&nbsp;";
				        	 else
			        		 	return "<a class='btn btn-success' onclick='gtView(\"/jsp/manage/mealSet/typeEdit.jsp?i="+value.id+"\")'>修改</a>&nbsp;"+
			        		 		"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"mealSet/typeDel\",{id:"+value.id+"}, \"/jsp/manage/mealSet/typeIndex.jsp\", $(this))'>删除</a>"; 
			        	 }
			         }
			        ],
			url: "/mealSet/html/typeList",
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