<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="
多粉高级群发让粉丝第一时间了解到企业的动态，以增加粉丝的好感度以及粘性。通过消息群发，既能宣传企业形象，又能让客户主动来转发消息，增加微信粉丝从而制造销售机会。
"/>
    <title>多粉高级群发_微信公众号高级群发功能</title>
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
                        <img src="${imageUrl}/product-center/jun-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>高级群发</h3>
                            <p>粉丝第一时间
                            
                                </p>
                                      <p>
                                收到企业的信息
                                </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型:推广</p>
                        <p class="mb">行业:所有</p>
                        <p>套餐：基础版及以上 </p>
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
                            <p>5分钟打造

                                </p>
                            <p>个性化微信网站</p>
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

                            <p>  一键即可在线</p>
                            <p>  完成各种预约</p>
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
                        <a href="help.jsp">
                        <img class="fl" src="${imageUrl}/product-center/help-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='help.jsp'>

    <h3>微助力</h3>
    </a>
                            <p>
                                邀请好友

                                </p>
                            <p>一起玩起来</p>
                        </div>


                    </li>

                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    高级群发针对消息推送一直持以原创的准则和态度，针对当下时事热点以及餐馆的活动适时推送，让粉丝第一时间了解到企业的动态，以增加粉丝的好感度以及粘性。通过消息群发，既能宣传企业形象，又能让客户主动来转发消息，增加微信粉丝从而制造销售机会。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/mass1.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <img class=" " src="${imageUrl}/product-center/mass2.png" alt="">
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

