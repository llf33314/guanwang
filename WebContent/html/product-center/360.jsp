<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉360全景支持高清观看，粉丝可任意放大缩小，在不同的景区、房间或项目中自由切换，真实感强，无视角死区。360全景运用专业的拍摄器材和专业的摄影技术，可以把现场给人的整体印象和每个环境的细节全面的记录下来。"/>
    <title>多粉360全景_微信公众号360全景功能</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/360-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>360全景</h3>
                            <p>给用户身临其境
                            </p>
                            <p>
                                视觉体验</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：加粉</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
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
                现在大多数的人买东西都不喜欢去看繁杂的文字描述，而更喜欢看实物图。但是光靠相册的展示还是远远不够的，用户更喜欢看实物的立体效果图，360度全景，借助手机移动终端全方位展示，给人以身临其境的感觉！让您足不出户，就可以通过移动终端，滑动屏幕观看全方位观看。
                </p>
                
                
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持高清观看：粉丝可任意放大缩小，在不同的景区、房间或项目中自由切换，真实感强，无视角死区。
                            </li>
                            <li>
                                技术优势：运用专业的拍摄器材和专业的摄影技术，可以把现场给人的整体印象和每个环境的细节全面的记录下来。

                            </li>
                            <li>
                                支持100M独享观看，快速打开；大众化手机均能作为播放终端。

                            </li>
                            <li>
                                支持多种行业运用：广泛应用于房产、景区、酒店、家具馆、厂区等领域。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->
                
                
                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/360-poster.png" alt="">
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
                    <img src="${imageUrl}/product-center/360-code.png" alt="">
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

