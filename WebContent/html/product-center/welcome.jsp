<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>多粉欢迎页_微信公众号欢迎页功能</title>
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
                        <img src="${imageUrl}/product-center/welcome-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>欢迎页</h3>
                            <p>新颖有趣</p>
                            <p>企业展示新方式</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型： 加粉，互动 </p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>

                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="vote.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vote-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='vote.jsp'>
                                <h3>微投票</h3>
                            </a>
                            <p>获得用户心声
                            </p>
                            <p>丰富营销思路</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="card.jsp">

                            <img class="fl" src="${imageUrl}/product-center/card-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='card.jsp'>
                                <h3>微名片</h3>
                            </a>
                            <p>专属线上名片
                            </p>
                            <p>扫码随时分享</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="guaguale.jsp">

                            <img class="fl" src="${imageUrl}/product-center/guaguale.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='guaguale.jsp'>
                                <h3>刮刮乐</h3>
                            </a>
                            <p> 动手刮一刮
                            </p>
                            <p> 奖品带回家</p>
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
                    欢迎页是指将商家信息、服务、活动等内容通过图片展示、文字简介，结合语音彩铃的方式进行展现，以“微信”为媒介，将信息浓缩在欢迎页上，使信息的展现更加赏心悦目，进一步提高用户体验。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持自由上传banner图：默认两个样式，商家可根据自身需求选择或个性化上传。
                            </li>

                            <li>
                                支持图片滑动展示：图片可点击放大，通过图文结合的方式展现，让粉丝对商家有进一步了解。
                            </li>
                            <li>
                                拆见面礼：商家可设置抽奖活动、小游戏或直接给礼物，让粉丝感知倍增并会推荐其他的粉丝进来拆见面礼，商家礼仪做足的同时粉丝又倍增。
                            </li>
                            <li>
                                支持设置专属铃音：三款案例选择试听，可联系客服定制由专业播音员录制的专属铃音；给人一种声情并茂的感觉更能体现商家企业文化宣传的细致要求。
                           </li>


                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/welcome-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/shop-poster2.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/shop2.png" alt="">-->
                        </li>
                    </ul>



                </div>
                <!--加二维码-->
                <div class="code-center longCode">
                    <img src="${imageUrl}/product-center/welcome-code.png" alt="">
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

