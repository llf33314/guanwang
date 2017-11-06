<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>微信营销 </title>
	<style type="text/css">
	</style>
	<script type="text/javascript" src="jsp/manage/article/ajaxfileupload.js"></script>
	<script type="text/javascript" src="utf8-jsp/ueditor.config.js"></script>
	<script type="text/javascript" src="utf8-jsp/ueditor.all.min.js"></script>
	<script src="templatelibs/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="/js/layer/layer.js"></script>
</head>
<body>
<div class="row-fluid" style="height: 100%">
	<!-- block -->
	<div class="block">
		<div class="navbar navbar-inner block-header">
			<div class="muted pull-left">微信营销</div>
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
									   style="height: 30px;" placeholder="名称" maxlength="7">
							</div>
						</div>
						<div class="control-group">
							<div class="controls" style="margin-left: 40px;">
								<input class="input-xlarge span11" id="pcdesc" type="text"
									   style="height: 30px;" placeholder="描述" maxlength="17">
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
							<label class="control-label" for="selectError" style="width: auto;">LOGO&nbsp;&nbsp; </label>
							<span class="help-inline"></span>
							<img id="imgurl0"  onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
						</div>
						<div id="neirong">
							<div   class="control-group control-group1  " style="border: outset;" id="control-group0">
									<span style="margin-left: 10px;font-size: 16px;">内容1:</span><span style="color:red;">(输入的内容不能带有&号)</span>
								<span onclick="upContext(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: #375bff;cursor:pointer;color:#fff;">上移</span>
								<span onclick="downContext(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: #2746ff;cursor:pointer;color:#fff;">下移</span>
								<span onclick="dels(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: red;cursor:pointer;color:#fff;">删除内容</span>
								<div class="controls" style="margin-left: 40px;    margin-top: 15px;">
									<input class="input-xlarge span11" id="pcpagetitle1" type="text"
										   style="height: 30px;" placeholder="内容标题" maxlength="50">
								</div>
								<div class="controls" style="margin-left: 40px; margin-top: 15px;">
									<div onclick="toTc1Show();" style="width:60px;color:#fff; text-align: center; cursor: pointer;padding:4px 0; background: #288ee6;" class="stylebtn">A</div>
									<textarea  class="span11 span113" id="pcpagetitle2" rows="3" cols="20"></textarea>
								</div>
								<div class="controls" style="margin-left: 40px; margin-top: 15px;">
									<img id="imgurl1" onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: -6px;border: 1px solid #ccc;"/>
								</div>
								<div class="controls controlsVoide" style="margin-left: 40px; margin-top: 15px;">
									<button type="button" class="btn btn-primary" onclick="addVoide(this);">添加视频</button>
								</div>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">内容按钮&nbsp;&nbsp; </label>
							<span class="help-inline"></span>
							<button type="button" id="video_add1" class="btn btn-primary">添加</button>
						</div>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">二维码&nbsp;&nbsp; </label>
							<span class="help-inline"></span>
							<img id="_qrcode" onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png" style="height: 150px;margin-left: 20x;border: 1px solid #ccc;"/>
						</div>
						<div class="form-actions" style="width: 76%;">
							<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/productCenterNew/add');">提交</button>
							<button type="button" class="btn" onclick="gtView('jsp/manage/productCenter/index.jsp');">取消</button>
						</div>
					</fieldset>
				</form>

			</div>
		</div>
	</div>
	<%--弹窗--%>
	<style>
		.tcShadow{width:100%;height:100%; background: rgba(0,0,0,0.2);z-index: 1;}
		.toTc{ width:100%;height:100%;position: fixed;top:0;left:0}
		.tc{width:20%;height: 250px; background: #fff; position: fixed;top:30%;left:40%; }
		.tc 	.title{font-size:18px; text-align: center;wodth:100%; padding-top:30px;}
		.shuru{ width:90%;margin:10px auto; font-size:16px; padding-top:15px;}
		.shuru input{width:80%;height:30px;line-height:30px;}
		.btnRow{ width:90%;margin:10px auto; position: relative}
		.btnRow div{ display: inline-block;width:50px; height:30px;line-height: 30px; text-align: center;
			color: #fff;text-align: center}
		.btnRow .savebtn{ background: deepskyblue; position:absolute;left:23%;}
		.btnRow .cancelbtn{ background: #ccc;position:absolute;right:23%;}
	</style>
	<div class="toTc" style="display: none;" id="toTc1">

		<div class="tcShadow"> </div>
		<div class="tc">
			<div class="title">链接||颜色</div>
			<div class="shuru">
				链接：<input  type="text"  id="saveToTc1"/>
			</div>
			<div class="shuru">
				颜色：<input   type="color"  id="saveToTc2"/>
			</div>
			<div class="btnRow">
				<div class="btn savebtn" onclick="Test();">确定</div>
				<div class="  btn cancelbtn" onclick="toTc1Hide();">取消</div>
			</div>
		</div>

	</div>
	<!-- /block -->
</div>
<script type="text/javascript">
    function dels(obj) {
        layer.confirm('删除后将不可恢复,你确定要删除吗？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $(obj).parent().remove();
            layer.closeAll('dialog');
        });
    }
    var voideImageType = 0;
    var qrcodeType = 0;
    function addVoide(obj){
        if(obj.parentNode.children.length>4){
            WSFUNCTION.msgBox("信息", "每块内容最多添加三个视频！");
            return;
		}
        $(obj.parentNode).append('<div style="    border: 1px solid #ccc; padding: 5px; margin: 3px;margin-left: -3px; margin-right: 60px;"><span>视频展示图片：</span> '
            +'<img id="images'+voideImageType+'" onclick="selectModel8(this)" src="/images/duofenIntroduction/plus.png" style="height: 90px;margin-left: -6px;border: 1px solid #ccc;"/>'
            +'<input class="input-xlarge span5" type="text"style="height: 30px;margin-left: 13px;"placeholder="视频链接">'
			+'<input type="button" value="删除" style="    margin-left: 13px; height: 27px;width: 62px;" onclick="removeVoide(this);"> '
            +'</div>');
        voideImageType++;
    };
    function removeVoide(obj) {
        layer.confirm('删除后将不可恢复,你确定要删除吗？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $(obj.parentNode).remove();
            layer.closeAll('dialog');
        });
    }
    function removeQrcode(obj) {
        layer.confirm('删除后将不可恢复,你确定要删除吗？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $(obj.parentNode).remove();
            layer.closeAll('dialog');
        });
    }
    //上移
    function upContext(obj) {
        var neirongList = document.getElementsByClassName("control-group1");
        for(var i = 0 ; i < neirongList.length ; i++ ){
            if($(obj.parentNode).attr("id") ==$(neirongList[i]).attr("id")){
				if(i==0){
				    return;
				}else{
				    var htmls = neirongList[i-1].innerHTML;
				    var html0 = $($($(neirongList[i-1]).context.children[5]).context.children[0]).val();
                    var html1 = $($($(neirongList[i-1]).context.children[6]).context.children[1]).val();
                    var voideList  = "";
                    if($(neirongList[i-1]).context.children[8].children.length > 1){
						for (var j = 1 ; j < $(neirongList[i-1]).context.children[8].children.length ; j++){
                            if( j > 1 && j ==$(neirongList[i-1]).context.children[8].children.length-1){
                                voideList = voideList + $($($(neirongList[i-1]).context.children[8]).context.children[j].children[2]).val();
                            }else{
                                voideList = voideList + $($($(neirongList[i-1]).context.children[8]).context.children[j].children[2]).val()+",";
                            }
						}
					}
                    $(neirongList[i-1]).html(neirongList[i].innerHTML);
					$($($(neirongList[i-1]).context.children[5]).context.children[0]).val($($($(neirongList[i]).context.children[5]).context.children[0]).val());
                    $($($(neirongList[i-1]).context.children[6]).context.children[1]).val($($($(neirongList[i]).context.children[6]).context.children[1]).val());
                    if($(neirongList[i]).context.children[8].children.length > 1){
                        for (var j = 1 ; j < $(neirongList[i-1]).context.children[8].children.length ; j++){
                                $($($(neirongList[i-1]).context.children[8]).context.children[j].children[2]).val($($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val());
                        }
                    }
                    $(neirongList[i]).html(htmls);
                    $($($(neirongList[i]).context.children[5]).context.children[0]).val(html0);
                    $($($(neirongList[i]).context.children[6]).context.children[1]).val(html1);
					if(voideList){
                        var voide  = voideList.split(",");
                        for (var j = 1 ; j < voide.length+1 ; j++){
                               $($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val(voide[j-1]);
                        }
					}

				}
			}
        }
    }
    //下移
    function downContext(obj) {
        var neirongList = document.getElementsByClassName("control-group1");
        for(var i = 0 ; i < neirongList.length ; i++ ){
            if($(obj.parentNode).attr("id") ==$(neirongList[i]).attr("id")){
                if(i==neirongList.length-1){
                    return;
                }else{
                    var htmls = neirongList[i+1].innerHTML;
                    var html0 = $($($(neirongList[i+1]).context.children[5]).context.children[0]).val();
                    var html1 = $($($(neirongList[i+1]).context.children[6]).context.children[1]).val();
                    var voideList  = "";
                    if($(neirongList[i+1]).context.children[8].children.length > 1){
                        for (var j = 1 ; j < $(neirongList[i+1]).context.children[8].children.length ; j++){
                            if( j > 1 && j ==$(neirongList[i+1]).context.children[8].children.length-1){
                                voideList = voideList + $($($(neirongList[i+1]).context.children[8]).context.children[j].children[2]).val();
                            }else{
                                voideList = voideList + $($($(neirongList[i+1]).context.children[8]).context.children[j].children[2]).val()+",";
                            }
                        }
                    }
                    $(neirongList[i+1]).html(neirongList[i].innerHTML);
                    $($($(neirongList[i+1]).context.children[5]).context.children[0]).val($($($(neirongList[i]).context.children[5]).context.children[0]).val());
                    $($($(neirongList[i+1]).context.children[6]).context.children[1]).val($($($(neirongList[i]).context.children[6]).context.children[1]).val());
                    if($(neirongList[i]).context.children[8].children.length > 1){
                        for (var j = 1 ; j < $(neirongList[i+1]).context.children[8].children.length ; j++){
                            $($($(neirongList[i+1]).context.children[8]).context.children[j].children[2]).val($($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val());
                        }
                    }
                    $(neirongList[i]).html(htmls);
                    $($($(neirongList[i]).context.children[5]).context.children[0]).val(html0);
                    $($($(neirongList[i]).context.children[6]).context.children[1]).val(html1);
                    if(voideList){
                        var voide  = voideList.split(",");
                        for (var j = 1 ; j < voide.length+1 ; j++){
                            $($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val(voide[j-1]);
                        }
                    }

                }
            }
        }
    }
    var contentTitles = "";
	var contents  = "" ;
    var imagesList  = "" ;
    var type = 3;
    var type1 = 2;
    var img_i = "imgurl1";
    var controlType = 1;
    var id = <%=request.getParameter("i") %>;
    $(function(){
        var eins = WSFUNCTION.doPost("productCenterNew/html/typelist", {});
        for(var i=(eins.length-1);i>-1;i--){
            $("#classid").append('<option value="'+eins[i].id+'">'+eins[i].pctypename+'</option>');
        }
        if(id != null){
            $("legend").html("修改");
            $("#submit").attr("onclick", "qa_edit('/productCenterNew/upd');");
            var one = WSFUNCTION.doPost("productCenterNew/html/list", {id:id})[0];
            $("#classid option[value='"+one.classid+"']").attr("selected", true);
            if(one.logourl == '') one.logourl = '/images/duofenIntroduction/plus.png';
            $("#imgurl0").attr("src", one.logourl);
            $("#pcname").val(one.pcname);
            $("#pcdesc").val(one.pcdesc);
            //$("#_qrcode").attr("src", one.qrcode);
            var qrcodes = one.qrcode ? one.qrcode.split("&") : "";
            var qrcodeList = one.qrcodeList ?　one.qrcodeList.split("&") : "";
            if(qrcodes.length > 0){
					for (var i = 0 ; i < qrcodes.length ; i++){
					    if(qrcodes[i]){
							$("#_qrcode").parent().append('<div style="display: inline-block;"><img id="_qrcode'+qrcodeType+'" class="qrcode_type qrcode_type11" '+
							'onclick="selectModel8(this);" src="'+qrcodes[i]+'" style="height: 150px;margin-left: 20px;border: 1px solid #ccc;"/><span style="position: absolute;'+
                                ' cursor: pointer;" onclick="removeQrcode(this)">X</span><input value="'+qrcodeList[i]+'"  style="width: 152px; position: absolute;  margin: 152px -152px;" placeholder="请输入二维码备注！" maxlength="10" type="text"  /></div>');
							qrcodeType++;
                        }
					}
			}
            $('#pcpagetitle').val(one.pcpagetitle);
            $('#pcmeta').val(one.pcmeta);
            var contenttitles = one.contenttitles.split("&");
            var contents = one.contents.split("&");
            var imageslist = one.imageslist.split("&");
            var voideImageList =  one.voideImageList  ? one.voideImageList.split("&") :"";
            var voideList = one.voideList ? one.voideList.split("&") :"";

            for(var j = 0 ; j < imageslist.length-1 ; j++){
                $('#neirong').append('<div class="control-group control-group1" style="border: outset;" id="control-group'+controlType+'">'
                    +'<span style="margin-left: 10px;font-size: 16px;">内容'+type1+':</span><span style="color:red;">(输入的内容不能带有&号)</span>'
					+'<span onclick="dels(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: red;cursor:pointer;color:#fff;">删除内容</span>'
                    +'<span onclick="upContext(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: #375bff;cursor:pointer;color:#fff;">上移</span>'
                    +'<span onclick="downContext(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: #2746ff;cursor:pointer;color:#fff;">下移</span>'
                    +'<div class="controls" style="margin-left: 40px;    margin-top: 15px;">'
                    +'<input class="input-xlarge span11" id="pcpagetitle1" type="text"'
                    +'style="height: 30px;" placeholder="内容标题" maxlength="50">'
                    +'</div>'
                    +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
					+'<div onclick="toTc1Show();" style="width:60px;color:#fff; text-align: center; cursor: pointer;padding:4px 0; background: #288ee6;" class="stylebtn">A</div>'
                    +'<textarea  class="span11 span113" id="pcpagetitle2" rows="3" cols="20"></textarea>'
                    +'</div>'
                    +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                    +'<img id="imgurl'+type
                    +'" onclick="selectModel8(this)" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: -6px;border: 1px solid #ccc;"/>'
                    +'</div>'
                    +'<div class="controls controlsVoide" style="margin-left: 40px; margin-top: 15px;">'
                    +'<button type="button" class="btn btn-primary" onclick="addVoide(this);">添加视频</button>');
                $('#neirong').append('</div>'
                    +' </div>');
                type++;
                type1++;
                controlType++;
                textareats();
			}
            if(voideImageList.length > 0){
                	var controlsVoideList = $(".controlsVoide");
                	for (var j = 0 ; j < controlsVoideList.length ; j++){
                	    if(voideImageList[j] !="test"){
                            var voideImageLists = voideImageList[j].split(",");
                            var voideLists = voideList[j].split(",");
                            for(var k = 0 ; k < voideImageLists.length ; k++) {
                                $(controlsVoideList[j]).append('<div style="border: 1px solid #ccc; padding: 5px; margin: 3px;margin-left: -3px; margin-right: 60px;"><span>视频展示图片：</span> '
                                    + '<img id="images' + voideImageType + '" onclick="selectModel8(this)" src="' + voideImageLists[k] + '" style="height: 90px;margin-left: -6px;border: 1px solid #ccc;"/>'
                                    + '<input class="input-xlarge span5" value="'+voideLists[k]+'" type="text"style="height: 30px;margin-left: 13px;"placeholder="视频链接">'
                                    + '<input type="button" value="删除" style="    margin-left: 13px; height: 27px;width: 62px;" onclick="removeVoide(this);"> '
                                    + '</div>');
                                voideImageType++;
                            }
						}

					}
            }
            var neirongList = document.getElementsByClassName("control-group1");
            var neirong22 = "";
            for(var i = 0 ; i < neirongList.length ; i++ ){
                neirong22 = contents[i];
                while (neirong22.indexOf("<br>") != -1) {
                    neirong22 = neirong22.replace("<br>","\n");
                }
               $($($(neirongList[i]).context.children[5]).context.children[0]).val(contenttitles[i]);
                $($($(neirongList[i]).context.children[6]).context.children[1]).val(neirong22);
                $($($(neirongList[i]).context.children[7]).context.children[0]).attr("src",imageslist[i]);

            }
        }
        $("#selectMaterial").bind("click", function(){
            var array = getMaterialArray();
            if(img_i == "_qrcode"){
                img_i = "_qrcode" + qrcodeType;
                console.log($("#_qrcode").parent()+"=====");
                $("#_qrcode").parent().append('<div style="display: inline-block;"><img id="_qrcode'+qrcodeType+'" class="qrcode_type qrcode_type11" onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png"'+
				'style="height: 150px;margin-left: 20px;border: 1px solid #ccc;"/><span style="position: absolute;'+
               ' cursor: pointer;" onclick="removeQrcode(this)">X</span><input   style="    width: 152px; position: absolute;  margin: 152px -152px;" placeholder="请输入二维码备注！" maxlength="10" type="text"/></div>');
                qrcodeType++;
            }
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


        $('#video_add1').on('click', function(){
            $('#neirong').append('<div class="control-group control-group1" style="border: outset;" id="control-group'+controlType+'">'
                +'<span style="margin-left: 10px;font-size: 16px;">内容'+type1+':</span><span style="color:red;">(输入的内容不能带有&号)</span>'
                +'<span onclick="upContext(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: #375bff;cursor:pointer;color:#fff;">上移</span>'
                +'<span onclick="downContext(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: #2746ff;cursor:pointer;color:#fff;">下移</span>'
                +'<span onclick="dels(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: red;cursor:pointer;color:#fff;">删除内容</span>'
                +'<div class="controls" style="margin-left: 40px;    margin-top: 15px;">'
                +'<input class="input-xlarge span11" id="pcpagetitle1" type="text"'
                +'style="height: 30px;" placeholder="内容标题" maxlength="50">'
                +'</div>'
                +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                +'<div onclick="toTc1Show();" style="width:60px;color:#fff; text-align: center; cursor: pointer;padding:4px 0; background: #288ee6;" class="stylebtn">A</div>'
                +'<textarea  class="span11 span113" id="pcpagetitle2" rows="3" cols="20"></textarea>'
                +'</div>'
                +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                +'<img id="imgurl'+type
				+'" onclick="selectModel8(this)" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: -6px;border: 1px solid #ccc;"/>'
                +'</div>'
                +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                +'<button type="button" class="btn btn-primary" onclick="addVoide(this);">添加视频</button>'
                +'</div>'
                +' </div>');
			type++;
            type1++;
            controlType++;
            textareats();
        });

    });
    function selectModel8(obj){
        console.log($(obj).attr("id"));
        img_i = $(obj).attr("id");
        selectModel();
    }
    function qa_edit(url){
        var contentTitles = "";
        var contents  = "" ;
        var imagesList  = "" ;
        var voideImageList  = "" ;
        var voideList  = "" ;
        var neirongList = document.getElementsByClassName("control-group1");
		for(var i = 0 ; i < neirongList.length ; i++ ){
            if ( i > 0 ) {
                contentTitles = contentTitles + "&";
                contents = contents + "&";
                imagesList = imagesList + "&";
                voideImageList = voideImageList + "&"
                voideList = voideList + "&"
            }
			contentTitles = contentTitles + $($($(neirongList[i]).context.children[5]).context.children[0]).val();
			contents = contents + $($($(neirongList[i]).context.children[6]).context.children[1]).val();
			imagesList = imagesList + $($($(neirongList[i]).context.children[7]).context.children[0]).attr("src");
            if($(neirongList[i]).context.children[8].children.length > 1){
                for (var j = 1 ; j < $(neirongList[i]).context.children[8].children.length ; j++){
                    if($($($(neirongList[i]).context.children[8]).context.children[j].children[1]).attr("src") == "/images/duofenIntroduction/plus.png"){
                        if($($(neirongList[i]).context.children[8]).context.children[j].children[1].parentNode.children.length>4){
                            $($($(neirongList[i]).context.children[8]).context.children[j].children[1].parentNode.children[4]).html('<span style="color: red;">请选择视频展示图片</span>');
                        }else {
                            $($($(neirongList[i]).context.children[8]).context.children[j].children[1].parentNode).append('<span style="color: red;">请选择视频展示图片</span>');
                        }
                        return;
                    }
                    if(!$($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val()){
                        if($($(neirongList[i]).context.children[8]).context.children[j].children[1].parentNode.children.length>4){
                            $($($(neirongList[i]).context.children[8]).context.children[j].children[1].parentNode.children[4]).html('<span style="color: red;">请输入视频链接</span>');
                        }else {
                            $($($(neirongList[i]).context.children[8]).context.children[j].children[1].parentNode).append('<span style="color: red;">请输入视频链接</span>');
                        }
                        return;
                    }
                    if( j > 1 && j ==$(neirongList[i]).context.children[8].children.length-1){
                        voideImageList = voideImageList + $($($(neirongList[i]).context.children[8]).context.children[j].children[1]).attr("src");
                        voideList = voideList + $($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val();
                    }else{
                        if(j ==$(neirongList[i]).context.children[8].children.length-1){
                            voideImageList = voideImageList + $($($(neirongList[i]).context.children[8]).context.children[j].children[1]).attr("src");
                            voideList = voideList + $($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val();
						}else{
                            voideImageList = voideImageList + $($($(neirongList[i]).context.children[8]).context.children[j].children[1]).attr("src")+",";
                            voideList = voideList + $($($(neirongList[i]).context.children[8]).context.children[j].children[2]).val()+",";
						}

					}
				}
			}else {
                voideImageList = voideImageList +"test";
                voideList = voideList +"test";
            }

        }
        while (contents.indexOf("\n") != -1) {
            contents = contents.replace("\n","<br>");
        }
        var _classid = $("#classid").val();
        var _logourl = $("#imgurl0").attr("src");
        var _pcname = $("#pcname").val();
        var _pcdesc = $("#pcdesc").val();
        var _qrcode = "";
        var qrcodeList ="";
        var qrcodeTypeList = $(".qrcode_type11");
        for (var k = 0 ; k < qrcodeTypeList.length ; k++){
            if(!$.trim($(qrcodeTypeList[k].parentNode).context.children[2].value)){
                WSFUNCTION.msgBox("信息", "请输入二维码备注!");
                return;
            }
            _qrcode = _qrcode + $(qrcodeTypeList[k]).attr("src");
            qrcodeList = qrcodeList + $.trim($(qrcodeTypeList[k].parentNode).context.children[2].value);
            if(k != (qrcodeTypeList.length-1)){
                _qrcode = _qrcode +"&"
                qrcodeList = qrcodeList +"&"
            }

		}
        var _ishot = 1;
        var _ishome = 1;
        var _pcpagetitle = $('#pcpagetitle').val();
        var _pcmeta = $('#pcmeta').val();
        if(_logourl == "/images/duofenIntroduction/plus.png"){
            WSFUNCTION.msgBox("信息", "请选择Logo!");
            return;
		}
        if(!_pcname){
            WSFUNCTION.msgBox("信息", "请输入名称!");
            return;
        }
        if(!_pcdesc){
            WSFUNCTION.msgBox("信息", "请输入描述!");
            return;
        }
        if(!_pcpagetitle){
            WSFUNCTION.msgBox("信息", "请输入页面标题!");
            return;
        }
        if(!_pcmeta){
            WSFUNCTION.msgBox("信息", "请输入meta!");
            return;
        }
//        if(_logourl.indexOf('plus.png') != -1) _logourl = '';
//        if(_qrcode.indexOf('plus.png') != -1) _qrcode = '';
        var p = "{id:"+id+", classid:"+_classid+", logourl:'"+_logourl+"', pcname:'"+_pcname+"', pcdesc:'"+_pcdesc+"', "
            +"contenttitles:'"+contentTitles+"', contents:'"+contents+"', imageslist:'"+imagesList+"', qrcode:'"+_qrcode+"', ishot:'"+_ishot+"', "
			+" voideImageList:'"+voideImageList+"', voideList:'"+voideList+"', "
            +"pcpagetitle:'"+_pcpagetitle+"', pcmeta:'"+_pcmeta+"', ishome:'"+_ishome+"',qrcodeList:'"+qrcodeList+"'}";
        $.ajax({
            url: url,
            type: "POST",
            async: false,
            data: {productCenterNew:p},
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
    function textareats() {
        var textareats  = $(".span113");
        for(var i = 0 ; i < textareats.length ; i++){
            select(textareats[i], tanchu);
        }
    }
    textareats();
    var type11 = 0 ;
    var  obj = null;
    var t = "";
    function select(o, fn){
        o.onmouseup = function(e){
            var event = window.event || e;
            var target = event.srcElement ? event.srcElement : event.target;
            if (/input|textarea/i.test(target.tagName) && /firefox/i.test(navigator.userAgent)) {
                //Firefox在文本框内选择文字
                var staIndex=target.selectionStart;
                var endIndex=target.selectionEnd;
                if(staIndex!=endIndex){
                    t =target.value.substring(staIndex,endIndex);
                }
            }
            else{
//获取选中文字
                t = document.selection == undefined ? document.getSelection().toString():document.selection.createRange().text;
            }
            obj = this;
        }
    }
    function toTc1Show(){
        $('#toTc1').show();
        type11 = 0;
    }
    function toTc1Hide(){
        $('#toTc1').hide();
        type11 = 0;
    }
	/*]]select=*/
    function tanchu(txt,tar){
        alert("文字属于"+tar.tagName+"元素，选中内容为："+txt);
    }


    function getSelectedText() {
        if (window.getSelection) {
            return window.getSelection().toString();
        }else if (document.getSelection) {
            return document.getSelection();
        }else if (document.selection) {
            return document.selection.createRange().text;
        }
    }
    function Test(){
        var  saveToTc1 = $.trim($("#saveToTc1").val());
        var  saveToTc2 = $.trim($("#saveToTc2").val());
        if(t.length>0){
            var content=obj.value;
            if(saveToTc1){
                content=content.replace(t,'<a href="'+saveToTc1+'"><span style="color: '+saveToTc2+';">'+t+'</span></a>');	 obj.value=content;
            }else {
                content=content.replace(t,'<span style="color: '+saveToTc2+';">'+t+'</span>');	 obj.value=content;
            }
        }
        toTc1Hide();
    }
</script>
<style>
	.qrcode_type{position: relative}
	/*position:absolute; */
</style>
</body>
</html>