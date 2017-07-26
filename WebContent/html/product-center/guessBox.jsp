<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--<meta name="description" content="商家可以利用多粉的微场景，以精美的动态图片向消费者展示商家的产品、活动信息等商业目的，动静结合，打造出不一样的宣传体验。"/>-->
    <title>多粉猜礼盒_微信公众号猜礼盒功能</title>
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

    <div class="containter ">
        <!--中间内容-->
        <img class="img-product-img" src="${imageUrl}/product-center/poster.png" alt="">
        <div class="vote-main clear">
            <div class="fl vote-content-left">
                <div class="vote-icon">
                    <a href="">
                        <img src="${imageUrl}/product-center/guessBox_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>猜礼盒</h3>
                            <p>欢乐猜礼盒

                            </p>
                            <p>惊喜奖品等你拿</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：游戏、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="wifi.jsp">

                            <img class="fl" src="${imageUrl}/product-center/wifi-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='wifi.jsp'>
    <h3>WIFI加粉</h3>
    </a>

                            <p>扫码连WIFI
                            </p>
                            <p>粉丝来的快</p>
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
                    <li class="clear">
                        <a href="photo.jsp">

                            <img class="fl" src="${imageUrl}/product-center/photo.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='photo.jsp'>
    <h3>微相册</h3>
    </a>

                            <p> 各行各业照片</p>
                            <p> 展示轻松搞定</p>
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
                            <p> 视觉体验</p>
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

                            <p>动手刮一刮</p>
                            <p>奖品带回家</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    猜礼盒是粉丝通过选择礼盒从而获得奖励的一款游戏。游戏规则简单操作，有利于吸引粉丝的关注，提高商家与粉丝之间的互动。
                </p>
                
                  <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持设置游戏名称、规则 、兑奖说明与奖品说明，有助于粉丝轻松参与游戏。
                            </li>
                            <li>
                                支持设置背景音乐，为游戏增添乐趣，让粉丝更好地融入到游戏当中。
                            </li>
                            <li>
                                支持设置游戏开始及结束时间、游戏次数，方便商家对游戏进行编辑操作，为商家提供保障。
                            </li>
                            <li>
                                支持设置广告轮播图，有助于提高商家曝光度。
                            </li>
                            <li>
                                支持设置兑奖操作：兑奖方式、兑奖联系电话、兑奖期限，有助于获奖粉丝与商家进行联系。
                            </li>
                            <li>
                                支持设置奖品为积分、粉币、流量、实体物品，多种类型供商家自由选择。
                            </li>
                            <li>
                                支持设置礼盒样式，增加游戏乐趣，有利于商家与粉丝之间的互动。
                            </li>
                            <li>
                                支持领取奖品时识别玩家是否关注商家公众号和是否为商家会员，系统将引导玩家关注商家公众号和开通会员功能。
                            </li>
  
                        </ol>

                    </div>
                </div>
                <!--加-->
                
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/guessBox_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/cj2.png" alt="">
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

  <!--加二维码-->
                <div class="code-center">
                    <img src="${imageUrl}/product-center/guessBox_code.png" alt="">
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

