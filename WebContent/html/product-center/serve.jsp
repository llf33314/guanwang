<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="
多粉微服务相当于一个微信生活管家，为用户提供全方位生活服务的应用，通过微服务，可帮助企业实现与微信用户进行沟通，微服务具备负载分配、知识库管理与关键词自动匹配等常用辅助功能，满足不同客户的需求，提供客户个性化服务。"/>
    <title>多粉微服务_微信公众号微服务功能</title>
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
                        <img src="${imageUrl}/product-center/serve-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微服务</h3>
                            <p>客户沟通无限
                             
                                </p>
       <p>
                                轻松管理你的服务平台
                                </p>

                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class fl">
                        <p class="mb">类型：互动</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="home.jsp">

                            <img class="fl" src="${imageUrl}/product-center/social.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='home.jsp'>
    <h3>微官网</h3>
    </a>
                            <p>5分钟打造
                                </p>
                            <p>个性化微信网站</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="subscribe.jsp">

                            <img class="fl" src="${imageUrl}/product-center/subscribe.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='subscribe.jsp'>
    <h3>微预约</h3>
    </a>
                            <p>一键即可在线
                                </p>
                            <p>完成各种预约</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="shop.jsp">

                            <img class="fl" src="${imageUrl}/product-center/shop-icon.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='shop.jsp'>
    <h3>微商城</h3>
    </a>
                            <p> 把你的店铺
                                </p>
                            <p> 开到微信上去</p>
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
                    <li class="clear">
                        <a href="vip.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vip.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='vip.jsp'>
    <h3>微会员</h3>
    </a>
                            <p>了解粉丝选择
                                </p>
                            <p>营销活动新利器</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    微服务相当于一个微信生活管家，为用户提供全方位生活服务的应用，通过微服务，可帮助企业实现与微信用户进行沟通，微服务具备负载分配、知识库管理与关键词自动匹配等常用辅助功能，满足不同客户的需求，提供客户个性化服务。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/serve-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/serve2c.png" alt="">
                        </li>
                        <li class="show-img passive">

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

