<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="微团购和传统团购模式有很大区别，微信用户直接通过微信公众号确认团购资格，同时依托于微信公众平台，为那些热爱团购，乐享优惠的微信用户主动推送应季的热门商品。"/>
    <title>多粉微团购_微信公众号团购功能</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/group-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微团购</h3>
                            <p>喊你朋友一起来
                            </p>
                            <p>买买买</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型:转化.互动.交易</p>
                        <p class="mb">行业:所有</p>
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
                    商家依托于微信公众号，发起各类爆款产品团购活动。微团购整个使用流程跟传统团购模式一样，但却因微信公众号的存在，使其具有天生独特的优势。在微信公众号上开展团购活动，不仅可以留住一次性团购用户使其成为公众号的粉丝，引导二次消费。更重要的是某些团购活动需要达到足够人数才能“开团”,而在微信上呼叫朋友“参团”变得更加容易，通过发送链接给好友和朋友圈分享，客户可以帮助商家获取到更多客户。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>支持结合微商城系统，不只是做团购。
                            </li>
                            <li>
                                支持销售实体商品和虚拟产品。
                            </li>
                            <li>
                                支持设置参团人数、限购数量、生效时间等。
                            </li>
                            <li>
                                支持结合多粉会员卡、优惠券功能。
                            </li>
                            <li>
                                支持设置货到付款或微信在线支付功能。
                            </li>
                            <li>
                                支持邀请好友支付参团。
                            </li>
                            <li>
                                支持商家订单信息短信通知功能。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/group-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/guagua.png" alt="">-->
                        </li>
                        <li class="show-img passive">

                        </li>
                    </ul>
                    <%--
                    <div class="guide-vote clear">--%>
                        <%--<p class=" fl roll active "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                        <%--<p class=" fl roll "></p>--%>
                        <%--
                    </div>
                    --%>
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

