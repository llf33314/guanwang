<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="多粉高级编辑器是一款专业强大的微信公众平台在线编辑美化微信文章排版工具，通过微信编辑器让您的内容显示更美观,更易阅读。"/>
    <title>多粉高级编辑器_微信公众号高级编辑器功能</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
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
                        <img src="${imageUrl}/product-center/editor-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>高级编辑器</h3>
                            <p>装饰公众号的必
                                备工具

                            </p>

                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class-long fl">
                        <p class="mb" style="width: 130px;">类型：推广、展示 </p>
                        <p class="mb">行业：高级版及以上</p>
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
    <h3>微官网</h3>
    </a>

                            <p>5分钟打造</p>
                            <p> 个性化微信网站</p>
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
                            <p>效果的宣传工具</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="wifi.jsp">

                            <img class="fl" src="${imageUrl}/product-center/wifi-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='wifi.jsp'>
    <h3>WIFI加粉</h3>
    </a>

                            <p> 扫码连WIFI
                               </p>
                            <p>  粉丝来的快</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="help.jsp">

                            <img class="fl" src="${imageUrl}/product-center/help.png" alt="">
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
                    多粉高级编辑器是一款专业强大的微信公众平台在线编辑美化微信文章排版工具，通过微信编辑器让您的内容显示更美观,更易阅读，微信编辑器提供微信用户日常微信图文 、微信文章、微信内容排版、文本编辑、素材编辑等功能。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">

                            <li>清晰的分类，不断更新：标题、图文、卡片、零件，各种样式应有尽有；
                            </li>
                            <li>支持提供丰富的图文样式：界面简洁、样式多款、自由定义颜色，批量更换颜色。
                            </li>
                            <li>支持通过复制、黏贴来增加列表项：点击样式，在左下角操作项中点击复制，然后在列表最后或者中间插入的行里黏贴即在指定位置增加列表项。
                            </li>
                            <li>支持本地图片上传：提供丰富的图片样式选择，并可添加合适的文章内容。
                            </li>
                            <li>支持查看最近使用：直接点击查看常用的素材，方便使用。
                            </li>
                            <li>支持实时预览、一键复制：将编辑好的图文一键同步到公众号后台，快速方便。
                            </li>


                        </ol>
                    </div>
                </div>
                <!--加-->
                <div class="show-vote">
                    <ul class="show-vote-img ">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/editor-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/card2.png" alt="">-->
                        </li>
                        <li class="show-img passive">

                        </li>
                    </ul>
                    <%--<div class="guide-vote clear ">--%>
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

