<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>微快店</title>

    <%@include file="/html/common/css.jsp" %>
	<%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $('.roll').on('click', function () {
                $(this).addClass('active');
                $(this).siblings().removeClass('active');

                var index = $(this).index();
                var imgchild = $('.show-img').eq(index);
//                imgchild.removeClass('passive');
//                imgchild.siblings().addClass('passive');
//                imgchild.siblings().addClass('passive');
//                imgchild.removeClass('passive');
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
        <img src="${imageUrl}/product-center/poster.png" alt="">
        <div class="vote-main clear">
            <div class="fl vote-content-left">

                <div class="vote-icon">
                    <a href="">
                        <img src="${imageUrl}/product-center/fast-store.png" alt="">
                        <div class="aside-desc">
                            <h3>多粉快店</h3>
                            <p>手机开店</p>
                            <p>快速方便</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <button class="fl">使用手册</button>
                    <div class="vote-class fl">
                        <p class="mb">类型：加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <img class="fl" src="${imageUrl}/product-center/prudouct-center.png" alt="">
                        <div class="fl desc-vote">
                            <h3>微签到</h3>
                            <p>活动新玩法</p>
                            <p>签到领福利</p>
                        </div>
                    </li>
                    <li class="clear">
                        <img class="fl" src="${imageUrl}/product-center/home.png" alt="">
                        <div class="fl desc-vote">
                            <h3>微社区</h3>
                            <p>横向互动</p>
                            <p>的新玩法</p>
                        </div>
                    </li>
                    <li class="clear">
                        <img class="fl" src="${imageUrl}/product-center/investigate.png" alt="">
                        <div class="fl desc-vote">
                            <h3>微调研</h3>
                            <p> 了解粉丝爱好</p>
                            <p> 实现营销精准化</p>
                        </div>
                    </li>
                    <li class="clear">
                        <img class="fl" src="${imageUrl}/product-center/pay.png" alt="">
                        <div class="fl desc-vote">
                            <h3>多粉支付</h3>
                            <p>让支付变得</p>
                            <p>更加简单快速</p>
                        </div>
                    </li>
                    <li class="clear">
                        <img class="fl" src="${imageUrl}/product-center/shark.png" alt="">
                        <div class="fl desc-vote">
                            <h3>摇一摇</h3>
                            <p>用户摇起来</p>
                            <p>粉丝涨起来</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    快速创建手机商城，依托手机购物的便捷性，实现线上线下同步、多场景的销售。利用微商城可以为商家提供更有效的宣传方
                    式，更有利于商品的推广。
                </p>
                <div class="show-vote">
                    <style>
                        .show-img{
                            position: absolute;
                        }
                    </style>
                    <ul class="show-vote-img" style="position: relative;width: 1000px;height: 380px" >
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/store.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/store2.png" alt="">
                        </li>
                        <li class="show-img passive">

                        </li>
                    </ul>

                    <div class="guide-vote clear">
                        <p class=" fl roll active "></p>
                        <p class=" fl roll "></p>
                        <p class=" fl roll "></p>
                    </div>
                </div>


                <!--------------->
            </div>
        </div>


        <!--中间内容-->
    </div>


    <!--====================================================================================-->


    <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>

