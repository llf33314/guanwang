<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="car-top">
  <div class="car-top-box">
      <a href="/html/CarCount/html/index.jsp"><div class="car-top-title">车小算<span class="car-top-txt">· 汽车美容</span></div></a>
        <a href="/" class="car-top-station">返回主站</a>
        <div class="car-top-menu">
          <a href="/html/CarCount/html/index.jsp" data-num="0">首页</a>
          <a href="/html/CarCount/html/features.jsp" data-num="1">功能展示</a>
          <a href="/html/CarCount/html/mobileApplications.jsp" data-num="2">移动化应用</a>
          <a href="/html/CarCount/html/customerCase.jsp" data-num="3">客户案例</a>
          <a href="/html/agency/html/index.jsp" target="_blank">申请代理</a>
        </div>
        <div class="car-top-service">
          <a href="http://duofriend.com/user/toregister.do" target="_blank">免费体验</a>
          <a href="http://che.duofriend.com/login/login.do" class="car-top-service-login" target="_blank">登录</a>
          <a href="/html/CarCount/html/carpay.jsp" data-num="4">购买</a>
        </div>
  </div>
</div>

<script>
	$(function() {
		$('a[data-num="' + access_num + '"]').addClass('sp');

	});
	
	
</script>
