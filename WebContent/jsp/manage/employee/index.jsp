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
	                        <div class="muted pull-left">员工列表</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('jsp/manage/employee/edit.jsp')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
	                                 </a>
	                              </div>
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="print();">
	                                 	<button class="btn btn-info">导出 
	                                 		<i class="icon-print icon-white"></i>
	                                 	</button>
	                                 </a>
	                              </div>
	                              <div class="btn-group">
	                                 <a href="#myAlert" data-toggle="modal">
	                                 	<button id="import" class="btn btn-info">导入 
	                                 		<i class="icon-upload icon-white"></i>
	                                 	</button>
	                                 </a>
	                              </div>
	                              <a id="excel"></a>
	                              <!-- 弹出框 -->
	                              <div id="myAlert" class="modal hide" aria-hidden="true" style="display: none;">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">×</button>
											<h3>员工信息导入</h3>
										</div>
										<div class="modal-body">
											<div class="control-group">
	                                          <div class="controls">
	                                            <input class="input-file uniform_on" name="file" id="fileInput" type="file">
	                                          	&nbsp;&nbsp;
											  	<a href="http://192.168.3.10:8080/websiteUpload/excel/empTemplate.xls">模版下载</a>
	                                          </div>
	                                        </div>
	                                        <div class="alert alert-error">
												<strong>提示 :</strong> 请选择97-2003Excel文件(*.xls)! 
												<div id="error"></div>
											</div>
										</div>
										<div class="modal-footer">
											<a data-dismiss="modal" class="btn btn-primary" href="javascript:void(0);"
												onclick="upload();">确定</a>
											<a data-dismiss="modal" class="btn" href="#">返回</a>
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
			        	 name: "员工工号",
			        	 col: "number"
			         }, 
			         {
			        	 name: "员工姓名",
			        	 col: "name"
			         }, 
			         {
			        	 name: "员工性别",
			        	 col: "sex"
			         }, 
			         {
			        	 name: "创建人",
			        	 col: "creater",
				         render: function(value){
			        		 if(value.creater){
			        			 return value.creater;
			        		 }else{
			        			 return "";
			        		 }
		        	 	  } 
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "create_time"
			        	 /* render: function(value){
			        		 var time = value.create_time;
			        		 return time.substring(0,4)+"-"+time.substring(4,6)+"-"+time.substring(6,8);
			        	 } */
			         }, 
			         {
			        	 name: "查看",
			        	 col: "",
			        	 render: function(value){
			        		 //return "<a href='javascript:void(0);' onclick='del(\"article/del\",{id:"+value.id+"})'>删除</a>";
			        		 return "<a class='btn btn-success' onclick='gtView(\"jsp/manage/employee/edit.jsp?id="+value.id+"\")'>信息</a>&nbsp;"+
			        		 	"<a class='btn btn-success' onclick='gtView(\"employee/assessListPre.action?id="+value.id+"\")'>评价</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='delModel("+value.id+");'>删除</a>";
			        	 }
			         }
			        ],
			url: "employee/list",
			param: {}
		});
	});
	</script>
	<script type="text/javascript">
	function delModel(id){
		$("body").append("<div id='sendDel' class='modal hide in' aria-hidden='false' style='display: block;'>"+"" +
				"<div class='modal-header'>" + 
				"<button data-dismiss='modal' class='close' type='button' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>×</button>" + 
				"<h3>删除</h3>" + 
				"</div>" +
				"<div class='modal-body'>" +
				"<p>确认要删除吗？</p>" +
				"</div>" +
				"<div class='modal-footer'>" +
				"<a data-dismiss='modal' class='btn btn-primary' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();deleteEmp("+id+")'>确认</a>" +
				"<a data-dismiss='modal' class='btn' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'>取消</a>" +
				"</div>" +
				"</div>");
		$("body").append("<div class='modal-backdrop  in' onclick='$(\"#sendDel\").remove();$(\".modal-backdrop\").remove();'></div>");
	}
	</script>
	<!-- 导入excel -->
	<script type="text/javascript">
		$("#import").click(function(){
			$(".uniform_on").uniform();
		});
		function upload(){
			if(doCheck()){
				//执行上传文件操作的函数
				var resultUrl = "";
				$.ajaxFileUpload({
					//处理文件上传操作的服务器端地址
					url : '${pageContext.request.contextPath}/employee/import.do',
					secureuri : false, //是否启用安全提交,默认为false 
					fileElementId : 'fileInput', //文件选择框的id属性
					dataType : 'text', //服务器返回的格式,可以是json或xml等
					success : function(data, status) { //服务器响应成功时的处理函数
						result = data.substring(data.indexOf(">") + 1, data
								.lastIndexOf("</pre>"));
						data = eval("(" + result + ")");
						if (data.success) {
							msgBox(data.success);
							gtView("/jsp/manage/employee/index.jsp");
						} else if (data.error) {
							msgBox(data.error);
						} else {
							msgBox("导入失败,请检查导入格式是否正确,工号是否重复");
						}
					}
				});
			}
		}
	</script>
	<script type="text/javascript">
		function doCheck() {
			var file = $(".filename").text();
			if (file == '' || file == null) {
				msgBox("请选择所要上传的文件！");
			} else {
				var index = file.lastIndexOf(".");
				if (index < 0) {
					msgBox("上传的文件格式不正确，请选择97-2003Excel文件(*.xls)！");
				} else {
					var ext = file.substring(index + 1, file.length);
					if (ext != "xls") {
						msgBox("上传的文件格式不正确，请选择97-2003Excel文件(*.xls)！");
					} else {
						return true;
					}
				}
			}
			return false;
		}
	</script>
	<script type="text/javascript">
		function deleteEmp(id){
			$.ajax({
				url:"${pageContext.request.contextPath}/employee/delete.do",
				data:{id:id},
				type:"post",
				success:function(data){
					gtView("jsp/manage/employee/index.jsp");
				}
			}); 
		}
		function print(){
			/* $.ajax({
				url:"employee/print.do",
				type:"post",
				success:function(data){
					if(data.success){
						console.dir(data);
						if(data.url != "" && data.url != undefined){
							WSFUNCTION.msgBox("信息","打印成功!");
							//$("#excel").attr("href",data.url);
							window.location.href = data.url;
							
						}
					}else{
						WSFUNCTION.msgBox("信息","打印失败!");
					}
				}
			}); */
			window.location.href = "employee/print.do";
		}
	</script>
<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
<script src="templatelibs/vendors/datatables/js/jquery.dataTables.js"></script>
<script src="templatelibs/assets/scripts.js"></script>
<script src="templatelibs/assets/DT_bootstrap.js"></script>
<script src="/templatelibs/vendors/ajaxfileupload.js"></script>
<script type="text/javascript" src="/templatelibs/vendors/jquery.uniform.min.js"></script>
</body>
</html>