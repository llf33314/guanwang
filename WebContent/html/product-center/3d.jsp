<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="3D全景是建立在现实场景的基础上，通过模拟实景的方式，构建一个虚拟的展示环境，让用户如身临其境般地浏览场景。"/>
    <title>多粉3D全景_微信公众号3D全景应用</title>
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
                        <img src="${imageUrl}/product-center/3d-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>3D全景</h3>
                            <p>身临其境般</p>
                            <p>虚拟现实场景</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb" style="width: 130px;">类型：推广、展示 </p>
                        <p class="mb">行业：</p>
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
                    3D全景是建立在现实场景的基础上，通过模拟实景的方式，构建一个虚拟的展示环境，让用户如身临其境般地浏览场景。3D全景是一种全新的现实场景展示形式。它画面真实精美、信息丰富、交互性强，同时拍摄简单、制作快捷，逐渐受到广大行业欢迎，成为一种主流的宣传展示方式。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">

                            <li>
                                适用于校园、展会、市政、家装、博物馆、酒店、景区、房产等各种行业。
                            </li>
                            <li>
                                支持Android和iOS等拥有陀螺仪的设备，进行模拟现场查看。
                            </li>
                            <li>
                                支持添加自定义背景音乐。
                            </li>
                            <li>
                                支持在全景图上进行标记，点击标记点展开介绍。
                            </li>
                            <li>
                                支持导航条功能，可设置成客服QQ，一键导航，一键预约等。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img ">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/3d-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/3d-code.png" alt="">
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

