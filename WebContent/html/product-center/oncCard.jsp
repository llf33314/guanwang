<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="不仅可以制作正式商务名片，还可以自由DIY属于自己的个性名片。支持即时更改名片内容，操作简单、功能实用、展示方便。
"/>
    <title>多粉个人名片_微信公众号名片功能</title>
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
                        <img src="${imageUrl}/product-center/oncCard_icon.png" alt="">
                        <div class="aside-desc">
                            <h3>个人名片</h3>
                            <p>独创个性名片彰显个人魅力</p>
                        </div>
                    </a>
                </div>
                <div class="user-explain clear">
    <a href='../instructions.jsp'><button class="fl">使用手册</button></a>
                    <div class="vote-class fl">
                        <p class="mb">类型：推广、展示</p>
                        <p class="mb">行业：所有</p>
                        <p>套餐：高级版及以上 </p>
                    </div>
                </div>

                <h1 class="vote-recommend">相关推荐</h1>
                <ul class="vote-ul">
                    <li class="clear">
                        <a href="guaguale.jsp">

                            <img class="fl" src="${imageUrl}/product-center/guaguale.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='guaguale.jsp'>
    <h3>刮刮乐</h3>
    </a>
                            <p>动手刮一刮</p>
                            <p>奖品带回家</p>
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
                        <a href="vip.jsp">

                            <img class="fl" src="${imageUrl}/product-center/vip.png" alt="">
                        </a>
                        <div class="fl desc-vote">
    <a href='vip.jsp'>
    <h3>微会员</h3>
    </a>
                            <p>了解粉丝选择</p>
                            <p> 营销活动新利器</p>
                        </div>


                    </li>
                </ul>

            </div>

            <!--=============-->
            <div class="fr vote-content-right">
                <h1 class="product-detail">产品详情</h1>
                <p class="product-desc">
                    不仅可以制作正式商务名片，还可以自由DIY属于自己的个性名片。支持即时更改名片内容，操作简单、功能实用、展示方便。个人简介、相片、企业宣传、联系方式等应有尽有。一改传统纸质名片风格，微信专属名片，有趣环保。随时随地即刻分享名片给客户，展示企业信息和个人信息。
                </p>
                <!--加-->
                <div class="product-desc-list">
                    <p class="light-fn">功能亮点：</p>
                    <div class="wrap-ol">
                        <ol class="list-introduce-desc">
                            <li>
                                支持自由DIY的版面：颜色、相片、文字、格式、背景等均可自由创作。
                            </li>
                            <li>
                                支持显示宣传链接：如微官网、产品介绍等。

                            </li>
                            <li>
                                支持添加二维码，长按扫描关注，让加粉更简单。

                            </li>
                            <li>
                                支持拨打电话、添加QQ，让联系更方便。
                            </li>
                            <li>
                                支持动画形式，让名片更加生动有趣。
                            </li>
                            <li>
                                支持展示个人业务服务案例。
                            </li>
                            <li>
                                支持名片管理：可查看关注数、浏览数，便于管理与查看效果反馈。
                            </li>
                            <li>
                                支持一键添加保存到手机通讯录。
                            </li>
                            <li>
                                支持企业公众号二维码关注统计，企业可统计员工的名片获取的公众号粉丝数量。
                            </li>

                        </ol>
                    </div>
                </div>
                <!--加-->

                <div class="show-vote">
                    <ul class="show-vote-img">
                        <li class="show-img">
                            <img class=" " src="${imageUrl}/product-center/oneCard_poster.png" alt="">
                        </li>
                        <li class="show-img passive" >
                            <img class=" " src="${imageUrl}/product-center/show-vote2.png" alt="">
                        </li>
                        <li class="show-img passive" >

                        </li>
                    </ul>
                    <!--<div class="guide-vote clear">-->
                        <!--<p class=" fl roll active "></p>-->
                        <!--<p class=" fl roll "></p>-->
                      <!---->
                   <!--</div>-->
                </div>
 <!--加二维码-->
                <div class="code-center longCode">
                    <img src="${imageUrl}/product-center/oneCard_code.png" alt="">
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

