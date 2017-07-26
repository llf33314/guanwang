<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="行业最专业的外勤签到系统拥有移动定位轨迹、移动考勤、移动签到等多项功能，为企业提供外勤人员实时动态管理，解决企业外勤人员“人在哪”和“做什么”管理难题。"/>
    <title>多粉外勤管理_微信公众号外勤管理功能</title>
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
                        <img src="${imageUrl}/product-center/check-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>外勤管理</h3>

                            <p>一站式管理系统
                               </p>
                                 <p>
                                让销售团队更高效</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：管理</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：升级版及以上 </p>
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
                    多粉数据统计包括公众号消息统计、图文信息统计、粉丝数据统计和销售数据统计等。数据统计为企业提供了精准的营销数据信息，企业依据公众号数据统计进行分析，可以制定更有针对性的营销策略和相关决策。评测各项活动的效果和客户行为，从而更有效的服务客户，挖掘潜在客户。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>支持实时统计粉丝数量、性别、地区、来源渠道等。
                            </li>
                            <li>
                                支持实时统计活动的参与人数、访问量和投票数等。
                            </li>
                            <li>
                                支持实时统计公众号粉丝回复，帮你掌握粉丝动态。
                            </li>
                            <li>支持实时统计公众号发布的文本消息、单图文消息、多图文消息等。
                            </li>
                            <li>支持实时订单统计，新增会员数，帮你掌握企业经营状况。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/checkon-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/check2.png" alt="">
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
                    <a href="../missions.jsp">
                    <div class="btn_check">
                      了解详情
                  </div>
                    </a>
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
<style>
    .btn_check{
      width: 120px;
    height: 40px;
    background: #1eb2f6;
    color: white;
    font-size: 18px;
    border-radius: 5px;
    margin: 0 auto;
    line-height: 40px;
    }  
</style>
</body>
</html>

