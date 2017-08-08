<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="高级预约是多粉为企业商家开发的一款微信预约应用。操作简单，性能稳定、响应速度快。可以广泛运用于房产、酒店、美容、医疗、餐饮、维修等一系列服务行业。"/>
    <title>多粉高级预约_微信公众号预约功能</title>
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
                        <img src="${imageUrl}/product-center/subscribe-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>高级预约</h3>
                            <p>广泛应用于各大</p>
                            <p> 服务行业</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：互动，交易</p>
                        <p class="mb">行业：所有</p>
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
                            <p>5分钟打造
                                </p>
                            <p>个性化微信网站</p>
                        </div>
                    </li>
                    <li class="clear"> 
                        <a href="distribution.jsp">

                            <img class="fl" src="${imageUrl}/product-center/distribution.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='distribution.jsp'>
    <h3>微分销</h3>
    </a>
                            <p>让粉丝成为</p>
                            <p>你的业务员</p>
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
                            <p> 一键即可在线
                                </p>
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
                            <p> 视觉体验</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="favorable.jsp">

                            <img class="fl" src="${imageUrl}/product-center/favorable-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='favorable.jsp'>
    <h3>优惠券</h3>
    </a>
                            <p>电子优惠券利益
                                </p>
                            <p>客户节约营销预算</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    高级预约是多粉为企业商家开发的一款微信预约应用。操作简单，性能稳定、响应速度快。可以广泛运用于房产、酒店、美容、医疗、餐饮、维修等一系列服务行业，为用户出行办事、售前服务、售后服务带来愉快的便捷体验，同时还可帮助商家高效管理自身客户的预约情况。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">




                            <li>
                                强大的订单管理系统，即时统计预约数据，让商家实时掌握！
                            </li>
                            <li>
                                支持自定义首页封面图、首页栏目、营运周期、服务时间、预约业务等。
                            </li>
                            <li>
                                支持新订单邮件通知和短信通知功能。
                            </li>
                            <li>
                                支持自定义分类管理，最高可达三级，让业务更细分，客户选择更轻松。
                            </li>
                            <li>
                                支持在线支付预约定金，保障商家的权利。
                            </li>
                            <li>
                                项目管理系统，商家可根据不同服务向客户提供估算费用。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/subscribe-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/vip2.png" alt="">
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
                    <img src="${imageUrl}/product-center/subscribe-code.png" alt="">
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

