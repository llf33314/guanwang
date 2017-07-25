<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="摇手气游戏，通过快速摇晃手机即有机率获取奖品。粉丝参与规则简单，有利于吸引粉丝关注，有助于提高商家与粉丝的互动。
"/>
    <title>多粉摇手气_微信公众号游戏功能</title>
    <link rel="Shortcut Icon" href="/images/alogo.png" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/hand_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>摇手气</h3>
                            <p>全民疯摇

                               </p>
                                         <p>
                                             奖品摇出来</p>
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
                        <a href="card.jsp">

                            <img class="fl" src="${imageUrl}/product-center/card-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='card.jsp'>
    <h3>微名片</h3>
    </a>
                            <p>专属线上名片
                                扫码随时分享</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="chongjing.jsp">

                            <img class="fl" src="${imageUrl}/product-center/chongjin.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='chongjing.jsp'>
    <h3>微场景</h3>
    </a>
                            <p>具有极佳视听</p>
                            <p> 效果的宣传工具</p>
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
                            <p>    快乐大转盘</p>
                            <p>   邀你一起玩</p>


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
                            <p>  奖品带回家</p>
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
                    摇手气游戏，通过快速摇晃手机即有机率获取奖品。粉丝参与规则简单，有利于吸引粉丝关注，有助于提高商家与粉丝的互动。不但可以巩固老粉丝的持续支持，还能吸引新粉丝的参与关注，从而达到粉丝沉淀的效果。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持设置游戏名称、规则 、兑奖说明、开始提示，有助于粉丝轻松参与游戏。
                            </li>
                            <li>
                                支持上传商家公众号二维码及名称，有助于粉丝关注，提升商家人气。
                            </li>
                            <li>
                                支持设置游戏开始、结束时间、游戏次数，方便商家对游戏进行编辑操作，为商家提供保障。
                            </li>
                            <li>
                                支持设置兑奖操作：兑奖方式、兑奖联系电话、兑奖期限，有助于获奖粉丝与商家进行联系。
                            </li>
                            <li>
                                支持上传商家轮播图，可编写轮播图描述，提高商家曝光度。
                            </li>
                            <li>
                                支持设置奖品为积分、粉币、流量、实体物品，多种类型供商家自由选择。
                            </li>
                            <li>
                                支持领取奖品时识别玩家是否关注商家公众号和是否为商家会员，系统将引导玩家关注商家公众号和开通会员功能。
                            </li>
                            <li>
                                支持添加赞助商信息，提高商家曝光度。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/hand_poster.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <img class=" " src="${imageUrl}/product-center/sytem2.png" alt="">
                        </li>
                        <li class="show-img passive" >

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
                <img src="${imageUrl}/product-center/hand_code.png" alt="">
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

