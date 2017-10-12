<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/jsp/manage/material/Material.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>运营课程</title>
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
			<div class="muted pull-left">运营课程</div>
		</div>
		<div class="block-content collapse in">
			<div class="span12">
				<form class="form-horizontal">
					<fieldset>
						<legend>新增</legend>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">展示图片：&nbsp;&nbsp; </label>
							<span class="help-inline"></span>
							<img id="logourl"  onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: 50px;border: 1px solid #ccc;"/>
						</div>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">课程标题：&nbsp;&nbsp;</label>
							<div class="controls" style="margin-left: 40px;">
								<input class="input-xlarge span11" id="pcdesc" type="text"
									   style="height: 30px;" placeholder="请输入课程标题" maxlength="25">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">讲师：&nbsp;&nbsp;</label>
							<div class="controls" style="margin-left: 40px;">
								<select id="teacherid" style="width: auto;"></select>
								<span class="help-inline"></span>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">报名状态：</label>
							<div class="controls" style="margin-left: 70px;">
								<span>类型：&nbsp;&nbsp;&nbsp;&nbsp;</span>
								<label class="radio inline">
									<input class="radio" name="applystate" type="radio" value="1"> 免费
								</label>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<label class="radio inline">
									<input class="radio" name="applystate" type="radio" value="2"> 报名
								</label>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<label class="radio inline">
									<input class="radio" name="applystate" type="radio" value="3" checked="checked"> 已结束
								</label>
								<br>
								<span>描述：&nbsp;&nbsp;&nbsp;&nbsp;</span>
								<input class="input-xlarge span11" id="applydesc" type="text"
									   style="height: 30px;" placeholder="请输入报名描述" maxlength="25">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">报名人数：</label>
							<div class="controls" style="margin-left: 40px;">
								<input class="input-xlarge span11" id="applycount" type="number"
									   style="height: 30px;" placeholder="请填写报名人数" maxlength="25">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">内容标题：</label>
							<div class="controls" style="margin-left: 40px;">
								<input class="input-xlarge span11" id="contenttitles" type="text"
									   style="height: 30px;" placeholder="请输入内容标题" maxlength="30">
							</div>
						</div>
						<div id="neirong">
							<div  class="control-group control-group1  " style="border: outset;">
									<span style="margin-left: 10px;font-size: 16px;">内容1:</span><span style="color:red;">(输入的内容不能带有&号)</span>
								<span onclick="dels(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: red;cursor:pointer;color:#fff;">删除内容</span>
								<div class="controls" style="margin-left: 40px; margin-top: 15px;">
									<span style="color:#08c;">
										如果有换行,请用#号隔开。如：1、支持手机端现场操作#2、支持大屏幕显示 。
										给特殊文字加颜色加跳转链接，如：“在线报名” --> <xmp><a style="color:red" href="https://www.duofriend.com">在线报名</a></xmp>
										颜色：红-->red 、淡蓝-->cornflowerblue
									</span>
									<textarea  class="table-textareat span11" id="pcpagetitle5" rows="3" cols="20">
									</textarea>
								</div>
								<div class="controls" style="margin-left: 40px; margin-top: 15px;">
									<img id="imgurl1" onclick="selectModel8(this);" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: -6px;border: 1px solid #ccc;"/>
								</div>
								<div class="controls" style="margin-left: 40px; margin-top: 15px;">
									<input class="input-xlarge span11" id="pcpagetitle3" type="text"
										   style="height: 30px;" placeholder="视频链接">
								</div>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="selectError" style="width: auto;">内容按钮&nbsp;&nbsp; </label>
							<span class="help-inline"></span>
							<button type="button" id="video_add1" class="btn btn-primary">添加</button>
						</div>
						<div class="form-actions" style="width: 76%;">
							<button type="button" id="submit" class="btn btn-primary" onclick="qa_edit('/operationCourse/add');">提交</button>
							<button type="button" class="btn" onclick="gtView('jsp/manage/operationCourse/index.jsp');">取消</button>
						</div>
					</fieldset>
				</form>

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
        var eins = WSFUNCTION.doPost("operationCourse/html/teacherlist", {});
        for(var i=(eins.length-1);i>-1;i--){
            $("#teacherid").append('<option value="'+eins[i].id+'">'+eins[i].teachername+'</option>');
        }
        if(id != null){
            $("legend").html("修改");
            $("#submit").attr("onclick", "qa_edit('/operationCourse/upd');");
            var one = WSFUNCTION.doPost("operationCourse/html/list", {id:id})[0];
            debugger;
            $("#teacherid option[value='"+one.teacherid+"']").attr("selected", true);
            if(one.logourl == '') one.logourl = '/images/duofenIntroduction/plus.png';
            $("#logourl").attr("src", one.logourl);
            $("#pcname").val(one.pcname);
            $("#pcdesc").val(one.pcdesc);
            $("#applydesc").val(one.applydesc);
            $("#applycount").val(one.applycount);
            $("#contenttitles").val(one.contenttitles);
            $('input[name="applystate"][value="'+one.applystate+'"]').attr("checked",'checked');
            $('#pcpagetitle').val(one.pcpagetitle);
            $('#pcmeta').val(one.pcmeta);
            var contents = one.contents.split("&");
            var imageslist = one.imageslist.split("&");
            var videolist = one.videolist.split("&");
            for(var j = 0 ; j < contents.length-1 ; j++){
                $('#neirong').append('<div class="control-group control-group1" style="border: outset;">'
                    +'<span style="margin-left: 10px;font-size: 16px;">内容'+type1+':</span><span style="color:red;">(输入的内容不能带有&号)</span>'
					+'<span onclick="dels(this);" style="float: right;margin:5px 20px 0 0 ; padding:3px 10px; font-size:12px;border-radius: 4px; background: red;cursor:pointer;color:#fff;">删除内容</span>'
                    +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                    +'<span style="color:#08c;">'
                    +'如果有换行,请用#号隔开。如：1、支持手机端现场操作#2、支持大屏幕显示 。'
                    +'	给特殊文字加颜色加跳转链接，如：“在线报名” --> <xmp><a style="color:red" href="https://www.duofriend.com">在线报名</a></xmp>'
                    +' 颜色：红-->red 、淡蓝-->cornflowerblue</span>'
                    +'<textarea  class="table-textareat span11" id="pcpagetitle5" rows="3" cols="20">'
                    +'</textarea>'
                    +'</div>'
                    +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                    +'<img id="imgurl'+type
                    +'" onclick="selectModel8(this)" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: -6px;border: 1px solid #ccc;"/>'
                    +'</div>'
                    +' <div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                    +'<input class="input-xlarge span11" id="pcpagetitle3" type="text"'
                    +'style="height: 30px;" placeholder="视频链接">'
                    +'</div>'
                    +'</div>');
                type++;
                type1++;
			}
            var neirongList = document.getElementsByClassName("control-group1");
            for(var i = 0 ; i < neirongList.length ; i++ ){
               $($($(neirongList[i]).context.children[3]).context.children[1]).val(contents[i]);
                $($($(neirongList[i]).context.children[4]).context.children[0]).attr("src",imageslist[i]);
                $($($(neirongList[i]).context.children[5]).context.children[0]).val(videolist[i]);
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
                +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                +'<span style="color:#08c;">'
                +'如果有换行,请用#号隔开。如：1、支持手机端现场操作#2、支持大屏幕显示 。'
                +'	给特殊文字加颜色加跳转链接，如：“在线报名” --> <xmp><a style="color:red" href="https://www.duofriend.com">在线报名</a></xmp>'
                +' 颜色：红-->red 、淡蓝-->cornflowerblue</span>'
                +'<textarea  class="table-textareat span11" id="pcpagetitle5" rows="3" cols="20">'
                +'</textarea>'
                +'</div>'
                +'<div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                +'<img id="imgurl'+type
				+'" onclick="selectModel8(this)" src="/images/duofenIntroduction/plus.png" style="height: 200px;margin-left: -6px;border: 1px solid #ccc;"/>'
                +'</div>'
                +' <div class="controls" style="margin-left: 40px; margin-top: 15px;">'
                +'<input class="input-xlarge span11" id="pcpagetitle3" type="text"'
                +'style="height: 30px;" placeholder="视频链接">'
                +'</div>'
                +'</div>');
			type++;
            type1++;
        });

    });
    function selectModel8(obj){
        console.log($(obj).attr("id"));
        img_i = $(obj).attr("id");
        selectModel();
    }
    function qa_edit(url){
        var teacherid = $("#teacherid").val();
        var logourl = $("#logourl").attr("src");
        var pcdesc = $.trim($("#pcdesc").val());
        var applystate = $('input[name="applystate"]:checked').val();
        var applydesc = $.trim($('#applydesc').val());
        var applycount = $('#applycount').val();
        var contenttitles = $.trim($('#contenttitles').val());
        if(logourl == "/images/duofenIntroduction/plus.png"){
            WSFUNCTION.msgBox("信息", "请选择展示图片");
            return;
        }
        if(!pcdesc){
            WSFUNCTION.msgBox("信息", "请输入课程标题");
            return;
        }
        if(!applydesc){
            WSFUNCTION.msgBox("信息", "请输入报名描述");
            return;
        }
        if(!applycount){
            WSFUNCTION.msgBox("信息", "请输入报名人数");
            return;
        }
        if(parseInt(applycount) < 1){
            WSFUNCTION.msgBox("信息", "请输入正确报名人数");
            return;
        }
        if(!contenttitles){
            WSFUNCTION.msgBox("信息", "请输入内容标题");
            return;
        }

        var contents  = "" ;
        var imagesList  = "" ;
        var videolist  = "" ;
        var neirongList = document.getElementsByClassName("control-group1");
		for(var i = 0 ; i < neirongList.length ; i++ ){
            if ( i > 0 ) {
                contents = contents + "&";
                imagesList = imagesList + "&";
                videolist = videolist + "&";
            }
            contents = contents + $.trim($($($(neirongList[i]).context.children[3]).context.children[1]).val());
			imagesList = imagesList + $($($(neirongList[i]).context.children[4]).context.children[0]).attr("src");
            videolist = videolist + $.trim($($($(neirongList[i]).context.children[5]).context.children[0]).val());

        }
        var p = "{id:"+id+", teacherid:"+teacherid+", logourl:'"+logourl+"',  pcdesc:'"+pcdesc+"', "
            +"applystate:'"+applystate+"', applydesc:'"+applydesc+"', applycount:'"+applycount+"', contenttitles:'"+contenttitles+"', contents:'"+contents+"', "
            +"imageslist:'"+imagesList+"',  videolist:'"+videolist+"'}";


        $.ajax({
            url: url,
            type: "POST",
            async: false,
            data: {operationCourse:p},
            success: function(data){
                var d = eval("("+data+")");
                if(d.status == 1){
                    WSFUNCTION.msgBox("信息", d.msg);
                    gtView('/jsp/manage/operationCourse/index.jsp');
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