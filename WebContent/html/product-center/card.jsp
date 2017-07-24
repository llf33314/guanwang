<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="微名片资料除了包括传统的名片资料外，还包商家介绍等更多、更丰富的资料。将名片资料上传到系统，系统自动生成独立的微名片二维码。将二维码印在纸质名片、或者直接发给客户，客户扫一扫既可轻松查看商家微名片的全部资料。"/>
    <title>多粉微名片_微信公众号微名片功能</title>
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
                        <img src="${imageUrl}/product-center/card.png" alt="">
                        <div class="aside-desc">
                            <h3>微名片</h3>
                            <p>专属线上名片
                                </p>
                            <p>扫码随时分享</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb" style="width: 130px;">类型：推广、展示 </p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="home.jsp">

                            <img class="fl" src="${imageUrl}/product-center/social.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='home.jsp'>
    <h3>微官网</h3>
    </a>

                            <p>5分钟打造</p>
                            <p> 个性化微信网站</p>
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


                            <p>具有极佳视听
                                </p>
                            <p>效果的宣传工具</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="wifi.jsp">

                            <img class="fl" src="${imageUrl}/product-center/wifi-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='wifi.jsp'>
    <h3>WIFI加粉</h3>
    </a>

                            <p> 扫码连WIFI
                               </p>
                            <p>  粉丝来的快</p>
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
                    微名片除了可以显示传统的基本资料外，还可放置商家所需的各种信息，是一款简单、却具有实用性的小功能。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">

                            <li>
                                支持自由创作版面：颜色、布局、图标、风格随意搭配选择。
                            </li>
                            <li>
                                支持多种功能展现：支持一键拨号、一键导航，放置链接及动画视频等功能。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img ">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/card-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/card2.png" alt="">-->
                        </li>
                        <li class="show-img passive">

                        </li>
                    </ul>
                    <%--<div class="guide-vote clear ">--%>
                        <%--<p class=" fl roll active "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                    <%--</div>--%>
                </div>
                <!--加二维码-->
                <div class="code-center">
                    <img src="${imageUrl}/product-center/card-code.png" alt="">
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

