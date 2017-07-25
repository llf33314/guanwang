<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description"
          content="微支付统计方便商家查询交易记录所提供的一个数据统计功能，可查看各门店销售额或销售量的对比。可查看各门店某种商品的销售额或销售量的对比。"/>
    <title>多粉微支付统计_微信公众号微支付统计功能</title>
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
                        <img src="${imageUrl}/product-center/weiPay-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>微支付统计</h3>
                            <p>及时了解销售情况</p>
                            <p> 精准营销</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class fl">
                        <p class="mb">类型：管理</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐： </p>
                    </div>
                </div>
                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="message.jsp">
                            <img class="fl" src="${imageUrl}/product-center/wexin-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='message.jsp'>
                                <h3>微留言</h3>
                            </a>
                            <p>良性互动
                            </p>
                            <p>传播企业口碑</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="photo.jsp">

                            <img class="fl" src="${imageUrl}/product-center/photo.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='photo.jsp'>
                                <h3>微相册</h3>
                            </a>
                            <p>各行各业</p>
                            <p> 照片展示轻松搞定</p>
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
                            <p> 具有极佳视听</p>
                            <p> 效果的宣传工具</p>
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
                            <p>给用户身临其境</p>
                            <p>视觉体验</p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="waiter.jsp">

                            <img class="fl" src="${imageUrl}/product-center/server.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='waiter.jsp'>
                                <h3>微客服</h3>
                            </a>
                            <p>沟通中
                            </p>
                            <p> 创造无限商机</p>
                        </div>


                    </li>
                </ul>
            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    微支付统计方便商家查询交易记录所提供的一个数据统计功能。
                </p>

                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                可查看各门店销售额或销售量的对比。
                            </li>
                            <li>
                                可查看各门店某种商品的销售额或销售量的对比。
                            </li>
                            <li>
                                支持按年月查看销售数据。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " style="height: 329px;" src="${imageUrl}/product-center/weipay-poster.png" alt="">
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

