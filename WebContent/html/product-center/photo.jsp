<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉微相册作为微信企业通平台的一项主打基本功能，为微信企业通用户提供图片的存储和展示服务，粉丝还可对相册进行打赏和点赞行为，是基于图片兴趣分享的社区型产品。"/>
    <title>多粉微相册_微信公众号微相册功能</title>
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
                        <img src="${imageUrl}/product-center/photo-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微相册</h3>

                            <p>各行各业</p>
                            <p>照片展示轻松搞定</p>
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
                        <a href="wifi.jsp">

                            <img class="fl" src="${imageUrl}/product-center/wifi-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='wifi.jsp'>

                                <h3>WIFI加粉</h3>
                            </a>
                            <p>扫码连WIFI
                            </p>
                            <p>粉丝来的快</p>
                        </div>
                    </li>
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
                        <a href="subscribe.jsp">

                            <img class="fl" src="${imageUrl}/product-center/subscribe.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='subscribe.jsp'>
                                <h3>微预约</h3>
                            </a>

                            <p> 一键即可在线</p>
                            <p> 完成各种预约</p>
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
                            <p>给用户身临其境
                            </p>
                            <p>视觉体验</p>
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
                            <p>了解粉丝选择 </p>
                            <p>营销活动新利器</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    多粉微相册，作为微时代平台的一项主打基本功能，为粉丝提供图片的储存、多款模板选择和展示服务，是基于图片兴趣分享的社区型产品。在微相册里，商家可以轻松发布需要展示的图片，开展活动。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                自由创建分类相册，轻松发布照片：粉丝通过图片直观了解商家及产品。
                            </li>
                            <li>支持设置支付查看相册：粉丝要查看相册，需支付后才可查看。
                            </li>
                            <li>支持密码登陆查看相册：粉丝要查看相册，需输入密码后才可查看。
                            </li>
                            <li>支持音乐播放：图片与音乐的融合，提升体验。
                            </li>
                            <li>支持每张图片单独介绍：粉丝翻阅查看时，每张图片都有单独的备注说明。
                            </li>
                            <li>支持短信通知：粉丝支付金额后，商家即时收到短信提醒确认。
                            </li>
                            <li>支持多种互动操作：支持粉丝对相册进行打赏、点赞。
                            </li>
                            <li>支持下载高清原图操作：可设置是否需要付费下载，为商家用户提供多种图片的存储和展示服务，供商家用户选择。
                                商家开启微相册这个功能，是商家品牌展示、文化展示的极佳平台，能够在最短时间把企业信息传递给粉丝。非常适合房产行业、婚纱行业、汽车行业或者需要展示产品图片的商家。
                            </li>


                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/photo-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/photo-code.png" alt="">
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

