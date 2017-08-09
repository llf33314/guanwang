<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉微商城布局想换就换，风格说变立刻变。自由拖拽、个性布局、多样的主题风格、配色、海量商城模板、商品管理功能、更个性化的商品分类、商品规格、商品品牌。"/>
    <title>多粉微商城_微信公众号商城功能</title>

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
                        <img src="${imageUrl}/product-center/shop.png" alt="">
                        <div class="aside-desc">
                            <h3>微商城</h3>
                            <p>手机开店</p>
                            <p>快速方便</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：互动、交易 </p>
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
                <pre class="product-desc">
多粉微商城，帮你消灭设计师，自己说了算！
商城布局想换就换，风格说变立刻变！
* 自由拖拽、个性布局
* 多样的主题风格、配色
* 海量商城模板

商品管理功能
更个性化的商品分类、商品规格、
商品品牌可以自定义增加删减，完全随品牌、商家需求而变，灵活，个性化体验！
                </pre>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                随时查看商品关注量：每个商品都可显示粉丝的浏览量，商家可根据商品的浏览数量进行下一步的营销计划。
                            </li>
                            <li>
                                支持秒杀功能：秒杀，优惠的价格，在规定时间内，先抢者先得。商家利用秒杀这种销售方式可以让买家更有购买欲望，引起关注量。

                            </li>
                            <li>
                                支持拼团功能：拼团即是拼凑起来团购。玩法新颖独特，由团长发起拼团，邀请小伙伴参加，达到拼团人数就可以以优惠价格来购买参加拼团的商品。

                            </li>
                            <li>
                                支持拍卖功能：搭建自有商品拍卖平台，通过限时限量的竞拍将物品出售。激发粉丝会员兴趣，达到宣传的效果。
                            </li>
                            <li>
                                积分商城：粉丝可在积分商城专区以及相关活动中直接兑换超值商品。
                            <li>
                                商品积分抵扣：粉丝在商城购物结账时，可将积分用于抵现，兑换支付购买。
                            </li>
                            <li>
                                优惠劵抵扣商品：粉丝在用户商城领取优惠劵，可在购物结账中使用。
                            </li>
                            <li>
                                设定多种购买类型：
                                <ul>
                                    <li>
                                        ①支持私密优惠，与商家单独进行交流沟通，后台可单独针对个人给予优惠管理；
                                    </li>
                                    <li>
                                        ②支持关联会员卡，根据粉丝会员级别，享受不一样的商品购买价格；
                                    </li>
                                    <li>
                                        ③粉丝可成为批发商或购买一定商品数量，享受商家设定的批发价；
                                    </li>
                                    <li>
                                        ④粉丝亦可成为商家代理商，享受代理价格，拿货购买；
                                    </li>
                                </ul>
                            </li>
                            <li>
                                支付与物流：支持到店自提，微信支付，找人代付，物流管理等，多种选择。
                            </li>
                            <li>
                                订单通知快：商家不仅可在后台查看订单信息，还可设置短信提醒，及时处理。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/shop-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/shop-poster2.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/shop2.png" alt="">-->
                        </li>
                    </ul>

                    <div class="guide-vote clear">
                        <p class=" fl roll active "></p>
                        <p class=" fl roll "></p>
                       

                    </div>

                </div>
                <!--加二维码-->
                <div class="code-center longCode">
                    <img src="${imageUrl}/product-center/shop-code.png" alt="">
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

