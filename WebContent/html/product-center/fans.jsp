<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="粉丝管理包括粉丝性别分析，地域统计，粉丝的行为分析，粉丝行为等详细列表，企业可以在后台对粉丝进行标签备注，同时可以根据粉丝的活跃度和关注时间进行分组管理。
"/>
    <title>多粉粉丝管理_微信公众号粉丝管理功能</title>
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
                        <img src="${imageUrl}/product-center/fans-icon.png" alt="">
                        <div class="aside-desc">
                            <h3>粉丝管理</h3>
                            <p>了解粉丝属性
                                多维度分析粉丝信息
                            </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型：管理</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：基础版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="message.jsp">

                            <img class="fl" src="${imageUrl}/product-center/message-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='message.jsp'>

                                <h3>微留言 </h3>
                            </a>

                            <p>良性互动
                            </p>
                            <p>
                                传播企业口碑</p>
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

                            <p> 快乐大转盘</p>
                            <p> 邀你一起玩</p>


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
                            <p> 奖品带回家</p>
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
                    粉丝管理可查看粉丝头像、昵称、性别、所在城市和关注时间。同时还可以根据粉丝的活跃度、关注时间、性别等进行分组管理，或者在后台对粉丝进行标签备注，让企业更精准的为粉丝客户服务，提高运营效率。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持实时同步粉丝信息，随时查看粉丝数据。
                            </li>
                            <li>
                                支持实时统计粉丝回复。
                            </li>
                            <li>
                                支持黑名单功能。
                            </li>
                            <li>
                                支持粉丝标签备注。
                            </li>
                            <li>
                                支持粉丝昵称搜索和备注搜索。
                            </li>
                            <li>
                                支持查看粉丝头像、昵称、性别、所在城市和关注时间等。
                            </li>
                            <li>
                                支持粉丝高级筛选功能，可根据粉丝的性别、地区、关注时间等进行自定义分组管理。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/fans-poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/fans2.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <img class=" " src="${imageUrl}/product-center/fans3.png" alt="">
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

