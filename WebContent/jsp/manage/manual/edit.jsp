<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用手册</title>
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
				<div class="muted pull-left">使用手册</div>
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
									<select id="manual_lv" style="width: auto;">
										<option value="1">一级</option>
										<option value="2">二级</option>
									</select> 
									<span class="help-inline"></span> 
									<select id="manual_p_lv" style="width: auto;display: none;">
									</select> 
									<span class="help-inline"></span>
									<input class="input-xlarge span10" id="manualTitle" type="text"
										style="height: 30px;" placeholder="标题" maxlength="50">
								</div>
							</div>
							<div class="control-group" style="width: 92%;">
								<div class="controls" style="margin-left: 0px;">
									<input class="input-xlarge span12" id="sort" type="text" placeholder="排序值" 
										maxlength="2">
								</div>
							</div>
							<div class="control-group" style="width: 92%;">
								<div class="controls" style="margin-left: 0px;">
									<input class="input-xlarge span12" id="phoneUrl" type="text" placeholder="手机演示URL">
								</div>
							</div>
							<div class="control-group" style="width: 92%;">
								<div class="controls" style="margin-left: 0px;">
									<input class="input-xlarge span12" id="videoUrl" type="text" placeholder="视频教程URL">
								</div>
							</div>
							<div class="control-group" id="manual_1" style="width: 92%;">
								<script id="manual_cont" name="content" type="text/plain" style="height: 500px;"> </script>
								<script type="text/javascript">
						        	var ue = UE.getEditor('manual_cont');
							    </script>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" 
									onclick="manual_edit('manual/add');">提交</button>
								<button type="button" class="btn" 
									onclick="gtView('jsp/manage/manual/index.jsp');">取消</button>
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
		$("#submit").attr("onclick", "manual_edit('manual/upd');");
		var one = WSFUNCTION.doPost("manual/html/list", {id:id})[0];
		$("#manual_lv option[value='"+one.lv+"']").attr("selected", true);
		if(one.lv == 1) {
			$("#manual_p_lv").hide();
			$("#manualTitle").removeClass("span9").addClass("span10").val(one.title);
		}else{
			$("#manual_p_lv").show();
			$("#manual_p_lv option").each(function(){
					if($(this).html() == one.pName) $(this).attr("selected", true);
			});
			$("#manualTitle").removeClass("span10").addClass("span9").val(one.title);
		}
		ue.addListener("ready", function () {
			ue.setContent(one.content, false);
		});
		$("#phoneUrl").val(one.phoneUrl);
		$("#videoUrl").val(one.videoUrl);
		$("#sort").val(one.sort)
	}
	$("#manual_lv").change(function(){
		if($(this).val() == 1) {
			$("#manual_p_lv").hide();
			$("#manualTitle").removeClass("span9").addClass("span10");
		}else{
			$("#manual_p_lv").show();
			$("#manualTitle").removeClass("span10").addClass("span9");
		}
	});
});

function manual_edit(url){
	var purl = $("#phoneUrl").val();
	var vurl = $("#videoUrl").val();
	if(purl != null && purl.length != 0){
		if(purl.indexOf("?vid=") < 0){
			WSFUNCTION.msgBox("信息", "请上传腾讯视频!");	
			return;
		}
		if(purl.indexOf("?vid=")>0){
			purl = purl.substring(purl.indexOf("?vid=")+5);
		}else{
			purl = purl.substring(purl.lastIndexOf("/")+1, purl.lastIndexOf("."));
		}
		purl = "https://v.qq.com/iframe/player.html?vid="+ purl +"&tiny=0&auto=0";
	}
	if(vurl != null && vurl.length != 0){
		if(vurl.indexOf("?vid=") < 0){
			WSFUNCTION.msgBox("信息", "请上传腾讯视频!");	
			return;
		}
		if(vurl.indexOf("?vid=")>0){
			vurl = vurl.substring(vurl.indexOf("?vid=")+5);
		}else{
			vurl = vurl.substring(vurl.lastIndexOf("/")+1, vurl.lastIndexOf("."));
		}
		vurl = "https://v.qq.com/iframe/player.html?vid="+ vurl +"&tiny=0&auto=0";
	}
	var m_sort = $("#sort").val();
	if(m_sort.length == "") m_sort = "00";
	if(m_sort.length == 1) m_sort = "0"+m_sort;
	var param = {id:id, lv:$("#manual_lv").val(), title:$("#manualTitle").val(), content:ue.getContent(),
		phoneUrl:purl, videoUrl:vurl, sort:m_sort};
	if($("#manual_lv").val() == 2) param["parentId"] = $("#manual_p_lv").val();
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
				gtView('jsp/manage/manual/index.jsp');
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
	var d = WSFUNCTION.doPost("/manual/html/list", {lv: 1});
	var html = "";
	for(var i=0;i<d.length;i++){
		if(d[i].id != id) html += "<option value='"+d[i].id+"'>"+d[i].title+"</option>";
	}
	$("#manual_p_lv").html(html);
}
</script>
</html>