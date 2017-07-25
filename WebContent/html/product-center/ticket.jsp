<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="帮助用户管理微信卡券，将原来存在于各服务商公众号或服务号里面的优惠券、打折券等信息集中在卡券菜单里显示，还可实现微信好友间的转赠。
"/>
    <title>多粉卡券_微信公众号卡券功能</title>
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
                        <img src="${imageUrl}/product-center/tiket.png" alt="">
                        <div class="aside-desc">
                            <h3>卡包/券</h3>
                            <p>将优惠券
                                </p>
                            <p>装进微信里</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class fl">
                        <p class="mb">类型：加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
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
                            <p>  用户摇起来</p>
                            <p>  粉丝涨起来</p>
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
                    帮助用户管理虚拟卡券，可以聚合你传统实物钱包里存在的优惠券、电影票、会员卡、登机牌等信息，将原来存在于各服务商公众号或服务号里面的优惠券、打折券等信息集中在卡券菜单里显示，可实现微信好友间的转赠。
                </p>
                <!---->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/ticket.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <!--<img class=" " src="${imageUrl}/product-center/ticket.png" alt="">-->
                        </li>
                        <li class="show-img passive" >

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

