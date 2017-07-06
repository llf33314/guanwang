<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入我们</title>
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
	                        <div class="muted pull-left">加入我们</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('jsp/manage/joinus/edit.jsp')">
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
		initJsonTables({
			tableId: "example2",
			columns: [
			         /* {
			        	 name: "标题",
			        	 col: "title"
			         },  */
			         {
			        	 name: "图片源名字",
			        	 col: "originalFilename"
			         }, 
			         {
			        	 name: "是否选中",
			        	 col: "",
			        	 render: function(value){
			        		var status = value.status;
			        		if(status == 1){
			        			return "是";
			        		}else {
				        		return "否";
			        		}
			        	 }
			         }, 
			         {
			        	 name: "创建人",
			        	 col: "creater",
			        	 render:function(value){
			        		 var creater = value.creater;
			        		 if(creater == null || creater == undefined){
			        			 return "";
			        		 }
			        		 return creater;
			        	 }
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "createtime",
			        	 render: function(value){
			        		 var d = new Date(value.createtime);
			        		 return d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+
			        		 	d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
			        	 }
			         }, 
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 //return "<a href='javascript:void(0);' onclick='del(\"article/del\",{id:"+value.id+"})'>删除</a>";
			        		 return "<a class='btn btn-success' onclick='gtView(\"joinus/editPre.action?id="+value.id+"\")'>修改</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='deleteClick("+value.id+")'>删除</a>";
			        	 }
			         }
			        ],
			url: "joinus/list",
			param: {}
		});
	});
	</script>
	<script type="text/javascript">
	function DelModel(id){
		$("body").append("<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>"+"" +
				"<div class='modal-header'>" + 
				"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>×</button>" + 
				"<h3>删除</h3>" + 
				"</div>" +
				"<div class='modal-body'>" +
				"<p>确认要删除吗？</p>" +
				"</div>" +
				"<div class='modal-footer'>" +
				"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();deleteJoinus("+id+")'>确认</a>" +
				"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>取消</a>" +
				"</div>" +
				"</div>");
		$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
	}
	</script>
	<script type="text/javascript">
		function deleteClick(id){
			DelModel(id);
		}
		function deleteJoinus(id){
			$.ajax({
				url:"${pageContext.request.contextPath}/joinus/delete.action",
				data:{id:id},
				type:"post",
				success:function(data){
					gtView("jsp/manage/joinus/index.jsp");
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