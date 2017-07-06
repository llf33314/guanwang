<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="商家可以利用多粉的微场景，以精美的动态图片向消费者展示商家的产品、活动信息等商业目的，动静结合，打造出不一样的宣传体验。"/>
    <title>多粉微场景_微信公众号微场景功能</title>
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
                        <img src="${imageUrl}/product-center/cj-big.png" alt="">
                        <div class="aside-desc">
                            <h3>微场景</h3>
                            <p>具有极佳视听
                            </p>
                            <p>效果的宣传工具</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：推广,展示</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：升级版及以上 </p>
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
                微场景，就像用图片、动画或者视频的方式记录着生活中的片段，以充满科技感的交互模式，连接着生活中的每一个人。因此，不管是购物还是企业宣传等越来越倾向于在场景化的时间和空间发生。
                </p>
                
                  <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                              轻松创建应用场景：编辑场景名称，选择场景类型，海量模板随选，套装模板更快捷。
                            </li>
                            <li>
                                支持组件随意搭配：音乐可自由上传，多款效果随心选择，功能全面，制作简单。

                            </li>
                            <li>
                                支持多种功能展现：支持单独获取超级链接与二维码、一键拨号、一键导航等功能。

                            </li>
                            <li>
                              支持预约功能：：粉丝浏览完商家的场景介绍后进行在线预约。
                            </li>
                            <li>
                              支持在线报名：粉丝浏览完商家的场景介绍后可进行在线报名。
                            </li>
                            <li>
                             免费制作：根据商家要求，量身定制。
                            </li>
  
                        </ol>
                        <div>
                        相对于传统的广告传播方式，微场景不仅传播速度快，而且通过别致的创意，精美的图片、动画等，辅以应景的音乐，形成强烈的视觉冲击，容易引起粉丝的情感共鸣，达到宣传效果。因此，商家可以利用多粉的微场景，以精美的动态图片向消费者展示商家的产品、活动信息等商业目的，动静结合，打造出不一样的宣传体验。
                        </div>
                    </div>
                </div>
                <!--加-->
                
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/chongjing-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/chongjing-code.png" alt="">
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

