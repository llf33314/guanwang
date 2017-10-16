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
									   style="height: 30px;" placeholder="描述" maxlength="28">
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
							<div   class="control-group control-group1  " style="border: outset;">
									<span style="margin-left: 10px;font-size: 16px;">内容1:</span><span style="color:red;">(输入的内容不能带有&号)</span>
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
							<img id="_qrcode" onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
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
            debugger;
            $(obj).parent().remove();
            layer.closeAll('dialog');
        });
    }

    var contentTitles = "";
	var contents  = "" ;
    var imagesList  = "" ;
    var type = 3;
    var type1 = 2;
    var img_i = "imgurl1";
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
            $("#_qrcode").attr("src", one.qrcode);
//            $('input[name="ishot"][value="'+one.ishot+'"]').attr("checked",'checked');
//            $('input[name="ishome"][value="'+one.ishome+'"]').attr("checked",'checked');
            $('#pcpagetitle').val(one.pcpagetitle);
            $('#pcmeta').val(one.pcmeta);
            var contenttitles = one.contenttitles.split("&");
            var contents = one.contents.split("&");
            var imageslist = one.imageslist.split("&");
			for(var j = 0 ; j < contenttitles.length-1 ; j++){
                $('#neirong').append('<div class="control-group control-group1" style="border: outset;">'
                    +'<span style="margin-left: 10px;font-size: 16px;">内容'+type1+':</span><span style="color:red;">(输入的内容不能带有&号)</span>'
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
                    +' </div>');
                type++;
                type1++;
                textareats();
			}
			debugger
            var neirongList = document.getElementsByClassName("control-group1");
            var neirong22 = "";
            for(var i = 0 ; i < neirongList.length ; i++ ){
                neirong22 = contents[i];
                while (neirong22.indexOf("<br>") != -1) {
                    neirong22 = neirong22.replace("<br>","\n");
                }
               $($($(neirongList[i]).context.children[3]).context.children[0]).val(contenttitles[i]);
                $($($(neirongList[i]).context.children[4]).context.children[1]).val(neirong22);
                $($($(neirongList[i]).context.children[5]).context.children[0]).attr("src",imageslist[i]);

            }
        }
//        $("img").on("click", function(){
//            console.log($(this).attr("id"));
//            img_i = $(this).attr("id");
//            selectModel();
//        });

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

        $('#video_add1').on('click', function(){
            $('#neirong').append('<div class="control-group control-group1" style="border: outset;">'
                +'<span style="margin-left: 10px;font-size: 16px;">内容'+type1+':</span><span style="color:red;">(输入的内容不能带有&号)</span>'
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
                +' </div>');
			type++;
            type1++;
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
		var neirongList = document.getElementsByClassName("control-group1");
		for(var i = 0 ; i < neirongList.length ; i++ ){
            if ( i > 0 ) {
                contentTitles = contentTitles + "&";
                contents = contents + "&";
                imagesList = imagesList + "&";
            }
			contentTitles = contentTitles + $($($(neirongList[i]).context.children[3]).context.children[0]).val();
			contents = contents + $($($(neirongList[i]).context.children[4]).context.children[1]).val();
			imagesList = imagesList + $($($(neirongList[i]).context.children[5]).context.children[0]).attr("src");

		}
        while (contents.indexOf("\n") != -1) {
            contents = contents.replace("\n","<br>");
        }
        var _classid = $("#classid").val();
        var _logourl = $("#imgurl0").attr("src");
        var _pcname = $("#pcname").val();
        var _pcdesc = $("#pcdesc").val();
        var _qrcode = $("#_qrcode").attr("src");
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
            +"pcpagetitle:'"+_pcpagetitle+"', pcmeta:'"+_pcmeta+"', ishome:'"+_ishome+"'}";


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
</body>
</html>