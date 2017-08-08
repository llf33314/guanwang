<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉360全景支持高清观看，粉丝可任意放大缩小，在不同的景区、房间或项目中自由切换，真实感强，无视角死区。360全景运用专业的拍摄器材和专业的摄影技术，可以把现场给人的整体印象和每个环境的细节全面的记录下来。"/>
    <title>多粉一站到底_微信公众号一站到底功能</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
    <%@include file="/html/common/css.jsp" %>
    <%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {

            $("#banner").slideLx({"height": 401});
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

    <div id="banner" class="focusad">
        <ul>
            <li><a href="#"><img src="${imageUrl}/product-center/poster.png"></a></li>
        </ul>
    </div>
    <div class="containter">


        <div class="vote-main clear">
            <div class="fl vote-content-left">

                <div class="vote-icon">
                    <a href="">
                        <img src="${imageUrl}/product-center/onewin_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>一站到底</h3>
                            <p>刷智商答题</p>
                            <p>考验最强大脑</p>
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
                        <p>套餐：高级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="signin.jsp">

                            <img class="fl" src="${imageUrl}/product-center/prudouct-center.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href="signin.jsp">
                                <h3>微签到</h3>
                            </a>

                            <p>活动新玩法</p>
                            <p>签到领福利</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="social.jsp">

                            <img class="fl" src="${imageUrl}/product-center/home.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href="social.jsp">
                                <h3>微社区</h3>
                            </a>
                            <p>横向互动</p>
                            <p>的新玩法</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="survey.jsp">

                            <img class="fl" src="${imageUrl}/product-center/investigate.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href="survey.jsp">
                                <h3>微调研</h3>
                            </a>

                            <p> 了解粉丝爱好</p>
                            <p> 实现营销精准化</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="pay.jsp">

                            <img class="fl" src="${imageUrl}/product-center/pay.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href="pay.jsp">
                                <h3>多粉支付</h3>
                            </a>

                            <p>让支付变得</p>
                            <p>更加简单快速</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="shark.jsp">

                            <img class="fl" src="${imageUrl}/product-center/shark.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href="shark.jsp">
                                <h3>摇一摇周边</h3>
                            </a>

                            <p>用户摇起来</p>
                            <p>粉丝涨起来</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    一站到底是以电视节目《一站到底》为灵感所开发的答题游戏。粉丝在规定的时间内进行答题，最后按照答对题数积分进行排名。商家可以按需求设置题库内容，如智力题、生活常识题，也可以是商家企业发展常识题。有利于商家与粉丝之间的互动，奖品设置吸引粉丝的关注。
                </p>
                
                
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持设置游戏名称、规则 、兑奖说明、上传背景音乐，有助于粉丝轻松参与游戏。
                            </li>
                            <li>
                                支持上传商家公众号二维码及名称，有助于粉丝关注，提升商家人气。
                            </li>
                            <li>
                                支持设置游戏开始、结束时间、游戏次数、每题限定的答题时间，为商家提供保障。
                            </li>
                            <li>
                                支持设置兑奖操作：兑奖方式、兑奖联系电话、兑奖期限，有助于获奖粉丝与商家进行联系。
                            </li>
                            <li>
                                支持商家设置每题答对的奖励积分数值，商家可按需求设置，有助于统计游戏最后的得分情况。
                            </li>
                            <li>
                                支持设置奖品为积分、粉币、流量、实体物品，多种类型供商家自由选择。
                            </li>
                            <li>
                                支持领取奖品时识别玩家是否关注商家公众号和是否为商家会员，系统将引导玩家关注商家公众号和开通会员功能。
                            </li>
                            <li>
                                支持商家设置题库内容，也可以通过Excel导入到题库当中，有助于商家管理题库信息。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->
                
                
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/onewin_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
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
                    <img src="${imageUrl}/product-center/onewin_code.png" alt="">
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

