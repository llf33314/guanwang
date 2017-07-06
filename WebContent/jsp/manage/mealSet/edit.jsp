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
								<label class="control-label" for="selectError" style="width: auto;">套餐</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="setid" style="width: auto;"></select> 
									<span class="help-inline"></span> 
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">套餐内容列表名</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="setname" type="text" style="height: 30px;" placeholder="套餐内容列表名" maxlength="20">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">排序</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="sorting" type="text" style="height: 30px;" placeholder="排序号" maxlength="10">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">是否可用</label>
								<div class="controls" style="margin-left: 100px;">
									<label class="radio inline">
		  								<input class="radio" name="setis" type="radio" value="1" checked="checked"> 是
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<label class="radio inline">
		  								<input class="radio" name="setis" type="radio" value="0"> 否
									</label>
									<label class="radio inline" style="color: #666;">
		  								(页面显示"√"或"X")
									</label>
								</div>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/mealSet/add');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/mealSet/index.jsp');">取消</button>
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
			var eins = WSFUNCTION.doPost("mealSet/html/typeList", {});
			for(var i=(eins.length-1);i>-1;i--){
				$("#setid").append('<option value="'+eins[i].id+'">'+eins[i].typename+'</option>');
			}
			
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "qa_edit('/mealSet/upd');");
				var one = WSFUNCTION.doPost("mealSet/html/list", {id:id})[0];
				$("#setid option[value='"+one.setid+"']").attr("selected", true);
				$("#setname").val(one.setname);
				$("#sorting").val(one.sorting);
				$('input[name="setis"][value="'+one.setis+'"]').attr("checked",'checked');
			}
		});
		function qa_edit(url){
			var _setid = $("#setid").val();
			var _setname = $("#setname").val();
			var _sorting = $("#sorting").val();
			var _setis = $('input[name="setis"]:checked').val();
			var p = "{id:"+id+", setid:'"+_setid+"', setname:'"+_setname+"', setis:'"+_setis+"', sorting:'"+_sorting+"'}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {mealSet:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/mealSet/index.jsp');
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