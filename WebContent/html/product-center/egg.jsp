<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="微信上也能玩砸金蛋了，简单易操作，配置简单可快速引爆粉丝互动，粉丝关注商家微信公众号后即可参与活动，奖品属性自由设置，有分为流量、多粉粉币、实物奖品、积分等，实用性强，可在朋友圈迅速传播。

"/>
    <title>多粉砸金蛋_微信公众号砸金蛋功能</title>
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
        });
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
                        <img src="${imageUrl}/product-center/egg-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>砸金蛋</h3>
                            <p>微信砸金蛋
                            </p>
                            <p>一锤搞定</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：加粉、互动</p>
                        <p class="mb">行业：基础版级以上</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
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
                        <a href="ticket.jsp">

                            <img class="fl" src="${imageUrl}/product-center/small-ticket.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='ticket.jsp'>

                                <h3>卡包/券</h3>
                            </a>


                            <p>将优惠券
                            </p>
                            <p>装进微信里</p>
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

                            <p> 用户摇起来
                            </p>
                            <p> 粉丝涨起来</p>
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

                            <p>今天你抢红
                            </p>
                            <p>包了吗？</p>
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
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    “砸金蛋”是款界面有趣、互动简单的游戏，把品牌传播回归基本，从而赢得更多的曝光点。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>支持新建砸金蛋活动：填写活动的名称、活动说明、设置抽奖次数等。
                            </li>
                            <li>支持设置奖项、中奖几率、发关键词和相应的奖品：确定设置后系统会根据设定的中奖几率产生相应的SN码。
                            </li>
                            <li>支持背景音乐播放：商家可根据自身的需求上传音乐。
                            </li>
                            <li>支持开启转增模式：粉丝中奖后，可将奖品转赠给他人。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/egg-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/store2.png" alt="">-->
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
                <!--加二维码-->
                <div class="code-center">
                    <img src="${imageUrl}/product-center/egg-code.png" alt="">
                    <p>(扫描二维码体验)</p>
                </div>
                <!--加二维码-->

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

