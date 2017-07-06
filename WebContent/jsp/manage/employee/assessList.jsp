<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工列表</title>
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
	                        <div class="muted pull-left">评价列表</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                           	 <div class="rows">
	                           	 	<div class="span3">
		                              <div class="btn-group" style="visibility: hidden; ">
		                                 <a href="javascript:void(0);" onclick="gtView('jsp/manage/joinus/edit.jsp')">
		                                 	<button class="btn btn-success">新增 
		                                 		<i class="icon-plus icon-white"></i>
		                                 	</button>
		                                 </a>
		                              </div>
	                           	 	</div>
	                           	 	<div class="span3">
                             		<h3>工号：${employee.number }</h3>
	                           	 	</div>
	                           	 	<div class="span3">
                             		<h3>名称：${employee.name }</h3>
	                           	 	</div>
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
		initJsonTables({
			tableId: "example2",
			columns: [
			         {
			        	 name: "评价时间",
			        	 col: "createTime"
			         },
			         {
			        	 name: "仪容仪表分数",
			        	 col: "groomingnum"
			         }, 
			         {
			        	 name: "仪容仪表评价",
			        	 col: "groomingtext"
			         }, 
			         {
			        	 name: "表达能力分数",
			        	 col: "expressnum"
			         }, 
			         {
			        	 name: "表达能力评价",
			        	 col: "expresstext"
			         }, 
			         {
			        	 name: "服务态度分数",
			        	 col: "servicenum"
			         }, 
			         {
			        	 name: "服务态度评价",
			        	 col: "servicetext"
			         }, 
			         {
			        	 name: "专业知识评价分数",
			        	 col: "majornum"
			         }, 
			         {
			        	 name: "专业知识评价",
			        	 col: "majortext"
			         }, 
			         {
			        	 name: "查看",
			        	 col: "",
			        	 render: function(value){
			        		 return "<a id='btn' onclick='DelModel("+value.id+")' class='btn btn-success'>详情</a>&nbsp;"
			        		/*  +"<a class='btn btn-danger' onclick='deleteClick("+value.id+")'>评价</a>" */
			        		 ;
			        	 }
			         }
			        ],
			url: "employee/assessList?id=${id}",
			param: {}
		});
	});
	</script>
	<script type="text/javascript">
	function DelModel(id){
		$.ajax({
			url:"${pageContext.request.contextPath}/employee/assessListOne",
			data:{aId:id},
			type:"post",
			success:function(data){
				var assess = data.listOne;
				$("body").append("<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>"+"" +
						"<div class='modal-header'>" + 
						"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>×</button>" + 
						"<h3>评价详情</h3>" + 
						"</div>" +
						"<div class='modal-body'>" +
						"<div class='detailMsg alert alert-info'>"+
		                "<div class='detailItem'>"+
		                    "<label class='msgItem msgItem1'>仪容仪表分数 : "+assess.groomingnum+"</label>"+
		                "</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>仪容仪表评价 : "+assess.groomingtext+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>表达能力分数 : "+assess.expressnum+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>表达能力评价 : "+assess.expresstext+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>服务态度分数 : "+assess.servicenum+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>服务态度评价 : "+assess.servicetext+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>建议 : "+assess.propose+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>评价时间 : "+assess.createTime+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>专业知识评价分数 : "+assess.majornum+"</label>"+
	                	"</div>"+
		                "<div class='detailItem'>"+
	                    "<label class='msgItem msgItem1'>专业知识评价 : "+assess.majortext+"</label>"+
	                	"</div>"+
		            	"</div>"+
						"</div>" +
						"<div class='modal-footer'>" +
						"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>确认</a>" +
						"</div>" +
						"</div>");
				$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
			}
		});
	}
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<script src="templatelibs/vendors/datatables/js/jquery.dataTables.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
	<script src="templatelibs/assets/DT_bootstrap.js"></script>
</body>
</html>