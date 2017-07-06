<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多粉动态</title>
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
				<div class="muted pull-left">多粉动态</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">标题</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="art_page_title" type="text" style="height: 30px;" placeholder="页面标题" maxlength="50">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">meta</label>
								<span class="help-inline"></span>
								<input class="input-xlarge span10" id="art_meta" type="text" style="height: 30px;" placeholder="meta内容" maxlength="200">
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">类型</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="art_type" style="width: auto;">
										<option value="0">行业动态</option>
										<option value="1">产品更新</option>
										<option value="2">公司新闻</option>
										<option value="3">沙龙学院</option>
										<option value="4">公告</option>
									</select> <span class="help-inline"></span> <input
										class="input-xlarge span10" id="art_title" type="text"
										style="height: 30px;" placeholder="文章标题" maxlength="50">
								</div>
							</div>
							<div class="control-group" id="art_1" style="width: 92%;">
								<script id="art_cont" name="content" type="text/plain" style="height: 500px;"> </script>
								<script type="text/javascript">
						        	var ue = UE.getEditor('art_cont');
							    </script>
							</div>
							<div class="control-group" id="art_2" style="width: 92%;display: none;">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span12" id="art_vurl" type="text"
										style="height: 30px;" placeholder="视频URL" onblur="setVideo()">
								</div>
								<div class="controls" style="margin: 20px 40px;">
									<!-- <div class="uploader" id="uniform-fileInput">
										<input class="input-file uniform_on" id="fileInput" name="videoFile" type="file" 
											onchange="wsUpload()">
										<span class="filename" style="-webkit-user-select: none;"></span>
										<span class="action" style="-webkit-user-select: none;">选择文件</span>
									</div> -->
									<!-- <div class="progress progress-striped active">
										<div style="width: 50%;" class="bar"></div>
									</div> -->
								</div>
								<div class="controls" style="margin: 20px 40px;">
									<div id="echoVideo"></div>
								</div>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="art_edit('article/add');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/article/index.jsp');">取消</button>
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
				$("#submit").attr("onclick", "art_edit('article/upd');");
				var one = WSFUNCTION.doPost("article/html/list", {id:id})[0];
				$("#art_type").find("option[value='"+one.article_type+"']").attr("selected", true);
				if(one.article_type == 3){
					$("#art_1").hide();
					$("#art_2").show();
				}
				if(one.article_type == 4){
					$("#art_1").hide();
					$("#art_2").hide();
					$("#art_title").attr("placeholder", "公告");
				}
				$("#art_title").val(one.title);
				ue.addListener("ready", function () {
					ue.setContent(one.content, false);
				});
				$("#art_vurl").val(one.video_url);
//				$("#echoVideo").html("<video src='"+one.video_url+"' controls='controls'>您的浏览器不支持 video 标签。</video>");
				$("#echoVideo").html("<iframe frameborder='0' scrolling='no' src='"+one.video_url+"'></iframe>");
				$("#art_page_title").val(one.art_page_title);
				$("#art_meta").val(one.art_meta);
			}
			$("#art_type").change(function(){
				if($(this).val() == 3){
					$("#art_1").hide();
					$("#art_2").show();
				}else if($(this).val() == 4){
					$("#art_1").hide();
					$("#art_2").hide();
					$("#art_title").attr("placeholder", "公告");
				}else{
					$("#art_1").show();
					$("#art_2").hide();
				}
			});
		});
		function art_edit(url){
			var art_type = $("#art_type").val();
			var art_title = $("#art_title").val();
			var art_cont = ue.getContent();
//			var art_vurl = $("#echoVideo video").attr("src");
			var art_vurl = $("#art_vurl").val();
			if(art_vurl != null && art_type == 3){
				if(art_vurl.indexOf("?vid=") < 0){
					WSFUNCTION.msgBox("信息", "请上传腾讯视频!");	
					return;
				}
				if(art_vurl.indexOf("?vid=")>0){
					art_vurl = art_vurl.substring(art_vurl.indexOf("?vid=")+5);
				}else{
					art_vurl = art_vurl.substring(art_vurl.lastIndexOf("/")+1, art_vurl.lastIndexOf("."));
				}
				art_vurl = "http://v.qq.com/iframe/player.html?vid="+ art_vurl +"&tiny=0&auto=0";
			}
			var art_page_title = $("#art_page_title").val();
			var art_meta = $("#art_meta").val();
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {id:id, articleType:art_type, title:art_title, content:art_cont, videoUrl:art_vurl, 
					artPageTitle:art_page_title, artMeta:art_meta},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('jsp/manage/article/index.jsp');
					}else{
						WSFUNCTION.msgBox("信息", "网络繁忙!");
					}
				},
				error: function(){
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			});
		}
		function wsUpload(){
			WSFUNCTION.msgBox("信息", 'wait!');
			$.ajaxFileUpload({  
		        url : 'article/upload',  
		        secureuri : false,//安全协议  
		        fileElementId:'fileInput',//id  
		        type : 'POST',  
		        dataType : 'json',  
		        data : {},  
		        async : false,  
		        error : function(data, status, e) {  
		        	/* console.log(data);
		        	console.log(status);
		        	console.log(e); */
		        	alert('Operate Failed!');  
		        }, 
		        success : function(json) {  
		            if (json.status == 0){  
		            	alert(json.msg);
		            }else{  
		            	//msgBox("信息", '文件上传成功!');
		            	$("#msgBox").remove();
		    			$(".modal-backdrop").remove();
//		    			$("#echoVideo").html("<video src='"+json.data+"' controls='controls'>您的浏览器不支持 video 标签。</video>");
						$("#echoVideo").html("<iframe frameborder='0' scrolling='no' src='"+json.data+"'></iframe>");
		    			$("#art_vurl").val(json.data);
		            }  
		        }  
		    });
		}
		function setVideo(){
//			$("#echoVideo").html("<video src='"+$("#art_vurl").val()+"' controls='controls'>您的浏览器不支持 video 标签。</video>");
			$("#echoVideo").html("<iframe frameborder='0' scrolling='no' src='"+$("#art_vurl").val()+"'></iframe>");
		}
		
	</script>
</body>
</html>