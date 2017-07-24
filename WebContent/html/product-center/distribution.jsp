    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="utf-8">
                <meta name="description" content="多粉微分销是行业最专业的微信分销系统，领先的全渠道分销解决方案，全渠道管理和裂变式发展分销商，三级佣金分成模式，让企业迅速发展分销商，实现一站式微商城分销模式。"/>
                <title>多粉微分销_微信公众号分销功能</title>
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
        <a href="">
        <img src="${imageUrl}/product-center/distribution-icon.png" alt="">
        <div class="aside-desc">
        <h3>微分销</h3>
        <p>让粉丝成为
        你的业务员
        </p>
        </div>
        </a>
        </div>
        <div class="user-explain clear">
            <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
        <div class="vote-class-long fl">
        <p class="mb">类型：推广</p>
        <p class="mb">行业：电商</p>
        <p>套餐：至尊版及以上 </p>
        </div>
        </div>

        <h1 class="vote-recommend">相关推荐</h1>
        <ul class="vote-ul">
        <li class="clear">
        <a href="message.jsp">

        <img class="fl" src="${imageUrl}/product-center/message-small.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='message.jsp'>

        <h3>微留言</h3>
        </a>

        <p>良性互动
        传播企业口碑
        </p>
        </div>
        </li>
        <li class="clear">
        <a href="help.jsp">

        <img class="fl" src="${imageUrl}/product-center/help.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='help.jsp'>


        <h3>微助力</h3>
        </a>

        <p>邀请好友
        </p>
        <p>一起玩起来</p>
        </div>
        </li>
        <li class="clear">
        <a href="shark.jsp">

        <img class="fl" src="${imageUrl}/product-center/shark.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='shark.jsp'>


        <h3>摇一摇周边</h3>
        </a>

        <p> 用户摇起来</p>
        <p> 粉丝涨起来</p>
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
        <li class="clear">
        <a href="turetable.jsp">

        <img class="fl" src="${imageUrl}/product-center/return.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='turetable.jsp'>
        <h3>大转盘</h3>
        </a>

        <p>快乐大转盘
        </p>
        <p>邀你一起玩</p>
        </div>


        </li>
        </ul>

        </div>

        <!--=============-->
        <div class="fr vote-content-right">
        <h1 class="product-detail">产品详情</h1>
        <p class="product-desc">
        行业最专业的微信分销系统，领先的全渠道分销解决方案，全渠道管理和裂变式发展分销商，三级佣金分成模式，让企业迅速发展分销商，实现一站式微商城分销模式，轻松带领成千上万的微信用户一起为您销售商品。
        </p>
        <!---->
        <div class="show-vote">
        <ul class="show-vote-img">
        <li class="show-img">
        <img class=" " src="${imageUrl}/product-center/distribution1.png" alt="">
        </li>
        <li class="show-img passive" >
        <img class=" " src="${imageUrl}/product-center/distribution2.png" alt="">
        </li>
        <li class="show-img passive" >
        <img class=" " src="${imageUrl}/product-center/distribution3.png" alt="">
        </li>
        <li class="show-img passive">
        <img class=" " src="${imageUrl}/product-center/distribution4.png" alt="">
        </li>
        </ul>
        <%--<div class="guide-vote clear">--%>
        <%--<p class=" fl roll active "></p>--%>
        <%--<p class=" fl roll "></p>--%>
        <%--<p class=" fl roll "></p>--%>
        <%--</div>--%>
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

