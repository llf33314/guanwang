<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>案例中心</title>
<style type="text/css">
.plus-btn-div{
    width: 101px;
}
.plus-btn-div input{
    float: left;
    margin-bottom: 5px;
    color: #ababab;
    background: none;
    border: 1px #ababab solid;
    padding-top: 3px;
    padding-bottom: 3px;
    border-radius: 3px; 
    -moz-border-radius: 3px; 
	-webkit-border-radius: 3px;
	width: 98px; 
}
.btn-sel{
	background-color: #0188cc !important;
	border: 1px solid #0188cc !important;
	color: white !important;
}
.mark-maku{
	position: absolute;
	top: 0px;
	left: 0px; 
	width:100%; 
	height:1500px; 
	background-color:#000000; 
	opacity:0.5; 
	-moz-opacity:0.5; 
	filter:alpha(opacity=50);
	z-index: 2;
	display: none;
}
.white-box{
	background-color: white;
	width: 300px;
	height: 300px;
	position: fixed;
	z-index: 3;
	margin-left: 335px;
	margin-top: -1224px;
	display: none;
}
.cb-bokusu{
	float: left;
    width: 110px;
    height: 30px;
    padding-top: 5px;
    padding-left: 30px;
}
.cb-bokusu input{
	vertical-align: top;
}
.cb-bokusu label{
	display: inline-block;
}
.atarashi-ta{
	
	display: none !important;
}
.atarashi-img{
	height: 200px;
	margin-left: 50px;
	border: 1px solid #ccc;
	display: none !important;
}
.deruta{
	width: 0px;
	height: 0px;
	border-left: #0188cc 5px solid;
	border-right: #fff 0px solid;
	border-top: #fff 5px solid;
	border-bottom: #fff 5px solid;
	position: absolute;
    margin-top: 9px;
}
</style>
<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>
<script src="templatelibs/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left">案例中心</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<form class="form-horizontal">
						<fieldset>
							<legend>新增</legend>
							
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">类型</label>
								<div class="controls" style="margin-left: 40px;">
									<select id="classSel" style="width: auto;">
									</select> <span class="help-inline"></span> 
									<input class="input-xlarge span10" id="casedesc" type="text"
										style="height: 30px;" placeholder="描述" maxlength="20">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">商家LOGO</label>
								<span class="help-inline"></span>
								<img id="imgurl1" src="/images/duofenIntroduction/plus.png" onclick="a_imgClick(this)" 
									style="height: 200px;margin-left: 30px;border: 1px solid #ccc;"/>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">商家项目</label>
								<span class="help-inline"></span>
								<!-- <img id="imgurl2" src="/images/duofenIntroduction/plus.png" 
									style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
								<img id="imgurl3" src="/images/duofenIntroduction/plus.png" 
									style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
								<img id="imgurl4" src="/images/duofenIntroduction/plus.png" 
									style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/> -->
							</div>
							
							<div class="control-group" id="atarashi1">
								<div class="plus-btn-div">
									<input type="button" value="客户案例" class="btn-sel"/><!-- <span class="deruta"></span> -->
									<input type="button" value="+ 添加项目" onclick="cbonclick()"/>
								</div>
								<span class="help-inline"></span>
								<textarea typeset="客户案例" style="resize: none;width: 900px;height: 292px;"
									placeholder="请输入文字描述" class="description-textarea" maxlength="250"></textarea>
							</div>
							<div class="control-group" id="atarashi2">
								<label class="control-label" for="selectError" style="width: auto;">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</label>
								<span class="help-inline"></span>
								<img id="imgurl2" src="/images/duofenIntroduction/plus.png" typeset="客户案例" onclick="a_imgClick(this)" 
									style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="selectError" style="width: auto;">二维码&nbsp;&nbsp; </label>
								<span class="help-inline"></span>
								<img id="imgurl99" src="/images/duofenIntroduction/plus.png" onclick="a_imgClick(this)" 
									style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
							</div>
							<div class="control-group">
								<label class="control-label" for="selectError"
									style="width: auto;">视频链接</label>
								<div class="controls" style="margin-left: 107px;">
									<input class="input-xlarge span10" id="videourl" type="text"
										style="height: 30px;" placeholder="请输入视频链接" maxlength="250">
								</div>
							</div>
							<div class="form-actions" style="width: 76%;">
								<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/caseCenter/add');">提交</button>
								<button type="button" class="btn" onclick="gtView('jsp/manage/caseCenter/caseIndex.jsp');">取消</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
	
	<div class="mark-maku"></div>
	<div class="white-box">
		<div style="height: 40px;line-height: 40px;text-align: center;font-size: 16px;padding-top: 10px;">
			选择添加的项目
		</div>
		<div style="height: 200px;" id="sel-box">
		</div>
		<div style="text-align: center;">
			<input type="button" class="btn btn-primary" onclick="hitotsufueer()" value="确定" />
			<input type="button" class="btn" onclick="$('.mark-maku').hide();$('.white-box').hide();" value="取消" />
		</div>
	</div>
	
	<script type="text/javascript">
		var cbonclick = function(){
			$('.mark-maku').show();
			$('.white-box').show();
		}
		
		var irohenka = function(t){
			/* $('.deruta').remove(); */
			$(t).siblings().removeClass('btn-sel');
			$(t).addClass('btn-sel');
			/* $(t).after('<span class="deruta"></span>'); */
			var tval = $(t).val();
			$('#atarashi1 textarea').hide();
			$('#atarashi1 textarea[typeset="'+tval+'"]').show();
			$('#atarashi2 img').hide();
			$('#atarashi2 img[typeset="'+tval+'"]').show();
		}
		
		var hitotsufueer = function(){
			var sel_btn = $('#atarashi1 > div > input.btn-sel').val();
			var sel_boxs = $('#sel-box input[type="checkbox"]'), h = '<input type="button" value="客户案例" onclick="irohenka(this)"/>';
			for(var i=0;i<sel_boxs.length;i++)
				if($(sel_boxs[i]).is(':checked'))
					h += '<input type="button" value="'+$(sel_boxs[i]).val()+'" onclick="irohenka(this)"/>';
			$('.plus-btn-div').html(h);
			if($('.plus-btn-div input').length < 9)
				$('.plus-btn-div').append('<input type="button" value="+ 添加项目" onclick="cbonclick()"/>');
			$('#atarashi1 > div > input[value="'+sel_btn+'"]').addClass('btn-sel');
			/* $('#atarashi1 > div > input[value="'+sel_btn+'"]').after('<span class="deruta"></span>'); */
			$('.mark-maku').hide();
			$('.white-box').hide();
		}
		
		var initBuspro = function(){
			var data = [{id: '1', name: '粉巢系统'},
				{id: '2', name: '微信营销'},
				{id: '3', name: '商家联盟'},
				{id: '4', name: 'SaaS ERP'},
				{id: '5', name: '优惠券商城'},
				{id: '6', name: '微信小程序'},
				{id: '7', name: '多粉硬件'},
				{id: '8', name: '代运营'}];
			var h = '';
			var ii = 3, mitsuflag = '微信营销、商家联盟、微信小程序、优惠券商城';
			for(var i=0;i<data.length;i++){
				h += '<div class="cb-bokusu"><input type="checkbox" id="cb'+data[i].id
					+'" value="'+data[i].name+'"/><label for="cb'+data[i].id+'">'+data[i].name+'</label></div>';
				$('#atarashi1').append('<textarea style="resize: none;width: 900px;height: 292px;display: none;" typeset="'+data[i].name
						+'" placeholder="请输入文字描述" class="description-textarea" maxlength="250"></textarea>');
				if(mitsuflag.indexOf(data[i].name) != -1){
					$('#atarashi2').append('<img id="imgurl'+ii+'" src="/images/duofenIntroduction/plus.png" typeset="'+data[i].name
							+'" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;display: none;" onclick="a_imgClick(this)"/>'
							+'<img id="imgurl'+(ii+1)+'" src="/images/duofenIntroduction/plus.png" typeset="'+data[i].name
							+'" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;display: none;" onclick="a_imgClick(this)"/>'
							+'<img id="imgurl'+(ii+2)+'" src="/images/duofenIntroduction/plus.png" typeset="'+data[i].name
							+'" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;display: none;" onclick="a_imgClick(this)"/>');
					ii += 3;
				}else{
					$('#atarashi2').append('<img id="imgurl'+ii+'" src="/images/duofenIntroduction/plus.png" typeset="'+data[i].name
							+'" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;display: none;" onclick="a_imgClick(this)"/>');
					ii++;
				}
			}
			$('#sel-box').html(h);
		}
		
		var a_imgClick = function(t){
			img_i = $(t).attr("id");
			/* console.log(img_i); */
			selectModel();
		}
	</script>
	<script type="text/javascript">
		var img_i = "imgurl1";
		var id = <%=request.getParameter("i") %>;
		$(function(){
			initBuspro();
			var eins = WSFUNCTION.doPost("caseCenter/html/classlist", {});
			for(var i=(eins.length-1);i>-1;i--){
				$("#classSel").append('<option value="'+eins[i].id+'">'+eins[i].classname+'</option>');
			}
			/* ---------------------------------------------------------------------------- */
			if(id != null){
				$("legend").html("修改");
				$("#submit").attr("onclick", "qa_edit('/caseCenter/upd');");
				var one = WSFUNCTION.doPost("caseCenter/html/list", {id:id})[0];
				var two = WSFUNCTION.doPost("caseCenter/html/aratanolist", {id:id});
				/* console.log(two); */
				
				$("#classSel option[value='"+one.classid+"']").attr("selected", true);
				$("#casedesc").val(one.casedesc);
				$("#videourl").val(one.videourl);
				$("#imgurl1").attr("src", one.descimg);
				/* $("#imgurl2").attr("src", one.rotateimg1);
				$("#imgurl3").attr("src", one.rotateimg2);
				$("#imgurl4").attr("src", one.rotateimg3); */
				$("#imgurl99").attr("src", one.qrcode);
				
				var a_h = '<input type="button" class="btn-sel" value="客户案例" onclick="irohenka(this)"/>';
				for(var i=0;i<two.length;i++){
					var a_two = two[i];
					if(a_two.proname != '客户案例'){
						a_h += '<input type="button" value="'+a_two.proname+'" onclick="irohenka(this)"/>';
						$('#sel-box input[value="'+a_two.proname+'"]').attr("checked", "checked");
					}
					$('#atarashi1 textarea[typeset="'+a_two.proname+'"]').val(a_two.description);
					var pic_arr = a_two.pics.split('(#)'), img_arr = $('#atarashi2 img[typeset="'+a_two.proname+'"]');
					for(var j=0;j<pic_arr.length;j++){
						$(img_arr[j]).attr('src', pic_arr[j]);
					}
				}
				$('.plus-btn-div').html(a_h);
				if($('.plus-btn-div input').length < 9)
					$('.plus-btn-div').append('<input type="button" value="+ 添加项目" onclick="cbonclick()"/>');
			}
			/* ---------------------------------------------------------------------------- */
			
			$("#selectMaterial").bind("click", function(){
				var array = getMaterialArray();
				$("#"+img_i).attr("src", array[0]);
			});
			
			$(".description-textarea").bind("keyup", function(){
				if($(this).val().length >= 1000)
					$(this).val($(this).val().substring(0, 1000));
			});
			
		});
		
		function qa_edit(url){
			var _classid = $("#classSel").val();
			var _desc = $("#casedesc").val();
			var _descimg = $("#imgurl1").attr("src");
			/* var _rotateimg1 = $("#imgurl2").attr("src");
			var _rotateimg2 = $("#imgurl3").attr("src");
			var _rotateimg3 = $("#imgurl4").attr("src"); */
			var _qrcode = $("#imgurl99").attr("src");
			var _videourl = $('#videourl').val();
			
			var p = "{id:"+id+", classid:"+_classid+", casedesc:'"+_desc+"', descimg:'"+_descimg+"', qrcode:'"+_qrcode+"', videourl:'"+_videourl+"'}";
/* 			var p = "{id:"+id+", classid:"+_classid+", casedesc:'"+_desc+"', descimg:'"+_descimg+"', rotateimg1:'"+_rotateimg1+"', "
					+"rotateimg2:'"+_rotateimg2+"', rotateimg3:'"+_rotateimg3+"', qrcode:'"+_qrcode+"'}"; */
			var buspro = '[';
			var w_btnset = $('.plus-btn-div input');
			for(var i=0;i<w_btnset.length;i++){
				var wbval = $(w_btnset[i]).val(), ta = '', img = '';
				if(wbval != '+ 添加项目'){
					ta = $('#atarashi1 textarea[typeset="'+wbval+'"]').val().replace(/\s+/g, "");
					var imgset = $('#atarashi2 img[typeset="'+wbval+'"]');
					for(var j=0;j<imgset.length;j++){
						var issrc = $(imgset[j]).attr('src');
						if(issrc.indexOf('plus.png') != -1)
							issrc = '';
						if(j == 0)
							img += issrc;
						else
							if(img != '') 
								img += '(#)' + issrc;
					}
					var bpjson = '{proname:"'+wbval+'", description:"'+ta+'", pics:"'+img+'"}';
					if(ta != '' && img != ''){
						buspro += bpjson + ',';
					}
				}
			}
			if(buspro.indexOf(',') != -1)
				buspro = buspro.substring(0, buspro.length-1);
			buspro += ']';
//			console.log(buspro);
			
			$.ajax({
				url: url, 
				type: "POST",
				async: false,
				data: {caseCenter:p, caseBuspro:buspro},
				success: function(data){
					var d = eval("("+data+")");
					if(d.status == 1){
						WSFUNCTION.msgBox("信息", d.msg);
						gtView('/jsp/manage/caseCenter/caseIndex.jsp');
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