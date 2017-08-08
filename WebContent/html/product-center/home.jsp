    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="utf-8">
            <meta name="description" content="多粉微官网易用性好，层次结构清晰，图片、文字内容更加简洁、只做客户最需要的信息。支持多款模板选择，整体色调自由调配选择，
支持多种功能展现。"/>
            <title>多粉微官网_微信公众号微官网功能</title>
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
        <img src="${imageUrl}/product-center/home-icon.png" alt="">
        <div class="aside-desc">
        <h3>微官网</h3>

        <p>5分钟打造
       </p>
         <p>
        个性化微信网站</p>
        </div>
        </a>
        </div>
        <div class="user-explain clear">
            <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
        <div class="vote-class-long fl">
        <p class="mb">类型：推广，展示</p>
        <p class="mb">行业：所有</p>
        <p>套餐：基础版及以上 </p>
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
        当智能手机已逐渐成为人们的一种生活方式时，多粉微官网，顺应时代潮流，采用高易用性和视觉舒适性的人际交互界面，不同行业模板来制作满足不同企业需求；是移动互联网时代的企业应用与商业服务平台，创新性地结合了移动互联网技术与企业信息化建设，实现了企业品牌展现、互动营销、商业交易与服务功能。
        </p>
        
        <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                              易用性好：层次结构清晰，图片、文字内容更加简洁、只做商家最需要的信息。
                            </li>
                            <li>
                               支持多款模板选择：海量模板，整体色调自由调配选择。

                            </li>
                            <li>
                              支持多种功能展现：支持单独获取超级链接与二维码、一键拨号、一键导航等功能。

                            </li>
                            <li>
                            支持二级官网展示：全方位满足商家需求，展现企业品牌。
                            </li>
                            <li>
                        支持各类讯息实时更新：如优惠促销、最新资讯、节日关怀等，更快捷、精准免费推送给客户，客户免费获取信息时对其感兴趣。
                            </li>
               
                        </ol>
                    </div>
                </div>
                <!--加-->
        <div class="show-vote">
        <ul class="show-vote-img">
        <li class="show-img">
        <img class=" " src="${imageUrl}/product-center/homw-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/home-code.png" alt="">
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

