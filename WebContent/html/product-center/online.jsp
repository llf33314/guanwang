<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="在线报名功能适用于培训会，学习班，讲座，夏令营，商业会议等进行报名预约，为活动参与人员提供快捷的报名方式。"/>
    <title>多粉在线报名功能_微信公众号在线报名功能</title>
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
        });
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
                        <img src="${imageUrl}/product-center/online_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>在线报名</h3>
                            <p>为活动参与人员
                            </p>
                            <p> 提供快捷的报名方式
                            </p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
                    <a href='../instructions.jsp'>
                        <button class="fl">使用手册</button>
                    </a>
                    <div class="vote-class-long fl">
                        <p class="mb">类型:互动 </p>
                        <p class="mb">行业:所有</p>
                        <p>套餐： </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="social.jsp">

                            <img class="fl" src="${imageUrl}/product-center/street-icon.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='social.jsp'>
                                <h3>微社区</h3>
                            </a>

                            <p>“横向互动”

                            </p>
                            <p>
                                的新玩法
                            </p>
                        </div>
                    </li>
                    <li class="clear">
                        <a href="sytem.jsp">

                            <img class="fl" src="${imageUrl}/product-center/sytem.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='sytem.jsp'>
                                <h3>门店系统</h3>
                            </a>


                            <p> 轻松管理
                            </p>

                            <p>
                                众多门店</p>
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
                        <a href="help.jsp">
                            <img class="fl" src="${imageUrl}/product-center/help-small.png" alt="">
                        </a>
                        <div class="fl desc-vote">
                            <a href='help.jsp'>
                                <h3>微助力</h3>
                            </a>

                            <p>
                                邀请好友

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
                    在线报名功能适用于培训会，学习班，讲座，夏令营，商业会议等进行报名预约，为活动参与人员提供快捷的报名方式。多粉致力于为企业，政府，校园等机构提供最专业的报名系统技术解决方案及最优质的服务。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持自定义表单功能，通过自定义字段等方式设计符合主办方需求的报名表单。
                            </li>
                            <li>
                                支持微信支付等多种在线收款方式，资金直接进入主办方微信钱包。
                            </li>
                            <li>
                                支持邮件和短信通知，用户报名成功后，系统会通过邮件和短信方式通知主办方，无须人为查看。
                            </li>
                            <li>
                                支持报名信息导出，如报名人数、时间、付款状态等信息。
                            </li>
                            <li>
                                系统设置严格的安全保障体系，在数据传输、数据存储各环节层层防护，对用户姓名、电话号码等个人信息进行加密处理。
                            </li>
                            <li>
                                支持报名时间倒计时功能。
                            </li>
                            <li>
                                支持多活动功能，一个报名中提供多种活动供粉丝进行选择。
                            </li>
                            <li>
                                粉丝可查看报名状态，了解是否通过本次报名申请。
                            </li>
                            <li>
                                支持粉丝报名成功后，收到商家公众号消息模板通知。
                            </li>
                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/online_poster.png" alt="">
                        </li>
                        <li class="show-img passive">
                            <!--<img class=" " src="${imageUrl}/product-center/guagua.png" alt="">-->
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
                <img src="${imageUrl}/product-center/online_code.png" alt="">
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

