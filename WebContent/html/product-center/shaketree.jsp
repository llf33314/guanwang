    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="utf-8">
            <meta name="description" content="多粉微官网易用性好，层次结构清晰，图片、文字内容更加简洁、只做客户最需要的信息。支持多款模板选择，整体色调自由调配选择，
支持多种功能展现。"/>
            <title>多粉摇钱树_微信公众号摇钱树功能</title>
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
        <img src="${imageUrl}/product-center/shaketree_icon.png" alt="">
        <div class="aside-desc">
        <h3>摇钱树</h3>

        <p>元宝金币摇一摇

       </p>
         <p>
             纷纷掉落拿奖品</p>
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
        <a href="datec-center.jsp">

        <img class="fl" src="${imageUrl}/product-center/data-small.png" alt="">
        </a>
        <div class="fl desc-vote">
        <a href='datec-center.jsp'>
        <h3>数据统计</h3>
        </a>

        <p>轻松了解用户信息
        制定精准营销
        </p>
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

        <p>动手刮一刮
        </p>
        <p>奖品带回家</p>
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

        <p> 一键即可在线</p>
        <p> 完成各种预约</p>
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

        <p>了解粉丝选择 </p>
        <p>营销活动新利器</p>
        </div>


        </li>
        </ul>

        </div>

        <!--=============-->
        <div class="fr vote-content-right">
        <h1 class="product-detail">产品详情</h1>
        <p class="product-desc">
            摇钱树，顾名思义就是通过摇晃手机来获得从树上掉落的元宝与金币。在限定时间内对获得的元宝数与金币数进行排名，元宝数越多，排名越靠前。看到无数的元宝与金币掉落，让人心情愉悦欢快。有助于增加商家与粉丝之间的互动，吸引粉丝关注。
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
                                支持设置元宝兑换金币的比例，有助于统计元宝与金币的排行情况。

                            </li>
                            <li>
                                支持上传商家公众号二维码，有助于粉丝关注，提升商家人气。

                            </li>
                            <li>
                                支持设置游戏开始及结束时间、游戏次数，方便商家对游戏进行编辑操作，为商家提供保障。
                            </li>
                            <li>
                                支持设置每次参与游戏需消耗粉币数或积分数，有利于粉丝通过游戏而成为商家会员。
                            </li>
                            <li>
                                支持设置兑奖操作：兑奖方式、兑奖联系电话、兑奖期限，以及设置发送中奖信息，有助于获奖粉丝与商家进行联系。
                            </li>
                            <li>
                                支持设置奖品为积分、粉币、流量、实体物品，多种类型供商家自由选择。
                            </li>
                            <li>
                                支持领取奖品时识别玩家是否关注商家公众号和是否为商家会员，系统将引导玩家关注商家公众号和开通会员功能
                            </li>
                            <li>
                                支持上传广告链接，提高商家曝光度。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->
        <div class="show-vote">
        <ul class="show-vote-img">
        <li class="show-img">
        <img class=" " src="${imageUrl}/product-center/shaketree_poster.png" alt="">
        </li>
        <li class="show-img passive">
        <!--<img class=" " src="${imageUrl}/product-center/check2.png" alt="">-->
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
                    <img src="${imageUrl}/product-center/shaketree_code.png" alt="">
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

