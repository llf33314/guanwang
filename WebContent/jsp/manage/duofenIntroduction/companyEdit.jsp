<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司活动</title>
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
				<div class="muted pull-left">公司活动</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">描述</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="remark" type="text" style="height: 30px;" placeholder="选填" maxlength="140">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">URL</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="url" type="text" style="height: 30px;" placeholder="选填">
							</div>
							<div class="control-group">
								<img id="imgurl" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/duofenIntr/add');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/duofenIntroduction/companyIndex.jsp');">取消</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
	<script type="text/javascript">
		var id = <%=request.getParameter("i") %>;
		$(function(){
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "qa_edit('/duofenIntr/upd');");
				var one = WSFUNCTION.doPost("duofenIntr/html/list", {id:id})[0];
				$("#remark").val(one.remark);
				$("#url").val(one.url);
				 $("#imgurl").attr("src", one.imgurl);
			}
			$("#imgurl").on("click", selectModel);
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#imgurl").attr("src", array[0]);
			});
		});
		function qa_edit(url){
			var _remark = $("#remark").val();
			var _url = $("#url").val();
			var _imgurl = $("#imgurl").attr("src");
			var p = "{id:"+id+", url:'"+_url+"', remark:'"+_remark+"', imgurl:'"+_imgurl+"', imgtype:'1'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {imgtype:1, imgurl:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/duofenIntroduction/companyIndex.jsp');
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