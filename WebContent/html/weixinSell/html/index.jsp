<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
	<title>微信营销第三方平台_微信代运营_公众号吸粉_申请注册_搭建_策划服务_多粉</title>
	<meta name="keywords" content="微营销,微信营销,微信代运营,微信定制开发,微信营销软件,微信推广平台,微信营销平台,微信代运营套餐,智慧酒店"/>
	<meta name="description"
		  content="多粉微信第三方开发平台，提供微信营销、小程序、微商城、H5游戏等功能开发及公众号代运营服务。"/>
    <link rel="stylesheet" type="text/css" href="../css/marketing.css" />
	<script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="/js/webSite.js"></script>
</head>
<body>
<%@include file="/html/common/clearfix1.jsp" %>
  <div style="width: 100%;" class="second-js-top">
	<div class="a-mark-customer">
	   <ul class="a-mark-customer-txt">
	      <%--<li><a href="javascript:;" class="a-mark-cu-sp">营销应用</a></li>--%>
	      <%--<li><a href="javascript:;">微信行业应用</a></li>--%>
	      <%--<li><a href="javascript:;">公众号应用</a></li>--%>
	      <%--<li><a href="javascript:;">推广引流</a></li>--%>
	      <%--<li><a href="javascript:;">现场互动</a></li>--%>
	      <%--<li><a href="javascript:;">互动游戏</a></li>--%>
	   </ul>
	</div>
  </div>
  <div class="a-mark-banner">
	  <h1>一站式微信营销 让你的生意领先一步</h1>
	  <p>兼容，是一种超越！多粉众多营销功能同时兼容UC端和微信端，用户无论</p>
	  <p>从哪儿打开都畅通无阻，商家的营销效果发挥到极致！</p>
  </div>
  <div class="a-mark-box">

  </div>

<script>
    $(function () {
        var pt = WSFUNCTION.doPostReturnFull("/productCenterNew/html/typelist", {}).data;
        var p = WSFUNCTION.doPostReturnFull("/productCenterNew/html/list", {}).data;
        var html="";
        for (var i = 0; i < pt.length; i++) {
            $('.a-mark-customer-txt').append('<li><a href="javascript: void(0);" class="a-mark-cu-sp1" onclick="locationCase('+i+')">'+pt[i].pctypename+'</a></li>');
           html +='<div class="a-mark-unified">'
                +'<h2 class="pctypename1">'+pt[i].pctypename+'</h2>'
                +'<p>'+pt[i].typedesc+'</p>'
                +'<ul>';
            for (var j = (p.length - 1); j > -1; j--) {
                if(p[j].classid == pt[i].id){
                    html+=' <li class="a-mark-unified-li">'
                        +'<div class="a-mark-unified-li-l">'
                        +'<a href="/html/product-center/productNew_'+p[j].id+'.jsp"  target="_blank"><img src="'+p[j].logourl+'"> </a>'
                        +'</div>'
                        +'<div class="a-mark-unified-li-r">'
                        +'<a href="/html/product-center/productNew_'+p[j].id+'.jsp"  target="_blank"><h4>'+p[j].pcname+'</h4></a>'
                        +'<p>'+p[j].pcdesc+' </p>'
                        +'</div>'
                        +'</li>';
				}
            }
           html +=' </ul></div>';
        }
	    $('.a-mark-box').html(html);
        var list1  = $(".a-mark-cu-sp1");
        var list2  = $(".pctypename1");
        var scrollTop =  document.body.scrollTop || document.documentElement.scrollTop;
        var a = 0 ;

	});
    $(".rightIcon").on("click",".ri1",function(){
        $("html,body").animate({"scrollTop":0},500);
    })
    $(window).scroll(function() {
        var scrollTop =  document.body.scrollTop || document.documentElement.scrollTop;
        if (scrollTop > 200) {
            $('.ri1').show();
        }
        else {
            $('.ri1').hide();
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
    })
	function locationCase(i){
        var list2  = $(".pctypename1");
        if($(".second-js-top").position().top != 0){
            scrollTo(0,$(list2[i]).position().top-140);
        }else {
            scrollTo(0,$(list2[i]).position().top-90);
        }
	}
</script>
<!-- 底部区域 -->
<%@include file="/html/common/footer.jsp" %>

<script src="../js/thead.js"></script>
</body>
</html>