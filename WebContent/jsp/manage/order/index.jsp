<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
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
	                        <div class="muted pull-left">订单</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <!-- <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/duofenIntroduction/companyEdit.jsp')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
	                                 </a>
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
			        	 name: "来源",
			        	 col: "source"
			         }, 
			         {
			        	 name: "联系人名",
			        	 col: "name"
			         }, 
			         {
			        	 name: "联系人电话",
			        	 col: "tel"
			         }, 
			         {
			        	 name: "购买套餐",
			        	 col: "typename",
			        	 render: function(value){
			        		 return value.typename == null ? "<span style='color: #f00;'>套餐已删除</span>" : value.typename;
			        	 }
			         }, 
			         {
			        	 name: "提交时间",
			        	 col: "submittime"
			         }, 
			         {
			        	 name: "付款时间",
			        	 col: "paymenttime"
			         }, 
			         {
			        	 name: "支付状态",
			        	 col: "paystatus",
			        	 render: function(value){
			        		 return value.paystatus == 0 ? "未支付" : "<span style='color: #4CAF50;font-weight: bold;'>已支付</span>";
			        	 }
			         }/* , 
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 return "<a class='btn btn-success' onclick='gtView(\"/jsp/manage/webOrder/edit.jsp?i="+value.id+"\")'>修改</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"webOrder/del\",{id:"+value.id+"}, \"/jsp/manage/webOrder/index.jsp\", $(this))'>删除</a>"; 
			        	 }
			         } */
			        ],
			url: "/webOrder/html/list",
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