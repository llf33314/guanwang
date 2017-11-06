<%@ page language="java"  pageEncoding="UTF-8"%>
<script src="../js/jquery-2.2.2.min.js"></script>
<div class="car-top">
    <div class="car-top-box">
        <a href="/html/look/html/index.jsp" ><div class="car-top-title">样子<span class="car-top-txt">· 美容美发</span></div></a>
        <a href="/" class="car-top-station">返回主站</a>
        <div class="car-top-menu">
            <a href="/html/look/html/index.jsp" data-num="0">首页</a>
            <a href="/html/look/html/features.jsp" data-num="1">功能展示</a>
            <a href="/html/look/html/case.jsp" data-num="2">品牌案例</a>
            <a href="/html/agency/html/index.jsp"  data-num="3" target="_blank">申请代理</a>
        </div>
        <div class="car-top-service">
            <a href="http://duofriend.com/user/toregister.do" target="_blank">免费体验</a>
            <a href="http://yangzi.duofriend.com/login/login.do" class="car-top-service-login" class="car-top-service-login" target="_blank">登录</a>
            <a href="/html/look/html/lookpay.jsp" data-num="4">购买</a>
        </div>
    </div>
</div>
<script>
    $(function() {
        $('a[data-num="' + access_num + '"]').addClass('sp');

    });


</script>