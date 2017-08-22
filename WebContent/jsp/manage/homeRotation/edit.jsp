<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页轮播图</title>
<style type="text/css">
</style>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>

</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">首页轮播图</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">轮播图</label>
								<span class="help-inline"></span>
								<img id="img_url" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
                            <div style="margin-top: -14px; margin-bottom: 22px;">
                                <span style="    margin: 125px;
                                 color: red;">建议图片尺寸1000*600</span>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="selectError" style="width: auto;">跳转URL</label>
                                <div class="controls" style="margin-left: 40px;">
                                    <span class="help-inline"></span>
                                    <input class="input-xlarge span10" id="url" type="text"
                                           style="height: 30px;" placeholder="链接地址" maxlength="250">
                                </div>
                            </div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/homeRotation/add');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/homeRotation/index.jsp');">取消</button>
							</div>
						</fieldset>
					</form>
                    <input type="hidden" id="isshow" value="0">
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
				$("#submit").attr("onclick", "qa_edit('/homeRotation/upd');");
				var one = WSFUNCTION.doPost("homeRotation/html/list", {id:id})[0];
				 $("#img_url").attr("src", one.img_url);
				 $("#url").val(one.url);
                $("#isshow").val(one.isshow);
            }
			$("#img_url").on("click", selectModel);
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#img_url").attr("src", array[0]);
			});
		});
		function qa_edit(url){
			var _imgurl = $("#img_url").attr("src");
			var _url = $("#url").val();
			var p = "{id:"+id+", img_url:'"+_imgurl+"', url:'"+_url+"',isshow:"+$("#isshow").val()+"}";
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {homeRotation:p},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/homeRotation/index.jsp');
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
			/* $("#materialModal").show(); */
			initMaterial();
			materialParams.rows = materialDefulatRows;
			materialTabClick(1);
		}
	</script>
</body>
</html>