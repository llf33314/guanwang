<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>案例中心分类</title>
<style type="text/css">
</style>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>
</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">案例中心分类</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增分类</legend>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">分类名</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="classname" type="text" style="height: 30px;" placeholder="分类名" maxlength="20">
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/caseCenter/classadd');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/caseCenter/caseClassIndex.jsp');">取消</button>
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
				$("#submit").attr("onclick", "qa_edit('/caseCenter/classupd');");
				var one = WSFUNCTION.doPost("caseCenter/html/classlist", {id:id})[0];
				$("#classname").val(one.classname);
			}
			
		});
		function qa_edit(url){
			var _classname = $("#classname").val();
			var p = "{id:"+id+", classname:'"+_classname+"'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {caseCenterClass:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/caseCenter/caseClassIndex.jsp');
					}else{
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
		}
	</script>
</body>
</html>