<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="在线客服是展示企业形象，加强企业与房客互动的必备工具。微客服系统，是一款专门为微信商家打造的实时沟通软件，可以让商家方便快捷的接收用户发来的消息并及时的进行回答。"/>
    <title>多粉微客服_微信公众号客服功能</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/waite-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微客服</h3>
                            <p>沟通中</p>
                                                            <p>
                                创造无限商机</p>
                                
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class fl">
                        <p class="mb">类型：沟通</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="message.jsp">

                            <img class="fl"  src="${imageUrl}/product-center/wexin-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='message.jsp'>
    <h3>微留言</h3>
    </a>
                            <p>良性互动
                                </p>
                            <p>传播企业口碑</p>
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
                            <p>各行各业</p>
                            <p> 照片展示轻松搞定</p>
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
                            <p> 具有极佳视听</p>
                            <p> 效果的宣传工具</p>
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
                            <p>给用户身临其境</p>
                            <p>视觉体验</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="waiter.jsp">

                            <img class="fl" src="${imageUrl}/product-center/server.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='waiter.jsp'>
    <h3>微客服</h3>
    </a>
                            <p>沟通中
                                </p>
                            <p> 创造无限商机</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    在线客服是展示企业形象，加强企业与房客互动的必备工具。微客服系统，是一款专门为微信商家打造的实时沟通软件，可以让商家方便快捷的接收用户发来的消息并及时的进行回答。有效的为商家创造无限的商机，避免了客户信息的丢失。
                </p>

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " style="height: 329px;"  src="${imageUrl}/product-center/wariter1.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <img class=" " style="height: 329px;"  src="${imageUrl}/product-center/waiter2.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <img class=" " style="height: 329px;"  src="${imageUrl}/product-center/waier3.png" alt="">
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

