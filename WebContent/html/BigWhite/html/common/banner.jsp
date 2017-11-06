<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="car-top">
  <div class="car-top-box">
        <a href="/html/BigWhite/html/index.jsp"><div class="car-top-title">小红十<span class="car-top-txt">· 社区医疗</span></div></a>
        <a href="/" class="car-top-station">返回主站</a>
        <div class="car-top-menu">
          <a href="/html/BigWhite/html/index.jsp" data-num="0">首页</a>
          <a href="/html/BigWhite/html/functionDisplay.jsp" data-num="1">功能展示</a>
          <a href="/html/BigWhite/html/successCase.jsp" data-num="2">成功案例</a>
          <a href="/html/agency/html/index.jsp" target="_blank">申请代理</a>
        </div>
        <div class="car-top-service">
          <a href="http://duofriend.com/user/toregister.do" target="_blank">免费体验</a>
          <a href="http://xiaowu.duofriend.com/login/login.do" class="car-top-service-login" target="_blank">登录</a>
          <a href="/html/BigWhite/html/bigwhitepay.jsp" data-num="3">购买</a>
        </div>
  </div>
</div>

<script>
	$(function() {
		console.log(access_num);
		$('a[data-num="' + access_num + '"]').addClass('sp');

	});
	
	
</script>
