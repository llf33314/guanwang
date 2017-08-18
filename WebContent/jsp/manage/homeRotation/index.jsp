<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页广告图</title>
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
	                        <div class="muted pull-left">首页广告图</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/homeRotation/edit.jsp')">
	                                 	<button class="btn btn-success">新增 
	                                 		<i class="icon-plus icon-white"></i>
	                                 	</button>
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
			        	 name: "图片",
			        	 col: "img_url",
			        	 render: function(value){
			        		 return "<img src='"+value.img_url+"' style='height: 50px;'/>";
			        	 }
			         }, 
			         {
			        	 name: "创建时间",
			        	 col: "createtime"
			         },
					{
						name: "状态",
						col: "",
						render: function(value){
						    if(value.isshow < 1){
                                return "<a class='btn btn-success' onclick='saveShow("+value.id+",1)'>显示</a>";
							}else{
                                return "<a class='btn btn-success' onclick='saveShow("+value.id+",0)'>取消显示</a>";
                            }
						}
					},
			         {
			        	 name: "操作",
			        	 col: "",
			        	 render: function(value){
			        		 return "<a class='btn btn-success' onclick='gtView(\"/jsp/manage/homeRotation/edit.jsp?i="+value.id+"\")'>修改</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"homeRotation/del\",{id:"+value.id+"}, \"/jsp/manage/homeRotation/index.jsp\", $(this))'>删除</a>"; 
			        	 }
			         }
			        ],
			url: "/homeRotation/html/list",
			param: {}
		});
		
	});
    function saveShow(id,isshow){
        $.ajax({
            url: "/homeRotation/saveShow",
            type: "POST",
            async: false,
            data: {id:id,isshow:isshow},
            success: function(data){
                var d = eval("("+data+")");
                if(d.status == 1){
                    WSFUNCTION.msgBox("信息", d.msg);
                    gtView('/jsp/manage/homeRotation/index.jsp');
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