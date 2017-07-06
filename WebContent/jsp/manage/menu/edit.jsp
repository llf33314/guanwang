<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单</title>
<style type="text/css">
</style>
<script type="text/javascript" src="utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" src="utf8-jsp/ueditor.all.min.js"></script>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>

</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">菜单</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">等级</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="menu_lv" style="width: auto;">
										<option value="0">一级</option>
										<option value="1">二级</option>
									</select> 
									<span class="help-inline"></span> 
									<select id="menu_p_lv" style="width: auto;display: none;">
									</select> 
									<span class="help-inline"></span>
									<input class="input-xlarge span10" id="menuName" type="text"
										style="height: 30px;" placeholder="菜单名称" maxlength="50">
								</div>
							</div>
							<div class="control-group" style="width: 92%;">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span12" id="menuSort" type="text" placeholder="排序">
								</div>
							</div>
							<div class="control-group" style="width: 92%;">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span12" id="menuUrl" type="text" placeholder="菜单链接">
								</div>
							</div>
							<div class="control-group" style="width: 92%;">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span12" id="menuDesc" type="text" placeholder="菜单备注">
								</div>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" 
									onclick="menu_edit('menu/add');">提交</button>
								<button type="button" class="btn" 
									onclick="gtView('jsp/manage/menu/index.jsp');">取消</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
</body>
<script type="text/javascript">
var id = <%=request.getParameter("i") %>;
$(function(){
	parentManu();
	if(id != null){
		$("legend").html("修改");
		$("#submit").attr("onclick", "menu_edit('menu/upd');");
		var one = WSFUNCTION.doPost("menu/html/list", {id:id})[0];
		$("#menuName").val(one.menu_name);
		$("#menuUrl").val(one.menu_url);
		$("#menuDesc").val(one.menu_desc);
		$("#menuSort").val(one.menu_sort);
		$("#menu_lv option[value='"+one.menu_type+"']").attr("selected", true);
		if(one.menu_type == 0) {
			$("#menu_p_lv").hide();
			$("#menuName").removeClass("span9").addClass("span10");
		}else{
			$("#menu_p_lv").show();
			$("#menuName").removeClass("span10").addClass("span9");
			$("#menu_p_lv option").each(function(){
				if($(this).html() == one.pName) $(this).attr("selected", true);
			});
		}
	}
	$("#menu_lv").change(function(){
		if($(this).val() == 0) {
			$("#menu_p_lv").hide();
			$("#menuName").removeClass("span9").addClass("span10");
		}else{
			$("#menu_p_lv").show();
			$("#menuName").removeClass("span10").addClass("span9");
		}
	});
});

function menu_edit(url){
	var param = {id:id, name:$("#menuName").val(), url:$("#menuUrl").val(),
			desc:$("#menuDesc").val(), type:$("#menu_lv").val(), sort:$("#menuSort").val()};
	if($("#menu_lv").val() == 1) param["pid"] = $("#menu_p_lv").val();
	$.ajax({
		url: url, 
		type: "POST",
		async: false,
		data: param,
		success: function(data){
			var d = eval("("+data+")");
			if(d.status == 1){
				WSFUNCTION.msgBox("信息", d.msg);
				//$("#manualTitle").val("");
				gtView('jsp/manage/menu/index.jsp');
			}else{
				WSFUNCTION.msgBox("信息", "网络繁忙!");
			}
		},
		error: function(){
			WSFUNCTION.msgBox("信息", "网络繁忙!");
		}
	});
}

function parentManu(){
	var d = WSFUNCTION.doPost("/menu/html/list", {type: 0});
	var html = "";
	for(var i=0;i<d.length;i++){
		if(d[i].id != id)
			html += "<option value='"+d[i].id+"'>"+d[i].menu_name+"</option>";
	}
	$("#menu_p_lv").html(html);
}
</script>
</html>