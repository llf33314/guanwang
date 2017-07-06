<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.gt.utils.PropertiesUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String filePath = PropertiesUtil.getWebPayUrl();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>手机版首页轮播图</title>
<style type="text/css">
	.footer-qrcode{height: 215px;margin-top: 50px;}
	.footer-qrcode div{margin-left: auto;margin-right: auto;width: 150px;}
	.footer-qrcode img{width: 150px;height: 150px;}
	.footer-qrcode input{width: 100px;height: 25px;margin-left: 25px;margin-top: 10px;background-color: #8fc319;
		border-radius: 12px;border: none;color: white;}
	.footer-copy div{width: 435px;margin-left: auto;margin-right: auto;}
	.footer-copy-input{height: 40px !important;border-radius: 0px !important;width: 338px;text-indent: 1rem;}
	.footer-copy-btn{height: 40px;border: none;color: white;background-color: #8fc319;margin-top: -10px;margin-left: -4px;padding-left: 20px;padding-right: 20px;}
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
	                        <div class="muted pull-left">手机版首页轮播图</div>
	                    </div>
	                    <div class="block-content collapse in">
	                        <div class="span12">
	                           <div class="table-toolbar">
	                              <div class="btn-group">
	                                 <a href="javascript:void(0);" onclick="gtView('/jsp/manage/mobileVer/edit.jsp')">
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
                <div class="row-fluid">
                	<div class="footer-qrcode">
	                	<div><img src="/MobileVerRotation/html/getUrltoQRcode?url=<%=filePath %>mobileWeb/79B4DE7C/mobileHome.do"></div>
	                	<div><input type="button" value="下载二维码" onclick="qrdownload();"/></div>
                	</div>
                	<div class="footer-copy">
                		<div>
		                	<input type="text" class="footer-copy-input" value="<%=filePath %>mobileWeb/79B4DE7C/mobileHome.do" id="copyurl"/>
		                	<input type="button" class="footer-copy-btn" value="复制链接" data-clipboard-target="copyurl" id="copybtn" data-copytarget="#copyurl"/>
	                	</div>
                	</div>
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
			        	 col: "imgurl",
			        	 render: function(value){
			        		 return "<img src='"+value.imgurl+"' style='height: 50px;'/>";
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
			        		 return "<a class='btn btn-success' onclick='gtView(\"/jsp/manage/mobileVer/edit.jsp?i="+value.id+"\")'>修改</a>&nbsp;"+
			        		 	"<a class='btn btn-danger' onclick='WSFUNCTION.sendDel(\"MobileVerRotation/del\",{id:"+value.id+"}, \"/jsp/manage/mobileVer/index.jsp\", $(this))'>删除</a>"; 
			        	 }
			         }
			        ],
			url: "/MobileVerRotation/html/list",
			param: {}
		});
		
	});
	
	</script>
	<script src="templatelibs/vendors/jquery-1.9.1.js"></script>
	<!-- <script src="templatelibs/bootstrap/js/bootstrap.min.js"></script> -->
	<script src="templatelibs/vendors/datatables/js/jquery.dataTables.js"></script>
	<script src="templatelibs/assets/scripts.js"></script>
	<script src="templatelibs/assets/DT_bootstrap.js"></script>
	<script src="js/ZeroClipboard.min.js"></script>
	<script type="text/javascript">
		/* var clip = new ZeroClipboard( document.getElementById("copybtn") );
		clip.on( "copy", function (event) {
			var clipboard = event.clipboardData;
			clipboard.setData( "text/plain", "Copy -me!" );
			// clipboard.setData( "text/html", "<b>Copy me!</b>" );
			// clipboard.setData( "application/rtf", "{\\rtf1\\ansi\n{\\b Copy me!}}" );
			WSFUNCTION.msgBox("信息", '复制成功');
		});*/
		
		$('#copybtn').on('click', function(){
			WSFUNCTION.msgBox("信息", '复制成功');
		});

		$('#copyurl').on('click', function(){
			$('#copybtn').focus();
		});
		
		var qrdownload = function(){
			var imgPathURL = '/MobileVerRotation/html/downImage?url=<%=filePath %>mobileWeb/79B4DE7C/mobileHome.do'; 
			window.location = imgPathURL; 
		}  
	</script>
	<script type="text/javascript">
	(function() {
		  'use strict';
		 
		  // click events
		  // 添加点击事件
		  document.body.addEventListener('click', copy, true);
		 
		  // event handler
		  // 添加时间处理方法
		  function copy(e) {
		 
		    // find target element
		    // 搜索目标元素
		    var
		      t = e.target,
		      c = t.dataset.copytarget,
		      inp = (c ? document.querySelector(c) : null);
		 
		    // is element selectable?
		    // 判断元素是否能被选中
		    if (inp && inp.select) {
		 
		      // select text
		      // 选择文本
		      inp.select();
		 
		      try {
		        // copy text
		        // 复制文本
		        document.execCommand('copy');
		        inp.blur();
		      }
		      catch (err) {
		        /* alert('please press Ctrl/Cmd+C to copy'); */
		        WSFUNCTION.msgBox("信息", 'please press Ctrl/Cmd+C to copy');
		      }
		 
		    }
		  }
		 
		})();
	</script>
</body>
</html>