<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品中心分类</title>
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
				<div class="muted pull-left">产品中心分类</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增分类</legend>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">分类名</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="pctypename" type="text" style="height: 30px;" placeholder="分类名" maxlength="7">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">英文名</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="englishname" type="text" style="height: 30px;" placeholder="英文名" maxlength="25">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">描述</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="typedesc" type="text" style="height: 30px;" placeholder="描述" maxlength="140">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">主页图片</label>
								<img id="typeimg" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/productCenterNew/typeadd');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/productCenter/typeIndex.jsp');">取消</button>
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
				$("#submit").attr("onclick", "qa_edit('/productCenterNew/typeupd');");
				var one = WSFUNCTION.doPost("productCenterNew/html/typelist", {id:id})[0];
				$("#pctypename").val(one.pctypename);
				$("#englishname").val(one.englishname);
				$("#typedesc").val(one.typedesc);
				if(one.typeimg == '') one.typeimg = '/images/duofenIntroduction/plus.png';
				$("#typeimg").attr("src", one.typeimg);
			}
			
			$("#typeimg").on("click", function(){
				selectModel();
			});
			
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#typeimg").attr("src", array[0]);
			});
		});
		function qa_edit(url){
			var _pctypename = $("#pctypename").val(),
				_englishname = $("#englishname").val(),
				_typedesc = $("#typedesc").val(),
				_typeimg = $('#typeimg').attr('src');
			if(_typeimg.indexOf('plus.png') != -1) _typeimg = '';
			var p = "{id:"+id+", pctypename:'"+_pctypename+"', typeimg:'"+_typeimg+"', englishname:'"+_englishname+"', typedesc:'"+_typedesc+"'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {productCenterType:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/productCenter/typeIndex.jsp');
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