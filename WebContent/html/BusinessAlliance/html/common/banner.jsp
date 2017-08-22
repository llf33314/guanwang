<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="gt-swiper-banner-box">
	<div class="sj-top-box">
		<div class="sj-top">
			<div class="sj-top-title">商家联盟</div>
			<a href="/" class="sj-top-station">返回主站</a>
			<div class="sj-top-menu">
				<a href="index.jsp" data-num="1">首页</a> <a
					href="function.jsp" data-num="3">特色功能</a> <a href="case.jsp" data-num="2">客户案例</a> <a
					href="/html/agency/html/index.jsp">申请代理</a>
			</div>
			<div class="sj-top-service">
				<a href="http://duofriend.com/user/toregister.do">免费体验</a> <a href="javascript:void(0);"
					class="sj-top-service-login">登录</a> <a href="/html/newCombo.jsp">购买</a>
			</div>
		</div>
	</div>
	<ul class="gt-swiper-banner-container">
		<li style="background-image: url(../img/banner3.png);" data-num="2">
			<a href="javascript:void(0);"><img class="banner-image" src="../img/banner3.png"></a>
		</li>
		<li style="background-image: url(../img/gt_banner1.png);" data-num="1">
			<a href="javascript:void(0);"><img class="banner-image" src="../img/gt_banner1.png"></a>
		</li>
		<li style="background-image: url(../img/banner2.png);" data-num="3">
			<a href="javascript:void(0);"><img class="banner-image" src="../img/banner2.png"></a>
		</li>
	</ul>
	<ul class="gt-swiper-banner-page">
		<li data-num="3"></li>
		<li data-num="1"></li>
		<li data-num="2"></li>
	</ul>
</div>

<script>
$(function() {
	
	$('.gt-swiper-banner-page li[data-num="'+access_num+'"]').addClass('clicked');
	$('.sj-top-menu a[data-num="'+access_num+'"]').addClass('sp');
	
	gtSwiperBanner.initializeType();
	gtSwiperBanner.interval();
	gtSwiperBanner.event();

	gtSwiper3d.event();
	gtSwiper3d.interval();
	
	$('.gt-swiper-banner-container li[data-num="'+access_num+'"]').css({'left': '0px'});
})
</script>
