<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微信营销案例_公众号_企业微信案例_多粉</title>

<meta name="description"
          content="多粉微信第三方开发平台，提供微信营销、小程序、微商城、H5游戏等功能开发及公众号代运营服务。"/>
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<link rel="stylesheet" href="/css/webSite.css"/>
<script src="/js/webSite.js"></script>
<script type="text/javascript">
var cases = WSFUNCTION.doPostReturnFull("/caseCenter/html/htmlList", {}).data;
$(function(){
    webjs.newcase();
    $('body').show();
})
</script>
<script>
	$(function(){
	/* 	$('dl').find('dd').eq(0).addClass('active'); */
		$('dl').addClass('nav_scroll');
	});
	/* $(document).ready(function() {
		$('.nav_scroll').onePageNav();
	}); */
	 $(document).ready(function () {
		  //监听滚动条
		  $(window).scroll(function () {
		  //获取滚动条到顶部的距离
		  var top = $(document).scrollTop();
		  var menu = $('.nav_scroll');
		  var items = $('.sb_cont').find('.scroll_box');
		  var currentId = "";//当前所在的楼层是(item) id
		  items.each(function(){
		   var s = $(this);
		   //获取item到顶部的距离 即各个楼层到顶部的距离
		   var itemTop = s.offset().top;
		   //判断滚动条到顶部的距离是否大于item到顶部的距离，大于则说明当前页面已经显示到了当前item即楼层
		   if(top > itemTop-165){
		   //取到当前楼层
		   currentId = "#" + s.attr("id");
		   }else{
		   return false;
		   } 
		  });
		  //给相应楼层的a设置current，取消其他链接的current
		  var currentLink = menu.find(".active");
		  //判断currentId是否有值，当前有current的item是否等于要添加current的item,有就不必改变，没有就更改item的current,current是显示高亮的css类
		  if(currentId && currentLink.attr("href") != currentId ){
		   //移除有高亮的
		   currentLink.removeClass('active');
		   //添加当前页面显示楼层对应的菜单选项的高亮
		   menu.find("[href=" + currentId +"]").addClass('active');
		  }
		  });
	});
</script>
<script type="text/javascript">
/* $(function () {
		//获取几个盒子
		var $elements = $('.scroll_box');
		var len = $elements.length;
		//滚动条

	  
	  $(window).scroll(function () {
	     var top = $(window).scrollTop();

    	 if (top > 370 * (len-1) + 156) {  
    		 $('.project_center .slidebox .nav_fixed').css({"position":"fixed","top": "0"});
    		
    	 }else if(top > 165 && top < 370 * (len-1) + 156){
    		 $('.project_center .slidebox .nav_fixed').css({"position":"fixed","top": "165px"});
    	 }

	  });
}); */
</script>

<!-- 动画jQ -->
<script type="text/javascript">

//微信营销轮播图片
var wArr=["w3","w2","w1"];
var wechat=0;
//上一张
function wePrev(){
	wArr.unshift(wArr[2]);
	wArr.pop();
	//i是元素的索引，从0开始
	//e为当前处理的元素
	//each循环，当前处理的元素移除所有的class，然后添加数组索引i的class
	$('#wechat_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(wArr[i]);
	})
	wechat--;
	if (wechat<0) {
		mall=2;
	}
}
//下一张
function weNext(){
	wArr.push(wArr[0]);
	wArr.shift();
	$('#wechat_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(wArr[i]);
	})
	wechat++;
	if (wechat>2) {
		wechat=0;
	}
}
//点击class为w2的元素触发上一张照片的函数
$(document).on("click",".w1",function(){
	wePrev();
	return false;//返回一个false值，让a标签不跳转
});
//点击class为w4的元素触发下一张照片的函数
$(document).on("click",".w3",function(){
	weNext();
	return false;
});
$(".wechat_box").mouseover(function(){
	clearInterval(timer);
})
//计时器
$(".wechat_box").mouseleave(function(){
	timer=setInterval(weNext,3000);
})
timer=setInterval(weNext,3000);
</script>



<script type="text/javascript">

