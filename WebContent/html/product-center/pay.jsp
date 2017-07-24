<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="以“信任”作为核心服务，多粉支付致力于提供“简单、安全、快速”的支付解决方案。商户委托多粉代为收取消费者支付的相应服务款，经结算系统结算并查验后转付给商户的代收代付产品，为商户和消费者搭建便利、安全的交易平台。"/>
    <title>多粉支付_微信公众号支付功能</title>
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
                        <img src="${imageUrl}/product-center/pay-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>多粉支付</h3>
                            <p>让支付变得
                                更加简单快速
                                </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：转化、交易 </p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：升级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="distribution.jsp">

                            <img class="fl" src="${imageUrl}/product-center/distribution.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='subscribe.jsp'>

    <h3>微分销</h3>
    </a>

                            <p>让粉丝成为
                                你的业务员
                                </p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="help.jsp">

                            <img class="fl" src="${imageUrl}/product-center/help-small.png" alt="">
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
                        <a href="red.jsp">

                            <img class="fl" src="${imageUrl}/product-center/red-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='red.jsp'>

    <h3>让红包飞</h3>
    </a>
                            <p> 今天你抢红包了吗？</p>

                        </div>
                    </li>
                    <li class="clear">
                        <a href="360.jsp">

                            <img class="fl" src="${imageUrl}/product-center/360.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='360.jsp'>

    <h3>360全景</h3>
    </a>
                            <p>给用户身临其境</p>
                            <p>视觉体验</p>
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
                            <p>用户摇起来
                            </p>
                            <p>粉丝涨起来</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    以“信任”作为核心服务，多粉支付致力于提供“简单、安全、快速”的支付解决方案。商户委托多粉代为收取消费者支付的相应服务款，经结算系统结算并查验后转付给商户的代收代付产品，为商户和消费者搭建便利、安全的交易平台。
                </p>

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/pay-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/pay2.png" alt="">
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

