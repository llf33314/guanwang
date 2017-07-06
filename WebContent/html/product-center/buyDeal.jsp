<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description"
          content="优惠买单采用消费后实时支付的方式，有效减少了消费者提前买券、抄券、验券、付款等一系列环节，消费者结账时在公众号上的优惠买单页面输入消费金额，使用微信支付即可完成消费。"/>
    <title>多粉优惠买单_微信公众号优惠买单功能</title>
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
        });
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
                        <img src="${imageUrl}/product-center/buyDeal_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>优惠买单</h3>
                            <p>免去繁琐操作
                            </p>
                            <p> 优惠减免一步到位</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：转化</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="one.jsp">

                            <img class="fl" src="${imageUrl}/product-center/one.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='one.jsp'>

                                <h3>一元夺宝</h3>
                            </a>

                            <p>一元抽大奖
                            </p>
                            <p>营销推广杀手锏</p>
                        </div>
                    </li>
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
                            <p>装进微信里</p>
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

                            <p> 用户摇起来
                            </p>
                            <p> 粉丝涨起来</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="red.jsp">

                            <img class="fl" src="${imageUrl}/product-center/red-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='red.jsp'>
                                <h3>让红包飞</h3>
                            </a>

                            <p>今天你抢红
                            </p>
                            <p>包了吗？</p>
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

                            <p>邀请好友
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
                    优惠买单采用消费后实时支付的方式，有效减少了消费者提前买券、抄券、验券、付款等一系列环节，消费者结账时在公众号上的优惠买单页面输入消费金额，使用微信支付即可完成消费。支付过程中，消费者还可自动享受优惠减免，明显提升用户体验，缩减环节，告别繁琐。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持自动判断会员等级显示对应的优惠买单折扣。
                            </li>
                            <li>
                                支持粉丝付款成功后短信通知商家。
                            </li>
                            <li>
                                新粉丝首次使用优惠买单进行付款，可短信通知商家。
                            </li>
                            <li>
                                支持线下扫码识别粉丝是否含有优惠券、积分、粉币。
                            </li>
                            <li>
                                支持多种优惠减免规则，如消费金额减免、优惠券减免、积分抵扣、粉币抵扣。
                            </li>
                            <li>
                                详细的后台交易数据查询功能，助力商家经营分析。
                            </li>
                            <li>
                                支持粉丝付款后金额直接转入商家微信钱包,再也无需通过第三方平台结算。
                            </li>
                            <li>
                                支持粉丝通过优惠买单付款成功后，收到商家公众号消息模板通知。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/buyDeal_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/store2.png" alt="">-->
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
                <!--加二维码-->
                <div class="code-center">
                    <img src="${imageUrl}/product-center/buyDeal_code.png" alt="">
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

