<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>套餐</title>
<style type="text/css">
</style>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>
</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">套餐</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">套餐名</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="typename" type="text" style="height: 30px;" placeholder="套餐名" maxlength="20">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">套餐价格</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="setprice" type="text" style="height: 30px;" placeholder="套餐价格(单位：元/年)" maxlength="8"
									onkeyup="this.value=this.value.replace(/[^\-?\d.]/g,'')" 
									onafterpaste="this.value=this.value.replace(/[^\-?\d.]/g,'')" >
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/mealSet/typeAdd');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/mealSet/typeIndex.jsp');">取消</button>
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
				$("#submit").attr("onclick", "qa_edit('/mealSet/typeUpd');");
				var one = WSFUNCTION.doPost("mealSet/html/typeList", {id:id})[0];
				$("#typename").val(one.typename);
				$("#setprice").val(one.setprice);
			}
		});
		function qa_edit(url){
			var _typename = $("#typename").val();
			var _setprice = $("#setprice").val();
			var p = "{id:"+id+", typename:'"+_typename+"', setprice:'"+_setprice+"'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {mealSetType:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/mealSet/typeIndex.jsp');
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