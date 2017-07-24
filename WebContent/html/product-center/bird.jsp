<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="鹊桥相会活动以简单粗暴的特质激起众多粉丝的恋爱情结，以按顺序踩块块作为游戏基础，谁的时间最短，就会在排行榜上站住第一名，企业可以设置概率幸运奖。"/>
    <title>多粉鹊桥相会_微信公众号游戏功能</title>
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
                    <a href="bird.jsp">
                        <img src="${imageUrl}/product-center/bird-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>鹊桥相会</h3>
                            <p>谈一场
                               </p>
                                 <p>
                                简单粗暴的恋爱</p>
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
                        <a href="ball.jsp">

                            <img class="fl" src="${imageUrl}/product-center/ball-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='ball.jsp'>
    <h3>点球大战</h3>
    </a>
<p>一起来踢一场
                              
                                </p>
                            <p>
                                趣味世界杯
                                </p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="turetable.jsp">

                            <img class="fl" src="${imageUrl}/product-center/card-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='card.jsp'>
    <h3>微名片</h3>
    </a>
  <p>专属线上名片 
                                </p>
                            <p>扫码随时分享
                                </p>
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
                        <a href="">

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
                    鹊桥相会活动以简单粗暴的特质激起众多粉丝的恋爱情结，以按顺序踩块块作为游戏基础，谁的时间最短，就会在排行榜上站住第一名，企业可以设置概率幸运奖，让即便觉得自己速度不快的粉丝也可以拼人品赢得幸运奖'，帮助商户实现精准营销。粉丝只要通过游戏链接注册登陆成功，便可以开始推荐好友参加游戏赚取积分或是得到相应的奖品。

                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/bird-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/bird2.png" alt="">
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

