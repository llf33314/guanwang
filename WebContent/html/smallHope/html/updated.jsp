<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>多粉小盼教育信息化系统_培训机构管理软件_更新日志_用多粉，好生意</title>
    <meta name="keywords" content="多粉小盼是针对教育培训行业特点而研发的一款综合SaaS ERP教务管理系统. 小盼可有序的管理教师、学生资源，智能安排师生课程表，实现教学资源利用效率最大化。同时提供多维度统计报表查看和分析，保障培训机构教务运转准确高效智能化。"/>
    <meta name="description" content="多粉小盼是针对教育培训行业特点而研发的一款综合SaaS ERP教务管理系统. 小盼可有序的管理教师、学生资源，智能安排师生课程表，实现教学资源利用效率最大化。同时提供多维度统计报表查看和分析，保障培训机构教务运转准确高效智能化。"/>
    <link rel="stylesheet" type="text/css" href="../css/educate.css" />
    <link rel="stylesheet" type="text/css" href="../iconfont/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/css/animate.css" />
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
</head>
<body>
<!--头部菜单-->
<div class="car-top">
    <div class="car-top-box">
        <a href="index.jsp"> <div class="car-top-title">小盼<span class="car-top-txt">· 智慧教育</span></div></a>
        <a href="/" class="car-top-station">返回主站</a>
        <div class="car-top-menu">
            <a href="index.jsp" data-num="0"> 首页</a>
            <a href="education.jsp" data-num="1">核心功能</a>
            <a href="updated.jsp" data-num="2"  class="on">更新日志</a>
        </div>
        <div class="car-top-right">
            <a href="/html/agency/html/index.jsp" target="_blank">申请代理</a>
            <a href="http://duofriend.com/user/toregister.do" target="_blank">免费体验</a>
            <a href="hopepay.jsp">购买</a>
            <a href="http://duofriend.com/user/tologin.do" class="car-top-right-login" target="_blank">登录</a>
        </div>
    </div>
</div>
<div class="updated" ></div>

<!--通用底部-->
<%@include file="/html/common/footer-son.jsp" %>

<!--动态高度-->
<script type="text/javascript">
    window.onload = function() {
        var bigHeight = $(document).height();
        var nHeight = bigHeight-66;
        //alert(bigHeight);
        $('.updated').css({'height':nHeight+'px'});
    }
</script>
</body>
</html>
