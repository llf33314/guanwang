<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉微购票为景区、剧场、场馆、乐园等提供微信购票行业解决方案，在微购票后台商家可以快速查询售票统计或其他实时数据。"/>
    <title>多粉微购票_微信公众号微购票功能</title>
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
                        <img src="${imageUrl}/product-center/buyTicket-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微购票</h3>
                            <p>购票方式新选择</p>

                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：应用</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
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
                    多粉微购票为景区、剧场、场馆、乐园等提供微信购票行业解决方案，在微购票后台商家可以快速查询售票统计或其他实时数据。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>支持防伪：每个购票者都有自己独一无二的入场码。
                            </li>
                            <li>支持开启验证模式：开启后，验证码仅在一分钟之内有效，防止他人盗用。
                            </li>
                            <li>支持将门票转增他人：可将门票赠送于朋友、亲人。
                            </li>
                            <li>支持设置不同的票价类型：可设置儿童票、成人票、老人票等，根据需求设置不同的价格方便粉丝选择。
                            </li>
                            <li>支持退票退款：粉丝申请退票，商家在后台审核通过后，退款金额原路返回粉丝账户，快捷迅速。
                            </li>
                            <li>支持多种核销方式并存：商家不仅可以使用扫码枪，还可以用手机进行扫码或手动输入入场码进行核销。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/buyTicket-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/buyTicket-code.png" alt="">
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

