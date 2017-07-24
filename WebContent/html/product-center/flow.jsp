<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="手机流量作为接入移动互联网的重要途径，免费流量有着天然的吸引力。商家赠送手机流量不仅能吸引粉丝关注，还能收集到目标粉丝的相关信息，以便后续做推广营销。"/>
    <title>多粉关注送流量_微信公众号关注送流量功能</title>
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
                        <img src="${imageUrl}/product-center/product-flow.png" alt="">
                        <div class="aside-desc">
                            <h3>关注送流量</h3>
                            <p>
                                吸引粉丝


                            </p>
                            <p>
                              快速涨粉
                            </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>

                    <div class="vote-class-long fl">
                        <p class="mb">类型：加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="favorable.jsp">

                            <img class="fl" src="${imageUrl}/product-center/favorable-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='favorable.jsp'>
                                <h3>优惠券</h3>
                            </a>

                            <p>电子优惠卷利益
                            </p>
                            <p>客户节约营销预算</p>
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
                            <p>
                                邀你一起玩</p>

                        </div>
                    </li>
                    <li class="clear">
                        <a href="survey.jsp">

                            <img class="fl" src="${imageUrl}/product-center/investigate.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='survey.jsp'>
                                <h3>微调研</h3>
                            </a>

                            <p> 了解粉丝爱好</p>
                            <p> 实现营销精准化</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="one.jsp">

                            <img class="fl" src="${imageUrl}/product-center/one-sma.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='one.jsp'>
                                <h3>一元夺宝</h3>
                            </a>


                            <p>一元抽大奖
                            </p>
                            <p>
                                营销推广杀手锏</p>
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

                            <p>用户摇起来</p>
                            <p>粉丝涨起来</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    手机流量作为接入移动互联网的重要途径，免费流量有着天然的吸引力。商家赠送手机流量不仅能吸引粉丝关注，还能收集到目标粉丝的相关信息，以便后续做推广营销。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持可自由设置赠送数量：商家根据需求进行设置或购买。
                            </li>
                            <li>
                                可选择开启短信提醒：当流量即将不足时，商家将收到短信提醒，进行充值，避免出现粉丝无法兑换情况。
                            </li>
                            <li>
                                支持设置关注自动推文展现：通过图文结合的方式展现，吸引粉丝眼球。
                            </li>
                            <li>
                                支持设置抽奖、游戏互动方式赠送。
                            </li>
                            <li>
                                支持粉丝会员卡对流量进行管理兑换。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/flow.png" alt="">
                        </li>

                        <li class="show-img passive">

                        </li>
                    </ul>
                    <%--
                    <div class="guide-vote clear">--%>
                        <%--<p class=" fl roll active "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                        <%--
                    </div>
                    --%>
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

