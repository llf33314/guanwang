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
									style="width: auto;">菜单</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="tsPMenu" style="width: auto;">
									</select> 
									<span class="help-inline"></span> 
									<select id="tsMenuId" style="width: auto;">
									</select> 
									<span class="help-inline"></span> 
									<input class="input-xlarge span8" id="question" type="text"
										style="height: 30px;" placeholder="提问" maxlength="50">
								</div>
							</div>
							<div class="control-group" id="art_1" style="width: 92%;">
								<script id="art_cont" name="content" type="text/plain" style="height: 500px;"> </script>
								<script type="text/javascript">
						        	var ue = UE.getEditor('art_cont');
							    </script>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('technicalSupport/addQandA');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/technicalSupport/TSQ&AIndex.jsp');">取消</button>
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
			childManu($("#tsPMenu").val());
			$("#tsPMenu").change(function(){
				childManu($(this).val());
			});
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "qa_edit('/technicalSupport/updQandA');");
				var one = WSFUNCTION.doPost("technicalSupport/html/QandAList", {id:id})[0];
				$("#tsPMenu option").each(function(){
					if($(this).html() == one.ptsName){
						$(this).attr("selected", true);
						childManu($(this).val());
						$("#tsMenuId option").each(function(){
							if($(this).html() == one.tsName){
								$(this).attr("selected", true);
							}
						});
					}
				});
				$("#question").val(one.question);
				ue.addListener("ready", function () {
					ue.setContent(one.answer, false);
				});
			}
		});
		function qa_edit(url){
			var tsMenuId = $("#tsMenuId").val();
			var question = $("#question").val();
			var answer = ue.getContent();
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {id:id, tsMenuId:tsMenuId, question:question, answer:answer},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/technicalSupport/TSQ&AIndex.jsp');
						/* $("#question").val("");
						ue.setContent("", false); */
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
				html += "<option value='"+d[i].id+"'>"+d[i].tsName+"</option>";
			}
			$("#tsPMenu").html(html);
		}
		function childManu(pid){
			var d = WSFUNCTION.doPost("/technicalSupport/html/menuList", {pid: pid});
			var html = "";
			for(var i=0;i<d.length;i++){
				if(d[i].id != id)
					html += "<option value='"+d[i].id+"'>"+d[i].tsName+"</option>";
			}
			$("#tsMenuId").html(html);
		}
	</script>
</body>
</html>