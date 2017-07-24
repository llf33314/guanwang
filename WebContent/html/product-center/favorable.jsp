<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="企业可将优惠券内容设置为现金券、体验券、礼品券等多种形式，多粉内置多种优惠券模板，供企业选择，还可自定义风格，配合会员体系，快速帮助商家进行促销活动。"/>
    <title>多粉优惠券_微信公众号优惠券功能</title>
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
                        <img src="${imageUrl}/product-center/favorable-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>优惠券</h3>
                            <p>电子优惠券利益
                            </p>

                            <p>客户节约营销预算</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class fl">
                        <p class="mb">类型：加粉</p>
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
                    优惠劵，可自定义风格，供商家选择；配合会员体系，快速帮助商家进行促销活动实现增粉，在消费结束后的发券能让粉丝二次循环消费。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持多种类型：折扣券、代金券、兑换券、满减券四种类型，供商家选择。
                            </li>
                            <li>
                                可设置开启短信提醒功能：粉丝领取优惠券后，商家将收到短信通知。
                            </li>
                            <li>
                                支持设定有效期及可用时间段：方便商家管理及粉丝使用。
                            </li>
                            <li>
                                支持背景颜色自由选取、详情页上传图片：让页面更加精彩饱满，吸引粉丝。
                            </li>
                            <li>
                                支持分享及转赠他人：通过粉丝间的传播，达到商家宣传的效果。
                            </li>
                            <li>
                                支持多种渠道投放方式：图文推送、会员中心、摇一摇周边，小游戏互动等，商家都可设置；粉丝通过此途径进行获取
                            </li>
                            <li>
                                支持线上线下扫码核销方式：自动识别优惠劵类型，轻松核销。
                            </li>
                            <li>
                                支持到期模板消息推送通知：优惠劵即将到期时自动提前一天提示粉丝。
                            </li>
                            <li>
                                优惠券领取后自动存入会员卡卡包，在会员卡对优惠券进行管理。
                            </li><li>
                           支持优惠券领取同时自动存入微信卡包，使用更方便。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/favorable-poster.png" alt="">
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

