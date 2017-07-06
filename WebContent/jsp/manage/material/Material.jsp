<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>素材库</title>
<link href="css/manager/material/material.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="js/manage/material/ajaxfileupload-v2.1.js"></script>
<script type="text/javascript" src="js/manage/material/material.js"></script>
<script src="templatelibs/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	
	<!-- 返回的值的隐藏域 -->
	<input type="hidden" value="" id="materialModalVal"/>
	
	<!-- 模态框（Modal） -->
	<div class="modal fade customModal" id="materialModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
	                  ×
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	              	我的素材库
	            </h4>
	         </div>
	         <div class="modal-body">
	         <!-- 素材库内容 -->
				<div class="tabbable tabs-left" id="tabs"> 
	         	<!-- tab 标签 -->
	            <ul id="myTab" class="nav nav-tabs">
				   <li class="active">
				     <a href="#image" data-toggle="tab" onclick="materialTabClick(1);">图片素材</a>
				   </li>
				   <li>
				   	 <a href="#audio" data-toggle="tab" onclick="materialTabClick(2);">音频素材</a>
				   </li>
				   <li class="hidden">
				     <a href="#video" data-toggle="tab" onclick="materialTabClick(3);">视频素材</a>
				   </li>
				</ul>
				<!-- tab 标签end -->
				<!-- 标签内容 -->
				<div id="myTabContent" class="tab-content">
				   <div class="tab-pane fade in active" id="image"> <!-- 图片 -->
				   <!-- 上传框 -->
				   		<div class="uploader" id="uniform-fileInput">
							<input class="input-file uniform_on" id="fileInputImg" name="materialFile" type="file" 
								onchange="wsUpload(1,$(this),'fileInputImg');">
							<span class="filename">不超过3M</span>
							<span class="action">图片素材上传</span>
						</div>
				   	<!-- 预览框 -->
				   		<div class="block-content collapse in" id="imgView">
							<!-- 动态添加 -->                            
                        </div>
                        <!-- 分页 -->
                        <div class="pagination pull-right">
							<ul>
								<li class="pgntPageUpBtn"><a href="javascript:;" onclick="getMaterialByPage(1, -1)">上一页</a></li>
								<li><span><b class="pgntPageOnce">1</b>/<b class="pgntPageAll">1</b></span></li>
								<li class="pgntPageDnBtn"><a href="javascript:;" onclick="getMaterialByPage(1, -2)">下一页</a></li>
							</ul>
						</div>
				   </div>
				   <div class="tab-pane fade" id="audio"> <!-- 音频 -->
				   	<!-- 上传框 -->
					   	<div class="uploader" id="uniform-fileInput">
							<input class="input-file uniform_on" id="fileInputAudio" name="materialFile" type="file" 
								onchange="wsUpload(2,$(this),'fileInputAudio');">
							<span class="filename">不超过6M</span>
							<span class="action">音频素材上传</span>
						</div>
				      <!-- 预览框 -->
				   		<div class="block-content collapse in" id="audioView">
                            <!-- 动态添加 -->  
                        </div>
                        <!-- 分页 -->
                        <div class="pagination pull-right">
							<ul>
								<li class="pgntPageUpBtn"><a href="javascript:;" onclick="getMaterialByPage(2, -1);">上一页</a></li>
								<li><span><b class="pgntPageOnce">1</b>/<b class="pgntPageAll">1</b></span></li>
								<li class="pgntPageDnBtn"><a href="javascript:;" onclick="getMaterialByPage(2, -2)">下一页</a></li>
							</ul>
						</div>
                     </div>
                        
                     <div class="tab-pane fade" id="video"> <!-- 视频 -->
				      <!-- 上传框 -->
					   	<div class="uploader" id="uniform-fileInput">
							<input class="input-file uniform_on" id="fileInputVideo" name="materialFile" type="file" 
								onchange="wsUpload(3,$(this),'fileInputVideo');">
							<span class="filename">不超过6M</span>
							<span class="action">视频素材上传</span>
						</div>
					  <!-- 预览框 -->
				   	  	<div class="block-content collapse in" id="videoView">
                           <!-- 动态添加 -->  
					   </div>
					   <!-- 分页 -->
                        <div class="pagination pull-right">
							<ul>
								<li class="pgntPageUpBtn"><a href="javascript:;" onclick="getMaterialByPage(3, -1)">上一页</a></li>
								<li><span><b class="pgntPageOnce">1</b>/<b class="pgntPageAll">1</b></span></li>
								<li class="pgntPageDnBtn"><a href="javascript:;" onclick="getMaterialByPage(3, -2)">下一页</a></li>
							</ul>
						</div>
				   </div>
				</div>
				<!-- 标签内容end -->
				</div>
			 <!-- 素材库内容end -->
	         </div>
	         <div class="modal-footer">
	         	<span class="myselectValue">(<span>0</span>/7)</span>
	         	<button type="button" class="btn btn-primary" onclick="cancelMaterial();">
	               	全部取消
	            </button>
	            <button type="button" class="btn btn-default" onclick="deleteMaterial();">
	            	删除素材
	            </button>
	         	<button type="button" id="selectMaterial" class="btn btn-primary" data-dismiss="modal" onclick="selectMaterial();">
	               	选择素材
	            </button>
	         	<button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeMaterial();">
	               	关闭
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	
</body>
</html>