//商家联盟轮播图片
var bArr=["b3","b2","b1"];
var business=0;
//上一张
function businessPrev(){
	bArr.unshift(bArr[2]);
	bArr.pop();
	$('#business_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(bArr[i]);
	})
	business--;
	if (business<0) {
		business=2;
	}
}
//下一张
function businessNext(){
	bArr.push(bArr[0]);
	bArr.shift();
	$('#business_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(bArr[i]);
	})
	business++;
	if (business>2) {
		business=0;
	}
}
$(document).on("click",".b1",function(){
	businessPrev();
	return false;
});
$(document).on("click",".b3",function(){
	businessNext();
	return false;
});
/* $("").mouseover(function(){
	clearInterval(timer);
})
//计时器
$("").mouseleave(function(){
	timer=setInterval(businessNext,3000);
})
timer=setInterval(businessNext,3000); */
</script>
<script type="text/javascript">

//微信小程序轮播图片
var rArr=["r3","r2","r1"];
var routine=0;
//上一张
function routinePrev(){
	rArr.unshift(rArr[2]);
	rArr.pop();
	$('#routine_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(rArr[i]);
	})
	routine--;
	if (routine<0) {
		routine=2;
	}
}
//下一张
function routineNext(){
	rArr.push(rArr[0]);
	rArr.shift();
	$('#routine_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(rArr[i]);
	})
	routine++;
	if (routine>2) {
		routine=0;
	}
}
$(document).on("click",".r1",function(){
	routinePrev();
	return false;
});

$(document).on("click",".r3",function(){
	routineNext();
	return false;
});
/* $("").mouseover(function(){
	clearInterval(timer);
})
//计时器
$("").mouseleave(function(){
	timer=setInterval(businessNext,3000);
})
timer=setInterval(businessNext,3000); */
</script>

<script type="text/javascript">

//优惠商场轮播图片
var cArr=["p3","p2","p1"];
var index=0;
//上一张
function previmg(){
	cArr.unshift(cArr[2]);
	cArr.pop();
	$('#mall_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(cArr[i]);
	})
	index--;
	if (index<0) {
		index=2;
	}
}
//下一张
function nextimg(){
	cArr.push(cArr[0]);
	cArr.shift();
	$('#mall_img').find("li").each(function(i,e){
		$(e).removeClass().addClass(cArr[i]);
	})
	index++;
	if (index>2) {
		index=0;
	}
}
$(document).on("click",".p1",function(){
	previmg();
});
$(document).on("click",".p3",function(){
	nextimg();
});

$(".mall_box").mouseover(function(){
	clearInterval(timer);
})

