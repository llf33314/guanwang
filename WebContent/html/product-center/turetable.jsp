<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="适合所有微信公众号,配置简单,界面优雅,可以快速引爆粉丝互动，商家通过设置活动内容、奖项及中奖比例，让粉丝通过幸运大转盘获得相应的礼品。
"/>
    <title>多粉大转盘_微信公众号大转盘功能</title>
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
                        <img src="${imageUrl}/product-center/retrun-big.png" alt="">
                        <div class="aside-desc">
                            <h3>大转盘</h3>
                            <p>快乐大转盘
                            </p>
                            <p> 邀你一起玩</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：互动，加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="subscribe.jsp">

                            <img class="fl" src="${imageUrl}/product-center/subscribe.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <h3>微预约</h3>
                            <p>一键即可在线</p>
                            <p>完成各种预约</p>
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
                            <p>具有极佳视听

                            </p>
                            <p> 效果的宣传工具 </p>
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
                            <p> 获得用户心声
                                </p>
                            <p> 丰富营销思路</p>
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
                <p class="product-desc">
                    大转盘可为商家提供转盘抽奖服务，商家通过设置活动时间，预计参加抽奖人数，相应奖项和触发关键词，由粉丝参与抽奖。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持自定义活动的名称：设定活动的开始和结束时间。
                            </li>
                            <li>
                                支持设置每人的抽奖次数：系统将根据商家的设置自动产生中奖的几率。
                            </li>
                            <li>
                                支持背景音乐播放：商家可根据自身的需求上传音乐。
                            </li>
                            <li>
                                支持参与人员设定：商家可根据需求，选择是所有粉丝或是持有会员卡的会员参与。
                            </li>
                            <li>
                                支持赠送虚拟奖品：自动识别是否会员，积分、粉币、流量统一赠送到会员卡内。
                            </li>
                            <li>
                                支持开启转增模式：粉丝中奖后，可将奖品转赠给他人。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->

                <!---->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/turntable.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <!--<img class=" " src="${imageUrl}/product-center/turntable.png" alt="">-->
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
                    <img src="${imageUrl}/product-center/return-code.png" alt="">
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

