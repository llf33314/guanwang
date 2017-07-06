<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>底部轮播图片</title>
<style type="text/css">
</style>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>
<script src="templatelibs/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">底部轮播图片</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<img id="imgurl1" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="control-group">
								<div class="controls" style="margin-left: 45px;">
									<input class="input-xlarge span10" id="imgdesc" type="text" placeholder="描述" maxlength="140">
								</div>
							</div>
							<div class="control-group">
								<div class="controls" style="margin-left: 45px;">
									<input class="input-xlarge span10" id="imgurl" type="text" placeholder="图片链接">
								</div>
							</div>
							
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/productCenter/bottomadd');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/productCenter/bottomImgIndex.jsp');">取消</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
	<script type="text/javascript">
		var img_i = "imgurl1";
		var id = <%=request.getParameter("i") %>;
		$(function(){
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "qa_edit('/productCenter/bottomupd');");
				var one = WSFUNCTION.doPost("productCenter/html/bottomlist", {id:id})[0];
				
				$("#imgurl1").attr("src", one.imgurl);
				$("#imgdesc").val(one.imgdesc);
				$("#imgurl").val(one.url);
			}
			
			$("img").on("click", function(){
				console.log($(this).attr("id"));
				img_i = $(this).attr("id");
				selectModel();
			});
			
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#"+img_i).attr("src", array[0]);
			});
		});
		function qa_edit(url){
			var _imgurl = $("#imgurl1").attr("src");
			var _imgdesc = $("#imgdesc").val();
			var _url = $("#imgurl").val();
			
			var p = "{id:"+id+", imgurl:'"+_imgurl+"', imgdesc:'"+_imgdesc+"', url:'"+_url+"'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {bottomImg:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/productCenter/bottomImgIndex.jsp');
					}else{
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
		}
		function selectModel(){
			$("#materialModal").modal('toggle');
			initMaterial();
			materialParams.rows = materialDefulatRows;
			materialTabClick(1);
		}
	</script>
</body>
</html>