$(".mall_box").mouseleave(function(){
	timer=setInterval(nextimg,4000);
})
timer=setInterval(nextimg,4000);
</script>
</head>
<body style="display: none;">
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>

    <div class="containt project_center">
          <h1>客户案例中心</h1>
          <div class="pc_main clearfix">
               <div class="leftnav">
                   <ul></ul>
               </div>
               <div class="slidebox clearfix" id="case_slide">
                   <div class="sb_nav">
                       <div class="sb_nav_main">
                           <ul>
                           </ul>
                           <a href="javascript:;" class="arrow tarrow"></a>
                    		<a href="javascript:;" class="arrow barrow"></a>
                       </div>
                   </div>
                   <div class="sb_cont">
                        <div class="fun-wrap">
                        <!-- content -->
					    	<div id="customer_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="customer_h2">客户案例介绍</h2>
					    	        <p id="customer_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="customer_img fr img tc">
					    	    	<img src="/html/images/project/index_03.jpg">
					    	    </div>
					    	</div>
					    	
					    	<div id="fan_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="fan_h2">粉巢系统</h2>
					    	        <p id="fan_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div id="fan_img" class="fan_img fr img tc">
					    	    	<img src="/html/images/project/computer_backgound.png">
					    	    	<div class="fan_1"><img src="/html/images/project/computer_img.jpg"></div>
					    	    </div>
					    	</div>
					    	
					    	<div id="wechat_box" class="wechat_box f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="wechat_h2">微信营销</h2>
					    	        <p id="wechat_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="fr img">
					    	    	<ul id="wechat_img" class="style-01">
					    	    		<li class="w3"><img src="/html/images/project/index_07.jpg"></li>
					    	    		<li class="w2"><img src="/html/images/project/index_07.jpg"></li>
					    	    		<li class="w1"><img src="/html/images/project/index_07.jpg"></li>
					    	    	</ul>
					    	    </div>
					    	</div>
					
							<div id="business_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="business_h2">商家联盟</h2>
					    	        <p id="business_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="fr img">
					    	    	<ul id="business_img" class="style-02">
					    	    		<li class="b3">
					    	    		    <img src="/html/images/project/pic1.jpg">
					    	    		    <img src="/html/images/project/pic1.png">
					    	    		</li>
					    	    		<li class="b2">
					    	    		    <img src="/html/images/project/pic1.jpg">
					    	    		    <img src="/html/images/project/pic1.png">
					    	    		</li>
					    	    		<li class="b1">
					    	    		    <img src="/html/images/project/pic1.jpg">
					    	    		    <img src="/html/images/project/pic1.png">
					    	    		</li>
					    	    	</ul>
					    	    </div>
					    	</div>
					
					    	<div id="erp_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="erp_h2">云ERP</h2>
					    	        <p id="erp_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="erp_img fr img tc">
					    	    	<img src="/html/images/project/index_15.jpg">
					    	    </div>
					    	</div>
					
							<div id="mall_box" class="mall_box f-item clearfix scroll_box">
					    	    <div id="mall_text" class="fl txt">
					    	        <h2>优惠券商城</h2>
					    	        <p>多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="fr img">
					    	    	<ul id="mall_img" class="style-04">
					    	    		<li class="p3"><img src="/html/images/project/pic2.jpg"></li>
					    	    		<li class="p2"><img src="/html/images/project/index_19.jpg"></li>
					    	    		<li class="p1"><img src="/html/images/project/pic1.jpg"></li>
					    	    	</ul>
					    	    </div>
					    	</div>
					
					    	<div id="routine_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="routine_h2">微信小程序</h2>
					    	        <p id="routine_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="fr img">
					    	        <div class="img_a style-03">
					    	            <div class="long">
							    	    	<ul id="routine_img">
							    	    		<li class="r3"><img src="/html/images/project/pic1.jpg"></li>
							    	    		<li class="r2"><img src="/html/images/project/pic2.jpg"></li>
							    	    		<li class="r1"><img src="/html/images/project/index_19.jpg"></li>
							    	    	</ul>
							    	    </div>
							    	    <a href="javascript:;" onclick="routinePrev()" id="prev" class="leftbtn"><img src="/html/images/project/btn.png"></a>
							    	    <a href="javascript:;" onclick="routineNext()" id="next" class="rightbtn"><img src="/html/images/project/btn.png"></a>
						    	    </div>
					    	    </div>
					    	</div>
					
					    	<div id="hardware_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="hardware_h2">多粉硬件</h2>
					    	        <p id="hardware_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div class="fr img tc style-06">
					    	    	<img src="/html/images/project/index_27.jpg">
					    	    </div>
					    	</div>
					    	
					    	<div id="operate_box" class="f-item clearfix scroll_box">
					    	    <div class="fl txt">
					    	        <h2 id="operate_h2">代运营</h2>
					    	        <p id="operate_p">多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。多粉是国内一流的移动互联网创意营销平台, 为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业</p>
					    	    </div>
					    	    <div id="operate_img" class="animated fr img tc style-05">
				    	   	 		<div class="ipad_1">
					    	    		<img src="/html/images/project/ipa_img.jpg">
					    	    	</div>
					    	    	<img src="/html/images/project/ipa_background.png">
					    	    </div>
					    	</div>
					    	
					    	<div class="bottom_button">
					    	    <div class="code_img">
					    	        <img src="/html/images/project/index_31.jpg">
					    	    </div>
					    	    <div class="botton_img">
					    	    	<img src="/html/images/project/index_34.jpg">
					    	    </div>
					    	</div>
					    	<!-- content -->
					    	
					    </div>
                   </div>
               </div>
          </div>
    </div>
    <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>

