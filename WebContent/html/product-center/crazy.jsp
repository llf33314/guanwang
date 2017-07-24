<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="疯狂数钱，具有流畅的游戏操作体验，丰富的道具系统，不停变动的数字效果，精心而巧妙的设计，一旦上手根本停不下来！"/>
    <title>多粉疯狂数钱_微信公众号游戏功能</title>
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

    <div class="containter ">
        <!--中间内容-->
        <img class="img-product-img" src="${imageUrl}/product-center/poster.png" alt="">
        <div class="vote-main clear">
            <div class="fl vote-content-left">
                <div class="vote-icon">
                    <a href="">
                        <img src="${imageUrl}/product-center/crazy-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>疯狂划算</h3>
                            <p>引流消费两不误
                               
                            </p>
                               <p>
                                玩这游戏真划算
                            </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：游戏、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
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
                            <p>
                                装进微信里
                            </p>
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
                        <a href="photo.jsp">

                            <img class="fl" src="${imageUrl}/product-center/photo.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='photo.jsp'>
    <h3>微相册</h3>
    </a>

                            <p> 各行各业照片</p>
                            <p> 展示轻松搞定</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="">

                            <img class="fl" src="${imageUrl}/product-center/360.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='360.jsp'>
    <h3>360全景</h3>
    </a>

                            <p>给用户身临其境</p>
                            <p> 视觉体验</p>
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

                            <p>动手刮一刮</p>
                            <p>奖品带回家</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    疯狂划算活动其实是一款数钱游戏，在规定时间内，划动钞票数量，看谁是钞票数最多者，企业可以在后台设置礼品奖项，比如优惠券、新品券、代金券等等，带动引流作用的同时刺激玩家消费，系统将记录游戏玩家的最高得分并自动生成富豪榜，玩家可查询自己和其他玩家的排名，富豪榜排名实时刷新。活动结束后，富豪榜排名靠前玩家即可获得惊喜大奖。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/crazy-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/crazy2.png" alt="">
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

