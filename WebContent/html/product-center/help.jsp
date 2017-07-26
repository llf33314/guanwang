<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description"
          content="微助力用于在微信公众号中通过一定的物质激励，动员粉丝去分享自己的活动页面，从而使自己的宣传促销得到爆炸式传播的效果。通过礼品刺激粉丝不停的邀请好友参加。"/>
    <title>多粉微助力_微信公众号营销新模式</title>
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
                        <img src="${imageUrl}/product-center/help-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微助力</h3>
                            <p>邀请好友
                            </p>
                            <p>一起玩起来</p>
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
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="egg.jsp">

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
                    <li class="clear">
                        <a href="red.jsp">

                            <img class="fl" src="${imageUrl}/product-center/red-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='red.jsp'>
                                <h3>让红包飞</h3>
                            </a>

                            <p> 今天你抢红包了吗？</p>

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
                        <a href="shark.jsp">

                            <img class="fl" src="${imageUrl}/product-center/shark.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='shark.jsp'>
                                <h3>摇一摇周边</h3>
                            </a>

                            <p>用户摇起来
                            </p>
                            <p>粉丝涨起来</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    用于在微信公众号中通过一定的物质激励，动员粉丝去分享自己的活动页面，从而使自己的宣传促销得到爆炸式传播的效果。通过礼品刺激粉丝不停的邀请好友参加，当用户自发的分享和参加，甚至为此不停的刷朋友圈时，就能够很好的提高品牌曝光率和知名度。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/help-poster.png" alt="">
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

