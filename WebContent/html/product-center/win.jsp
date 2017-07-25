<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
 <meta name="description" content="一战到底是模拟丰富问答题库系统游戏，并且支持企业自定义题目，题目类型多样，包括选择题、填空题、问答题等等，企业可设置用户每天的参与次数。"/>
    <title>多粉一站到底_微信公众号游戏功能</title>
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
                        <img src="${imageUrl}/product-center/win-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>一站到底</h3>
                            <p>强大题库系统</p>
                            <p>考验最强大脑</p>
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
                        <a href="ball.jsp">

                            <img class="fl" src="${imageUrl}/product-center/ball-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='ball.jsp'>
    <h3>点球大战</h3>
    </a>
                            <p>一起来踢一场
                                </p>
                            <p>趣味世界杯</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="crazy.jsp">

                            <img class="fl" src="${imageUrl}/product-center/crazy-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='crazy.jsp'>
    <h3>疯狂划算</h3>
    </a>
                            <p>引流消费两不误</p>
                            <p>玩这游戏真划算</p>

                        </div>
                    </li>
                    <li class="clear">
                        <a href="survey.jsp">

                            <img class="fl" src="${imageUrl}/product-center/investigate.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='survey.jsp'>
    <h3>微调研</h3>
    </a>
                            <p> 了解粉丝爱好
                                </p>
  <p> 
                                    实现营销精准化</p>
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
                            <p>邀请好友</p>
                            <p>参与互动</p>
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
                    一战到底是模拟丰富问答题库系统游戏，并且支持企业自定义题目，题目类型多样，包括选择题、填空题、问答题等等，企业可设置用户每天的参与次数，一站到底游戏活动结束后根据得分情况排名通知用户领取奖品。
                </p>
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/win-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/win2.png" alt="">
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

