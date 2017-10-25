<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <script src="/html/js/jquery-2.2.2.js"></script>
    <script src="/html/js/fans.js"></script>
    <title>粉巢</title>

    <link rel="stylesheet" href="/html/css/basic.css">
    <link rel="stylesheet" href="/html/css/fans.css">
    <link rel="stylesheet" href="/html/css/ani.css">
    <%@include file="/html/common/css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <style>
        .video-box{
            position: fixed;
            top:50%;
            left: 50%;
            width:100%;
            height: 100%;
            z-index: 90;
            margin-left: -400px;
            margin-top: -250px;
            display: none;
        }
        .video-close{
            position: absolute;
            left: 740px;
            color: #fff;
            top: 40px;
            z-index: 99;
            cursor: pointer;
        }
    </style>
</head>
<body>

<%@include file="/html/common/clearfix.jsp" %>

<div id="banner" class="focusad">
    <ul>
        <li>
            <a href="#">
                <img src="/html/images/fans/bgfans.png">
            </a>
        </li>
    </ul>
</div>

<div class="fansWrap">
    <div class="fansWrap_title">
        <h1>粉巢系统是什么？</h1>
        <p>
            多粉结合时下最流行的会员服务与移动互联网营销新模式，推出粉巢系统。粉巢系统是一个能集合PC网站、手机网站、微信、APP、小程序、支付宝六站合一的跨平台同步系统，能全面实现订单与会员数据同步和多端流量汇总让您一个用户都不丢。</p>
       <a href="javascript:void(0);" onclick="openVideo3();"> <img src="/html/images/fans/videofans.png" alt="" ></a>
    </div>



    <ul class="fansWrap_middle">
        <li class="clearfix">
            <div class="fl">
                <h1>多端流量整合 快人一步留住用户</h1>
                <p>粉巢系统强大的会员功能，将PC网站、手机网站、微信、支付宝服务窗、口碑网、新浪微博、百度搜索、线下等多端流量整合，不丢一个用户！</p>
            </div>
            <div class="fr fansicon_1 fansicon">
                <img src="/html/images/fans/fansicon_1.png" alt="">
            </div>
        </li>
        <li class="clearfix">
            <div class="fr">
                <h1>数据无缝 同步对接</h1>
                <p>支持会员数据、订单数据无缝同步对接。让用户无论在PC网站、手机网站、微信、APP、小程序、支付宝登录都可以同步查看自己的购物车、订单详情、会员信息用户无论在哪里打开所有的信息数据都是实时同步！</p>
            </div>
            <div class="fl fansicon_2 fansicon">
                <img src="/html/images/fans/fansicon_2.png" alt="">
            </div>
        </li>
        <li class="clearfix">
            <div class="fl">
                <h1>可视化智能拖拽 一键建站</h1>
                <p>
                    粉巢系统，轻松上手，可视化拖拽操作，所见即所得，无需懂专业技术和代码，将图片上传、编辑、排版即可预览设计效果，添加链接，打打字，大师级动感时尚网页瞬间生成。支持搜索引擎优化（SEO），让你的网站更容易被搜索到，支持个性域名绑定，让你更好地展示品牌形象！
                </p>
            </div>
            <div class="fr fansicon_3 fansicon">
                <img src="/html/images/fans/fansicon_3.png" alt="">
            </div>
        </li>
    </ul>
    <div class="fansWrap_title">
        <h1>粉巢系统特色功能</h1>
        <p style="text-align: center">
            多端数据实时同步、多端流量统一管理、后台一键生成网站！
        </p>

    </div>


    <div class="fansWrap_footer">
        <ul>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_1.png" alt="">
                </a>

                <p style="text-align: center">PC+手机+微信+APP+小程序+支付宝 六站合一</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_2.png" alt="">
                </a>
                <p style="text-align: center">手机百度</p>
                <p style="text-align: center">引流</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_3.png" alt="">
                </a>
                <p style="text-align: center">支付宝</p>
                <p style="text-align: center">服务窗引流</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_4.png" alt="">
                </a>
                <p style="text-align: center">数据无缝同步对接</p>
                <p style="text-align: center">超强移动应用</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_5.png" alt="">
                </a>
                <p style="text-align: center">支持SEO优化</p>
                <p style="text-align: center">搜索引擎收录</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_6.png" alt="">
                </a>
                <p style="text-align: center">强大商城应用</p>
                <p style="text-align: center">促进成交</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_7.png" alt="">
                </a>
                <p style="text-align: center">个性化</p>
                <p style="text-align: center">域名绑定</p>
            </li>
            <li>
                <a href="javascript:void(0);">
                    <img src="/html/images/fans/fanssmell_8.png" alt="">
                </a>
                <p style="text-align: center">提供行业模板</p>
                <p style="text-align: center">一键生成网站</p>
            </li>
        </ul>

        <div class="btn_user" onclick="location.href = 'http://duofriend.com/user/toregister.do'">
            立即体验
        </div>
    </div>
</div>

<div class="video-box" id="video-box3">
    <span class="video-close" onclick="closeVideo3()">关闭</span>
    <video preload="none" controls width="800" height="500" id="videoMedia3" style="background-color: #000">
        <source src="http://maint.duofriend.com/upload/video/websiteUpload/website/MGfcxt.mp4" type="video/mp4">
    </video>
</div>
<script>
    var closeVideo3 =function(){
        var media = document.getElementById("videoMedia3");
        media.pause();
        $('#video-box3').hide();
    }
    var openVideo3 = function(){
        var media = document.getElementById("videoMedia3");
        media.play();
        $('#video-box3').show();
    }
</script>
<!--底部-->
<%@include file="/html/common/footer.jsp" %>
<!--底部-->

<script>

$('#banner li').css({
	'background':'url(/html/images/fans/bgfans.png)',
	'z-index' : '1',
	'position' : 'absolute',
	'width' : '100%',
	'height':'410px',
    'background-position': 'center top' 

})

$('#banner').css({'height': '410px'}) 
$('#banner li a').css({'display':'none'})
</script>
</body>
</html>