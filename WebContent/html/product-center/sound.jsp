<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="
微渠道可以让商家微信公众号生成无限个专属ID的推广二维码，每一个推广二维码，都代表不同的推广渠道，可以通过在线下进行二维码海报宣传、或是线上二维码宣传等渠道进行推广。"/>
    <title>多粉语音回复_微信公众号语音回复功能</title>
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
                        <img src="${imageUrl}/product-center/sound_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>语音回复</h3>
                            <p>有声回复

                            
                                </p>
           <p>
               新颖有趣
                                </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>

                    <div class="vote-class-long fl">
                        <p class="mb">类型：推广</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="favorable.jsp">

                            <img class="fl" src="${imageUrl}/product-center/favorable-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='favorable.jsp'>
    <h3>优惠券</h3>
    </a>

                            <p>电子优惠卷利益
                                </p>
                            <p>客户节约营销预算</p>
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
                                         <p>
                                邀你一起玩</p>

                        </div>
                    </li>
                    <li class="clear">
                        <a href="survey.jsp">

                            <img class="fl" src="${imageUrl}/product-center/investigate.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='survey.jsp'>
    <h3>微调研</h3>
    </a>

                            <p> 了解粉丝爱好</p>
                            <p> 实现营销精准化</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="one.jsp">

                            <img class="fl" src="${imageUrl}/product-center/one-sma.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='one.jsp'>
    <h3>一元夺宝</h3>
    </a>


                            <p>一元抽大奖
                              </p>
        <p>
                                营销推广杀手锏</p>
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
                    语音回复是粉丝通过发送关键字，以语音的形式进行回复的一种表达方式。新颖的回复方式，带给粉丝不一样的获取信息的体验。有助于提高商家与粉丝之间的互动，吸引粉丝关注商家消息。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持商家设置语音为欢迎词或默认回复，方便商家回复粉丝，增强互动性。
                            </li>
                            <li>
                                支持上传音乐链接、音乐图片，吸引粉丝关注商家内容，给文章添乐趣。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/sound_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/channel2.png" alt="">
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

