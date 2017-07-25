<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="以圣诞节为背景所推出的一款摇圣诞树拿礼物游戏。在规定的时间里摇动手机，圣诞树会掉下3份礼物，从中进行选择，选中者即可获得奖励。
"/>
    <title>多粉圣诞大礼包_微信公众号游戏功能</title>
    <link rel="Shortcut Icon" href="/images/alogo.png" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/snowGame_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>圣诞大礼包</h3>
                            <p>圣诞树挂满礼物

                            </p>
                            <p>快把礼物摇下来</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class fl">
                        <p class="mb">类型：游戏、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
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
                    以圣诞节为背景所推出的一款摇圣诞树拿礼物游戏。在规定的时间里摇动手机，圣诞树会掉下3份礼物，从中进行选择，选中者即可获得奖励。配合背景音乐会更加生动有趣。有助于提高商家对粉丝的互动性，有效吸引粉丝的关注。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>支持设置奖品为手机话费、粉币、手机流量、实体物品，多种类型供商家自由选择。
                            </li>
                            <li>支持限制玩家每日游戏次数和游戏总数，为商家提供保障。
                            </li>
                            <li>支持设置权限：分为所有粉丝参与或仅会员参与游戏。有助于未成为会员的粉丝通过游戏成为商家会员。
                            </li>
                            <li>支持开启转赠功能，即中奖人可以把奖品转赠给他人。有助于老粉丝通过转赠方式吸引新粉丝参与关注，达到粉丝沉淀的效果。
                            </li>
                            <li>支持设置背景音乐，让游戏更加生动有趣，有利于吸引粉丝参与互动
                            </li>
                            <li>支持上传商家公众号二维码及名称，有助于粉丝关注，提升商家人气。
                            </li>
                            <li>支持领取奖品时识别玩家是否关注商家公众号和是否为商家会员，系统将引导玩家关注商家公众号和开通会员功能。
                            </li>
                            <li>支持添加赞助商信息，提高商家曝光度。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <!---->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/snowGame_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/ticket.png" alt="">-->
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
                    <img src="${imageUrl}/product-center/snowGame_code.png" alt="">
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

