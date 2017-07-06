<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content=""/>
    <title>多粉疯狂数钱_微信公众号游戏功能</title>
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
                        <img src="${imageUrl}/product-center/crazyMoney-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>疯狂数钱</h3>
                            <p>快乐比拼

                               
                            </p>
                               <p>
                    疯狂数一数
                            </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：游戏、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="ticket.jsp">

                            <img class="fl" src="${imageUrl}/product-center/small-ticket.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='ticket.jsp'>
    <h3>卡包/券</h3>
    </a>
   <p>将优惠券
                                
                            </p>
                            <p>
                                装进微信里
                            </p>
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
                        <a href="">

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
                    疯狂数钱，具有流畅的游戏操作体验，丰富的道具系统，不停变动的数字效果，精心而巧妙的设计，一旦上手根本停不下来！
                </p>


                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>操作简单，粉丝易上手：在规定时间内，粉丝以点钞的方式由下至上刷钱即可，无需其他操作。
                            </li>
                            <li>支持分享游戏：粉丝可邀请好友参赛，增加游戏的关注度。
                            </li>
                            <li>支持设置游戏金钱面额显示概率：商家可在后台设置各金额的显示率，设置完成后，粉丝在数钱时根据速度出现相应设置的面额。
                            </li>
                            <li>支持排名查看：记录粉丝的得分并自动生成富豪榜，粉丝可查询自己和其他玩家的排名，榜内排名实时更新。
                            </li>
                            <!---->
                            <li>支持背景音乐播放：商家可根据自身的需求上传音乐或选择默认音乐。
                            </li>
                            <li>支持设置奖品：游戏结束后，商家可对排行榜中的前几名赠送礼品，增加粉丝参与的热情。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/crazyMoney-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/crazy2.png" alt="">
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
                    <img src="${imageUrl}/product-center/crazyMoney-code.png" alt="">
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

