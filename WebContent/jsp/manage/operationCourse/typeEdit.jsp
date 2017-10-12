<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>运营课程讲师</title>
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
				<div class="muted pull-left">运营课程讲师</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增讲师</legend>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">讲师名</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="teachername" type="text" style="height: 30px;" placeholder="讲师名" maxlength="7">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">描述</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="teacherdesc" type="text" style="height: 30px;" placeholder="描述" maxlength="140">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">头像</label>
								<img id="teacherimg" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/operationCourse/teacheradd');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/operationCourse/typeIndex.jsp');">取消</button>
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
				$("#submit").attr("onclick", "qa_edit('/operationCourse/teacherupd');");
				var one = WSFUNCTION.doPost("operationCourse/html/teacherlist", {id:id})[0];
				$("#teachername").val(one.teachername);
				$("#teacherdesc").val(one.teacherdesc);
				if(one.teacherimg == '') one.teacherimg = '/images/duofenIntroduction/plus.png';
				$("#teacherimg").attr("src", one.teacherimg);
			}
			
			$("#teacherimg").on("click", function(){
				selectModel();
			});
			
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#teacherimg").attr("src", array[0]);
			});
		});
		function qa_edit(url){
			var _teachername = $("#teachername").val(),
				_teacherdesc = $("#teacherdesc").val(),
				_teacherimg = $('#teacherimg').attr('src');
			if(_teacherimg.indexOf('plus.png') != -1) _typeimg = '';
			var p = "{id:"+id+", teachername:'"+_teachername+"', teacherimg:'"+_teacherimg+"', teacherdesc:'"+_teacherdesc+"'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {operationCourseTeacher:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/operationCourse/typeIndex.jsp');
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