<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description"
          content="摇一摇周边为线下商户提供近距离连接用户的能力，并支持线下商户向周边用户提供个性化营销、互动及信息推荐等服务。
"/>
    <title>多粉摇一摇周边_微信公众号摇一摇功能</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/shark-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>摇一摇周边</h3>
                            <p>邀请好友
                            </p>
                            <p>参与互动</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：游戏、加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="egg.jsp">

                            <img class="fl" src="${imageUrl}/product-center/egg.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='egg.jsp'>
                                <h3>砸金蛋</h3>
                            </a>
                            <p>微信砸金蛋
                            </p>
                            <p>一锤搞定</p>
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
                    <li class="clear">
                        <a href="red.jsp">

                            <img class="fl" src="${imageUrl}/product-center/red-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='red.jsp'>

                                <h3>让红包飞</h3>
                            </a>
                            <p> 今天你抢红包了吗？</p>

                        </div>
                    </li>
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
                        <a href="light.jsp">

                            <img class="fl" src="${imageUrl}/product-center/light-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='light.jsp'>
                                <h3>点灯笼</h3>
                            </a>
                            <p> 邀请好友
                            </p>
                            <p>参与互动</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    摇一摇周边为线下商家提供近距离连接粉丝的能力，并支持线下商家向周边粉丝提供个性化营销、互动及信息推荐等服务。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>申请条件简单：商家按流程指引申请接入。申请审核通过后，按照配置流程操作，即可成功启用。
                            </li>
                            <li>支持随身携带：在手机蓝牙打开的状态下，当粉丝在微信中打开摇一摇，如果处于iBeacon设备的信号范围内，会自动出现”周边”页卡，此时粉丝摇一摇就会获得周边的优惠与服务等信息。
                            </li>
                            <li>支持关注商家公众号：粉丝通过摇一摇即可关注商家的微信公众号，增加粉丝数量。
                            </li>
                            <li>支持摇出商城：粉丝摇出商城，即可进行在线购物。
                            </li>
                            <li>支持领取优惠劵：激发粉丝消费欲望。
                            </li>
                            <li>支持互动游戏：大转盘、刮刮乐、疯狂数钱等小游戏，应有尽有。
                            </li>
                            <li>适合会议、促销等现场活动使用：通过设置互动游戏，赠送礼品等，活跃现场气氛，迅速提高关注热度。
                                周边摇一摇打通了“人-信息-服务-线下场所”的四重链接，多粉旗下任何模块均支持商家设置使用。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/shark-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/shark-code.png" alt="">
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

