    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="utf-8">
                <meta name="description" content="以世界杯为游戏原型，通过点球和分享好友增加得分分数，参与活动的粉丝可以通过积分来兑换奖品或者抽奖机会，即使得分不够也可以用分数兑换抽奖机会。"/>
                <title>多粉点球大战_微信公众号游戏功能</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
        <%@include file="/html/common/css.jsp" %>
        <%@include file="/html/common/js.jsp" %>
        <script type="text/javascript">
        $(function () {
        $('.roll').on('click', function () {
        $(this).addClass('active');
        $(this).siblings().removeClass('active');

        var index = $(this).index();
        var imgchild = $('.show-img').eq(index);
        imgchild.fadeIn().siblings().fadeOut();

        });
        })
        </script>
        </head>

        <body>
        <div class="wrap index">
        <%@include file="/html/common/clearfix.jsp" %>


        <!--====================================================================================-->

        <div class="containter">
        <!--中间内容-->


        <img class="img-product-img" src="${imageUrl}/product-center/poster.png" alt="">

        <div class="vote-main clear">
        <div class="fl vote-content-left">

        <div class="vote-icon">
        <a href="ball.jsp">
        <img src="${imageUrl}/product-center/ball-icon.png" alt="">
        <div class="aside-desc">
        <h3>点球大战</h3>
        <p>一起来踢一场
        </p>
        <p>趣味世界杯</p>
        </div>
        </a>
        </div>
        <div class="user-explain clear">
            <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
        <div class="vote-class-long fl">
        <p class="mb">类型：游戏、加粉</p>
        <p class="mb">行业：所有</p>
        <p>套餐： </p>
        </div>
        </div>

        <h1 class="vote-recommend">相关推荐</h1>
        <ul class="vote-ul">
        <li class="clear">
        <a href="guaguale.jsp">

        <img class="fl" src="${imageUrl}/product-center/guaguale.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='guaguale.jsp'>
        <h3>刮刮乐</h3>
        </a>

        <p>动手刮一刮
        </p>
        <p>奖品带回家</p>
        </div>
        </li>
        <li class="clear">
        <a href="light.jsp">

        <img class="fl" src="${imageUrl}/product-center/light-small.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='light.jsp'>
        <h3>点灯笼</h3>
        </a>

        <p>邀请好友</p>
        <p>参与互动</p>
        </div>
        </li>
        <li class="clear">
        <a href="sytem.jsp">

        <img class="fl" src="${imageUrl}/product-center/sytem.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='sytem.jsp'>
        <h3>门店系统</h3>
        </a>

        <p> 轻松管理
        </p>
        <p> 众多门店</p>
        </div>
        </li>
        <li class="clear">
        <a href="egg.jsp">

        <img class="fl" src="${imageUrl}/product-center/egg.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='egg.jsp'>
        <h3>砸金蛋</h3>
        </a>


        <p>微信砸金蛋
        </p>
        <p>一锤搞定</p>
        </div>
        </li>
        <li class="clear">
        <a href="one.jsp">

        <img class="fl" src="${imageUrl}/product-center/one.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='one.jsp'>
        <h3>一元夺宝</h3>
        </a>


        <p>一元抽大奖
        </p>
        <p>营销推广杀手锏</p>
        </div>


        </li>
        </ul>

        </div>

        <!--=============-->
        <div class="fr vote-content-right">
        <h1 class="product-detail">产品详情</h1>
        <p class="product-desc">
        以世界杯为游戏原型，通过点球和分享好友增加得分分数，参与活动的粉丝可以通过积分来兑换奖品或者抽奖机会，即使得分不够也可以用分数兑换抽奖机会，根据得分情况按顺序显示在排行榜内，并有备注名次及射门进球数。
        </p>
        <div class="show-vote">
        <ul class="show-vote-img">
        <li class="show-img">
        <img class=" " src="${imageUrl}/product-center/ball-poster.png" alt="">
        </li>
        <li class="show-img passive">
        <img class=" " src="${imageUrl}/product-center/ball2.png" alt="">
        </li>
        <li class="show-img passive">

        </li>
        </ul>
        <%--<div class="guide-vote clear">--%>
        <%--<p class=" fl roll active "></p>--%>
        <%--<p class=" fl roll "></p>--%>
        <%--<p class=" fl roll "></p>--%>
        </div>
        </div>


        <!--------------->
        </div>
        </div>


        <!--中间内容-->
        </div>


        <!--====================================================================================-->


        <!--底部-->
        <%@include file="/html/common/footer.jsp" %>
        <!--底部-->
        </div>
        </body>
        </html>

