<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>技术支持</title>
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
				<div class="muted pull-left">技术支持</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">菜单等级</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="ts_menu_lv" style="width: auto;">
										<option value="1">一级</option>
										<option value="2">二级</option>
									</select> 
									<span class="help-inline"></span> 
									<select id="ts_p_menu" style="width: auto;display: none;">
									</select> 
									<span class="help-inline"></span>
									<input class="input-xlarge span10" id="tsMenuName" type="text"
										style="height: 30px;" placeholder="菜单名" maxlength="50">
								</div>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="ts_edit('technicalSupport/addMenu');">提交</button>
								<button type="button" class="btn" onclick="gtView('/jsp/manage/technicalSupport/TSMenuIndex.jsp');">取消</button>
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
			parentManu();
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "ts_edit('/technicalSupport/updMenu');");
				var one = WSFUNCTION.doPost("technicalSupport/html/menuList", {id:id})[0];
				$("#ts_menu_lv option[value='"+one.tsLevel+"']").attr("selected", true);
				if(one.tsLevel == 1) {
					$("#ts_p_menu").hide();
					$("#tsMenuName").removeClass("span9").addClass("span10").val(one.tsName);
				}else{
					$("#ts_p_menu").show();
					$("#ts_p_menu option").each(function(){
							if($(this).html() == one.pName) $(this).attr("selected", true);
					});
					$("#tsMenuName").removeClass("span10").addClass("span9").val(one.tsName);
				}
			}
			$("#ts_menu_lv").change(function(){
				if($(this).val() == 1) {
					$("#ts_p_menu").hide();
					$("#tsMenuName").removeClass("span9").addClass("span10");
				}else{
					$("#ts_p_menu").show();
					$("#tsMenuName").removeClass("span10").addClass("span9");
				}
			});
		});
		function ts_edit(url){
			var tsLevel = $("#ts_menu_lv").val();
			var tsName = $("#tsMenuName").val();
			var parentId = $("#ts_p_menu").val();
			var param = {};
			param["id"] = id;
			param["tsLevel"] = tsLevel;
			param["tsName"] = tsName;
			if(tsLevel == 2) param["parentId"] = parentId;
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: param,
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('jsp/manage/technicalSupport/TSMenuIndex.jsp');
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
			var d = WSFUNCTION.doPost("/technicalSupport/html/menuList", {pid: 0});
			var html = "";
			for(var i=0;i<d.length;i++){
				if(d[i].id != id)
					html += "<option value='"+d[i].id+"'>"+d[i].tsName+"</option>";
			}
			$("#ts_p_menu").html(html);
		}
	</script>
</body>
</html>