<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../js/jquery-2.2.2.min.js"></script>
<div class="car-top">
    <div class="car-top-box">
        <div class="car-top-title">样子<span class="car-top-txt">· 美容美发</span></div>
        <a href="/" class="car-top-station">返回主站</a>
        <div class="car-top-menu">
            <a href="/html/look/html/index.jsp" data-num="0">首页</a>
            <a href="/html/look/html/features.jsp" data-num="1">功能展示</a>
            <a href="/html/look/html/case.jsp" data-num="2">品牌案例</a>
            <a href="/html/agency/html/index.jsp" data-num="3">申请代理</a>
        </div>
        <div class="car-top-service">
            <a href="http://duofriend.com/user/toregister.do">免费体验</a>
            <a href="http://yangzi.duofriend.com/login/login.do" class="car-top-service-login" class="car-top-service-login">登录</a>
            <a href="/html/look/html/lookpay.jsp" data-num="4">购买</a>
        </div>
    </div>
</div>
<script>
    $(function() {
        $('a[data-num="' + access_num + '"]').addClass('sp');

    });


</script>