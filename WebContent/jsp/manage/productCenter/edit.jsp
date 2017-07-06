<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品中心</title>
<style type="text/css">
</style>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>
<script type="text/javascript" src="utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" src="utf8-jsp/ueditor.all.min.js"></script>
<script src="templatelibs/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">产品中心</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">分类</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="classid" style="width: auto;"></select> 
									<span class="help-inline"></span> 
									<input class="input-xlarge span10" id="pcname" type="text"
										style="height: 30px;" placeholder="名称" maxlength="12">
								</div>
							</div>
							<div class="control-group">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span11" id="pcdesc" type="text"
										style="height: 30px;" placeholder="描述" maxlength="140">
								</div>
							</div>
							<div class="control-group">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span11" id="pcpagetitle" type="text"
										style="height: 30px;" placeholder="页面标题" maxlength="50">
								</div>
							</div>
							<div class="control-group">
								<div class="controls" style="margin-left: 40px;">
									<input class="input-xlarge span11" id="pcmeta" type="text"
										style="height: 30px;" placeholder="meta" maxlength="200">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">首页显示</label>
								<div class="controls" style="margin-left: 100px;">
									<label class="radio inline">
		  								<input class="radio" name="ishome" type="radio" value="1"> 是
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<label class="radio inline">
		  								<input class="radio" name="ishome" type="radio" value="0" checked="checked"> 否
									</label>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">热门</label>
								<div class="controls" style="margin-left: 70px;">
									<label class="radio inline">
		  								<input class="radio" name="ishot" type="radio" value="1"> 是
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<label class="radio inline">
		  								<input class="radio" name="ishot" type="radio" value="0" checked="checked"> 否
									</label>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">LOGO&nbsp;&nbsp; </label>
								<span class="help-inline"></span>
								<img id="imgurl0" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="control-group" id="" style="width: 92%;">
								<script id="pcdetail" name="content" type="text/plain" > </script>
								<script type="text/javascript">
						        	var ue = UE.getEditor('pcdetail');
						        	if(<%=request.getParameter("i") %> == null){
						        		ue.addListener("ready", function () {
							        		ue.setContent('请输入详情', false);
								        	ue.setHeight(200);
										});
						        	}
							    </script>
							</div>
							<div class="control-group" id="" style="width: 92%;">
								<script id="pcfeatures" name="content" type="text/plain" > </script>
								<script type="text/javascript">
						        	var ue2 = UE.getEditor('pcfeatures');
						        	if(<%=request.getParameter("i") %> == null){
							        	ue2.addListener("ready", function () {
							        		ue2.setContent('请输入功能亮点', false);
								        	ue2.setHeight(200);
										});
						        	}
							    </script>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">详情图片</label>
								<span class="help-inline"></span>
								<img id="imgurl2" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
								<!-- <img id="imgurl3" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/> -->
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">二维码&nbsp;&nbsp; </label>
								<span class="help-inline"></span>
								<img id="imgurl1" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">视频按钮&nbsp;&nbsp; </label>
								<span class="help-inline"></span>
								<button type="button" id="video_add" class="btn btn-primary">添加</button>
							</div>
							<div class="control-group" id="video_btn_set">
								
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/productCenter/add');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/productCenter/index.jsp');">取消</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
	<script type="text/javascript">
		var img_i = "imgurl1";
		var id = <%=request.getParameter("i") %>;
		$(function(){
			var eins = WSFUNCTION.doPost("productCenter/html/typelist", {});
			for(var i=(eins.length-1);i>-1;i--){
				$("#classid").append('<option value="'+eins[i].id+'">'+eins[i].pctypename+'</option>');
			}
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "qa_edit('/productCenter/upd');");
				var one = WSFUNCTION.doPost("productCenter/html/list", {id:id})[0];
				
				$("#classid option[value='"+one.classid+"']").attr("selected", true);
				if(one.logourl == '') one.logourl = '/images/duofenIntroduction/plus.png';
				$("#imgurl0").attr("src", one.logourl);
				$("#pcname").val(one.pcname);
				$("#pcdesc").val(one.pcdesc);
				ue.addListener("ready", function () {
					ue.setContent(one.pcdetail, false);
				});
				ue2.addListener("ready", function () {
					ue2.setContent(one.pcfeatures, false);
				});
				if(one.qrcode == '') one.qrcode = '/images/duofenIntroduction/plus.png';
				$("#imgurl1").attr("src", one.qrcode);
				$('input[name="ishot"][value="'+one.ishot+'"]').attr("checked",'checked');
				$('input[name="ishome"][value="'+one.ishome+'"]').attr("checked",'checked');
				$('#pcpagetitle').val(one.pcpagetitle);
				$('#pcmeta').val(one.pcmeta);
				
				var two = WSFUNCTION.doPost("productCenter/html/imglist", {productid:id});
				if(two[0].imgurl == '') two[0].imgurl = '/images/duofenIntroduction/plus.png';
				$("#imgurl2").attr("src", two[0].imgurl);
				/* $("#imgurl3").attr("src", two[1].imgurl); */
				
				var three = WSFUNCTION.doPost("productCenter/html/btnlist", {productid:id});
				if(three.length != 0){
					for(var i=0;i<three.length;i++){
						$('#video_btn_set').append('<div style="margin-bottom: 10px;"><input class="input-xlarge span2" '
								+'type="text"style="height: 30px;" placeholder="按钮名称" maxlength="6" value="'+three[i].btnname+'">'
								+'<span class="help-inline"></span><input class="input-xlarge span5" type="text"style="height: 30px;" '
								+'placeholder="按钮链接" value="'+three[i].vlink+'"><span class="help-inline"></span><button type="button" class="btn" '
								+'onclick="$(this).parent().remove();">X</button><br/></div>');
					}
				}
			}
			
			$("img").on("click", function(){
				console.log($(this).attr("id"));
				img_i = $(this).attr("id");
				selectModel();
			});
			
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#"+img_i).attr("src", array[0]);
			});
			
			$('#video_add').on('click', function(){
				if($('#video_btn_set div').length < 4) 
					$('#video_btn_set').append('<div style="margin-bottom: 10px;"><input class="input-xlarge span2" '
							+'type="text"style="height: 30px;" placeholder="按钮名称" maxlength="6">'
							+'<span class="help-inline"></span><input class="input-xlarge span5" type="text"style="height: 30px;" '
							+'placeholder="按钮链接"><span class="help-inline"></span><button type="button" class="btn" '
							+'onclick="$(this).parent().remove();">X</button><br/></div>');
			});
			
		});
		function qa_edit(url){
			var _classid = $("#classid").val();
			var _logourl = $("#imgurl0").attr("src");
			var _pcname = $("#pcname").val();
			var _pcdesc = $("#pcdesc").val();
			var _pcdetail = ue.getContent();
			var _pcfeatures = ue2.getContent();
			var _qrcode = $("#imgurl1").attr("src");
			var _ishot = $('input[name="ishot"]:checked').val();
			var _ishome = $('input[name="ishome"]:checked').val();
			var _pcpagetitle = $('#pcpagetitle').val();
			var _pcmeta = $('#pcmeta').val();
			
			if(_logourl.indexOf('plus.png') != -1) _logourl = '';
			if(_qrcode.indexOf('plus.png') != -1) _qrcode = '';
			var p = "{id:"+id+", classid:"+_classid+", logourl:'"+_logourl+"', pcname:'"+_pcname+"', pcdesc:'"+_pcdesc+"', "
					+"pcdetail:'"+_pcdetail+"', pcfeatures:'"+_pcfeatures+"', qrcode:'"+_qrcode+"', ishot:'"+_ishot+"', "
					+"pcpagetitle:'"+_pcpagetitle+"', pcmeta:'"+_pcmeta+"', ishome:'"+_ishome+"'}";
					
			var _ProductCenterImg = '[';
			for(var i=2;i<4;i++){
				if($('#imgurl'+i).attr('src') != undefined ){
					if(i > 2) _ProductCenterImg += ',';
					var imgi = $('#imgurl'+i).attr('src');
					if(imgi.indexOf('plus.png') != -1) imgi = '';
					_ProductCenterImg += '{productid:"'+id+'", imgurl:"'+imgi+'"}';
				}
			}
			_ProductCenterImg += ']';
			
			var _ProductCenterVbtn = '[', vbtn = $('#video_btn_set div');
			for(var i=0;i<vbtn.length;i++){
				var vname = $($(vbtn[i]).children('input').get(0)).val(), 
					vlink = $($(vbtn[i]).children('input').get(1)).val();
				if(vname != '' || vlink != ''){
					if(i > 0) _ProductCenterVbtn += ',';
					_ProductCenterVbtn += '{productid:"'+id+'", btnname:"'+vname+'", vlink:"'+vlink+'"}';
				}
			}
			_ProductCenterVbtn += ']';
			console.log(_ProductCenterVbtn);
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {ProductCenter:p, ProductCenterImg:_ProductCenterImg, ProductCenterVbtn:_ProductCenterVbtn},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/productCenter/index.jsp');
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