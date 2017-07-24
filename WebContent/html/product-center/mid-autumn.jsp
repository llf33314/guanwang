<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="中秋送礼活动结合节日热点，还以趣味性、互动性为主线，不断为用户提供惊喜和福利，企业还可设置用户购买成功可获得微信红包，提升用户再次消费以及好感度。"/>
    <title>多粉中秋送礼_微信公众号游戏功能</title>
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
                        <img src="${imageUrl}/product-center/mid-autumn-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>中秋送礼</h3>
                            <p>送礼有“心意”</p>
                            <p>更有“新意”</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：游戏、加粉 </p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="crazy.jsp">

                            <img class="fl" src="${imageUrl}/product-center/crazy-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='crazy.jsp'>

    <h3>疯狂划算</h3>
    </a>
                            <p>引流消费两不误
                                </p>
                            <p>玩这游戏真划算</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="ball.jsp">

                            <img class="fl" src="${imageUrl}/product-center/ball-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='ball.jsp'>

    <h3>点球大战</h3>
    </a>

                            <p>一起来踢一场
                                </p>
                            <p>趣味世界杯</p>
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
                            <p> 一元抽大奖
                                </p>
                            <p> 营销推广杀手锏</p>
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
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    与以往的送礼方式相比，送礼方式可以购买单个或是多个，同样的可以单发好友或是群发分享等，中秋送礼给好友送礼品采用所见即所得的方式，用户既不用事先知道对方的邮寄地址，也不怕受时空限制，还免除了礼品寄送等中间环节，让礼品通过社交渠道直接呈现在收礼对象眼前。中秋送礼活动结合节日热点，还以趣味性、互动性为主线，不断为用户提供惊喜和福利，企业还可设置用户购买成功可获得微信红包，提升用户再次消费以及好感度。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/mid-autumn-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/store2.png" alt="">-->
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

