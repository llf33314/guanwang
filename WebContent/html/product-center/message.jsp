<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="
留言板是一种能为商家带来巨大的社会化流量的功能，用户对商家进行实时且客观的评价，真实的社交环境保证了留言的客观性和有效性。“留言板”的使用商家只需做好产品和用户服务即可，随着口碑的传播，消费者将源源不断。
"/>
    <title>多粉留言板_微信公众号留言板功能</title>
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
                        <img src="${imageUrl}/product-center/message-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>留言板</h3>
                            <p>商家、用户
                                零距离
                                </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：转化、沉淀</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
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

    <h3>微官网 </h3>
    </a>
                            <p>5分钟打造
                                </p>
                                 <p>
                                个性化微信网站</p>
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
                    “留言板”是一种能为商家带来巨大的社会化流量的功能，用户对商家进行实时且客观的评价，真实的社交环境保证了留言的客观性和有效性。“留言板”的使用商家只需做好产品和用户服务即可，随着口碑的传播，消费者将源源不断。
                </p>
  <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                               支持样式多样性：三款样式，商家根据自身需求选择。
                            </li>
                            <li>
                               支持音频选择：三款案例选择试听，可联系客服量身定制由专业播音员录制的彩铃背景音。
                            </li>
                            <li>
                             支持留言管理：留言审核、并可对单个粉丝拉黑。
                            </li>
                   
                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/message-poster.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <!--<img class=" " src="${imageUrl}/product-center/wifi.png" alt="">-->
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
                    <img src="${imageUrl}/product-center/mssage-code.png" alt="">
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

