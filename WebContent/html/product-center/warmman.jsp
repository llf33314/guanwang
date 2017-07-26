<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="暖男躲避战顾名思义就是一种躲避球游戏，游戏规则简单明了，粉丝在游戏中躲避的障碍物越多，成绩越好，活动结束后，根据排名派发奖品。"/>
    <title>多粉暖男躲避战_微信公众号游戏功能</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/warmman-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>暖男躲避战</h3>
                            <p>微信游戏新花样
                                </p>
                                    <p>
                                一起来玩躲避战</p>
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
                        <a href="">

                            <img class="fl" src="${imageUrl}/product-center/win-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='win.jsp'>
    <h3>一站到底</h3>
    </a>
                            <p>强大题库系统
                               
                                </p>
                                          <p>
                                考验最强大脑
                                </p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="">

                            <img class="fl" src="${imageUrl}/product-center/ball-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='ball.jsp'>
    <h3>点球大战</h3>
    </a>
                            <p>一起来踢一场
                                </p>
                            <p>趣味世界杯</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="">

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
                        <a href="">

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
                    暖男躲避战顾名思义就是一种躲避球游戏，游戏规则简单明了，粉丝在游戏中躲避的障碍物越多，成绩越好，活动结束后，根据排名派发奖品，同时以电影《我的早更女友》为人物原型，通过明星效应，带来病毒式传播。企业还可以在游戏中设置幸运奖项，并且说明分享能提高中奖概率，吸引大量新增粉丝。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/warmman-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/wramman2.png" alt="">
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

