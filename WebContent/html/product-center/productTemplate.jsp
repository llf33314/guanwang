<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>@@s1@@</title>
	<meta name="keywords" content="@@s2@@"/>
	<meta name="description"
		  content="@@s3@@"/>
	<link rel="stylesheet" type="text/css" href="/html/weixinSell/css/marketing.css" />
	<script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
</head>
<body>
<%@include file="/html/common/clearfix1.jsp" %>
<div style="width: 100%;" class="second-js-top">
	<div class="a-mark-customer">
		<ul class="a-mark-customer-txt">
				@@insethtml1@@
		</ul>
	</div>
</div>
<div class="a-mark-banner">
	<h1>@@s4@@</h1>
	<p>@@s5@@</p>
	<p>@@s6@@</p>
</div>
<div class="a-mark-box">
	@@insethtml2@@
</div>

<script>


    $(".rightIcon").on("click",".ri1",function(){
        $("html,body").animate({"scrollTop":0},500);
    });
    $(window).scroll(function() {
        var scrollTop =  document.body.scrollTop || document.documentElement.scrollTop;
        if (scrollTop > 200) {
            $('.ri1').show();
        }
        else {
            $('.ri1').hide();
        }
        if(scrollTop > $(".second-js-top").position().top){
            $(".second-js-top").attr("style","height: 67px; position: fixed; width: 100%; z-index: 4; top: 0px;");
        }
        if(scrollTop < $(".a-mark-banner").position().top) {
            $(".second-js-top").attr("style","height: 67px; position: relative;width: 100%;z-index: 4;");
        }
        var list1  = $(".a-mark-cu-sp1");
        var list2  = $(".pctypename1");
        var a = 0 ;
        for (var  j = 0 ; j < list1.length ; j++ ){
            $(list1[j]).attr("class","a-mark-cu-sp1");
        }
        for (var i = list2.length-1 ; i > -1 ; i-- ){
            if(scrollTop > $(list2[i]).position().top-120 ){
                $(list1[i]).attr("class","a-mark-cu-sp a-mark-cu-sp1");
                break;
            }
        }
    });
    function locationCase(i){
        var list2  = $(".pctypename1");
        if($(".second-js-top").position().top != 0){
            scrollTo(0,$(list2[i]).position().top-140);
        }else {
            scrollTo(0,$(list2[i]).position().top-90);
        }
    }
</script>
<%@include file="/html/common/footer.jsp" %>
</body>
</html>