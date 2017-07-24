<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description"
          content="抢元宝以财神为背景，在规定的时间内，通过抓取移动的元宝来累计分数，最后对所有参与游戏的粉丝进行排名，分数高者排名靠前，越有机会获得奖励。"/>
    <title>多粉欢乐抢元宝_微信公众号游戏功能</title>
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
                        <img src="${imageUrl}/product-center/gold_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>欢乐抢元宝</h3>
                            <p>财神到来</p>
                            <p>喜派元宝</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：游戏、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="vote.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vote-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='vote.jsp'>
                                <h3>微投票</h3>
                            </a>
                            <p>获得用户心声</p>
                            <p>丰富营销思路</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="chongjing.jsp">

                            <img class="fl" src="${imageUrl}/product-center/chongjin.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='chongjing.jsp'>
                                <h3>微场景</h3>
                            </a>
                            <p>具有极佳视听</p>
                            <p> 效果的宣传工具</p>
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
                            <p> 快乐大转盘</p>
                            <p> 邀你一起玩</p>


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
                            <p> 奖品带回家</p>
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
                    抢元宝以财神为背景，在规定的时间内，通过抓取移动的元宝来累计分数，最后对所有参与游戏的粉丝进行排名，分数高者排名靠前，越有机会获得奖励。音乐背景有元宝碰撞的声音，生动有趣，充满活力。有助于吸引粉丝参与关注，提高商家与粉丝的互动性。
                </p>


                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持设置游戏名称、规则 、兑奖说明与奖品说明，有助于粉丝轻松参与游戏。
                            </li>
                            <li>
                                支持编写游戏开始前的祝福语，增加与粉丝的互动性。
                            </li>
                            <li>
                                支持上传商家公众号二维码，有助于粉丝关注，提升商家人气。
                            </li>
                            <li>
                                支持设置游戏开始及结束时间、游戏次数，方便商家对游戏进行编辑操作，为商家提供保障。
                            </li>
                            <li>
                                支持设置兑奖操作：兑奖方式、兑奖联系电话、兑奖期限，有助于获奖粉丝与商家进行联系。
                            </li><li>
                            支持设置奖品为积分、粉币、流量、实体物品，多种类型供商家自由选择。
                            </li><li>
                            支持领取奖品时识别玩家是否关注商家公众号和是否为商家会员，系统将引导玩家关注商家公众号和开通会员功能。
                            </li><li>
                            支持添加赞助商信息，提高商家曝光度。
                            </li>


                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/gold_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/wifi3.png" alt="">
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
                    <img src="${imageUrl}/product-center/gold_code.png" alt="">
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

