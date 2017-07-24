<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉平台开发刮刮乐功能是吸引粉丝关注商家微信成为其会员最为直接有效的方法之一。通过刮刮乐送好礼的方式吸引粉丝，使粉丝持续关注商家的官方微信，保持互动。"/>
    <title>多粉刮刮乐_微信公众号刮刮乐功能</title>
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
                        <img src="${imageUrl}/product-center/big-guagua.png" alt="">
                        <div class="aside-desc">
                            <h3>刮刮乐</h3>
                            <p>动手刮一刮</p>
                            <p>奖品带回家</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：互动、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
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
                        <a href="vote.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vote-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='vote.jsp'>
                                <h3>微投票</h3>
                            </a>

                            <p> 获得用户心声</p>
                            <p>丰富营销思路</p>
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
                多粉平台开发刮刮乐功能是吸引粉丝关注商家微信成为其会员最为直接有效的方法之一。通过刮刮乐送好礼的方式吸引粉丝，使粉丝持续关注商家的官方微信，保持互动。
                </p>
                <!--加-->
                <div class="product-desc-list">
                <p class="light-fn">功能亮点：</p>
               <div class="wrap-ol">
                <ol class="list-introduce-desc">
                    <li>
                        粉丝无需关注公众号即可进入商家设定的刮刮乐游戏。
                    </li>
                    <li>
                        商家设置游戏前可先编辑一条图文消息，提前一天或者当天推送给所有粉丝，告知在某个时间段发某个关键词可以参与刮奖，为活动进行预热。
                    </li>
                    <li>
                        支持设定活动时间、中奖机率、关键词和相应的奖品，确定设置后系统会根据设定的中奖机率产生相应的SN码。

                    </li>
                    <li>
                       支持兑奖：能兑换积分、粉币、流量和实体礼品。
                    </li>
                </ol>
               </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/guagua.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/guagua2.jpg" alt="">-->
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
                    <img src="${imageUrl}/product-center/guagua-code.png" alt="">
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

