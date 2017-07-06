<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<script src="/templatelibs/vendors/ajaxfileupload.js"></script>
<script type="text/javascript" src="templatelibs/vendors/jquery.uniform.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">加入我们</div>
						</div>	
						<div class="block-content collapse in">
							<div class="span12">
								<form action="${pageContext.request.contextPath }/joinus/edit.action" 
								class="form-horizontal" enctype="multipart/form-data" method="post">
									<fieldset >
										<legend>编辑</legend>
										<input type="hidden" name="id" value="${joinus.id }">
										<div class="row-fluid">
										<div class="span6">
											<div class="control-group">
												<div class="controls">
													<label class="control-label">标题</label>
													<input name="title" value="${joinus.title }" class="input-xlarge focused" type="text" style="height: 30px">
												</div>
											</div>
											<div class="control-group">
	                                          <div class="controls">
		                                          <label class="control-label" for="optionsCheckbox">是否显示</label>
	                                              <label class="uniform">
	                                              	<input class="uniform_on" type="checkbox" id="optionsCheckbox" value="option1">
	                                         		     是否在官网页面中显示该图片
	                                              </label>
	                                          </div>
	                                        </div>
											<div class="control-group">
												<label class="control-label" for="fileInput">招聘图片</label>
												<div class="controls" id="fileId">
													<div class="uploader">
														<input id="fileId" class="input-file uniform_on"  name="file"
															 type="file">
													</div>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">职责</label>
												<div class="controls">
													<textarea class="input-xlarge textarea" name="duty" id="duty" placeholder="Enter text ..." style="width: 400px; height: 100px">${joinus.duty }</textarea>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">要求</label>
												<div class="controls">
													<textarea class="input-xlarge textarea" name="demand" id="demand" placeholder="Enter text ..." style="width: 400px; height: 100px">${joinus.demand }</textarea>
												</div>
											</div>
											<input id="hiidenId" type="hidden" name = "imagesName">
											<div style="padding-left: 180px">
												<button type="button" class="btn btn-primary" id="saveId">保存</button>
												<a type="button" class="btn btn-default" href="javascript:gtView('jsp/manage/joinus/index.jsp');">取消</a>
											</div>
										</div>
										<div class="span6">
											<h5>招聘图片</h5>
											<img id="imgId" alt="" src="${imagesUrl}${joinus.imagesUrl }" width="300px">
										</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>					
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$(".uniform_on").uniform();
			var status = "${joinus.status}";
			if(status == 1){
				$(".checker span").addClass("checked");
			}
			//修改控件初始化的值
			var $files = $(".filename");
			for (var i = 0; i < $files.length; i++) {
				var file = $files[i];
				
				if (file.innerHTML == "No file selected") {
					file.innerHTML = "有图片";
				}
			}
			var $files = $(".action");
			for (var i = 0; i < $files.length; i++) {
				var file = $files[i];
				if (file.innerHTML == "Choose File") {
					file.innerHTML = "选择图片";
				}
			}
		});
		$("#fileId").change(function(){
			$.ajaxFileUpload({
				//处理文件上传操作的服务器端地址
				url:'${pageContext.request.contextPath}/joinus/fileUpload.action',
				secureuri:false,                       //是否启用安全提交,默认为false 
				fileElementId: "fileId",           //文件选择框的id属性
				dataType:'text',                       //服务器返回的格式,可以是json或xml等
				success:function(data, status){        //服务器响应成功时的处理函数
					//回显图片
					var resultUrl = "";
					if(data != null && data != ""){
						resultUrl = data.substring(data.indexOf(">")+1,data.lastIndexOf("</pre>"));
					}
					$(imgId).attr("src",resultUrl);
				},
				error:function(data, status, e){ //服务器响应失败时的处理函数
					//$('#result').html('图片上传失败，请重试！！');
					alert(e);
				}
			});
		});
		$("#saveId").click(function(){
			var id = $("input[name='id']").val();
			var title = $("input[name='title']").val();
			var duty = $("#duty").val();
			var demand = $("#demand").val();
			var status = 0;
			if($(".checker span").hasClass("checked")){
				status = 1;
			}
			var originalFilename = $(".filename").eq(0).text();
			if(originalFilename == "有图片"){
				originalFilename = null;
			}
			var imgsrc = $("#imgId").attr("src");
			var imagesUrl = imgsrc.substring(imgsrc.lastIndexOf("images/")+7,imgsrc.length);
			$.ajax({
				url:'${pageContext.request.contextPath}/joinus/edit.action',
				data:{
					title: title,
					id: id,
					imagesUrl: imagesUrl,
					originalFilename:originalFilename,
					duty:duty,
					demand:demand,
					status:status
				},
				type:'post',
				success:function(data){
					gtView("jsp/manage/joinus/index.jsp");
				}
			});  
		});
	</script>
</body>
</html>