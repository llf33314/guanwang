<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>联系我们</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
    <%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $("#banner").slideLx({"height": 434});
        })
    </script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <div class="aboutus_container">
        <!--中间内容-->

        <div>
            <ul class="aboutus_title">
                <a href="aboutUs.jsp"><li >多粉简介</li></a>
                <a href="honor.jsp"><li>所获荣誉</li></a>
                <a href=""><li style="background:#c8e6ca ">企业文化</li></a>
                <a href="invide.jsp"><li>加入我们</li></a>
                <a href="company.jsp"><li>公司团队</li></a>
                <a href="contract.jsp"><li >联系我们</li></a>
            </ul>
        </div>


        <!--中间内容-->
    </div>


    <!--<div style="width: 100%;background: #ebebeb;height:auto;">-->
        <div class="company-content">
            <!--中间内容-->
            <div class="company-title">
                <h1>发展历程</h1>
                <h3>Development path</h3>
            </div>

            <div class="development-content clear">

                <!--内容-->
                <div class="fl development-left-ctn">

                    <%--<img src="${imageUrl}/aboutus/video.png" alt="">--%>
    <!--视频主题曲-->
    <iframe frameborder="0" width="480" height="400" src="http://v.qq.com/iframe/player.html?vid=c0190z7krtb&tiny=0&auto=0" allowfullscreen></iframe>
    <!--视频主题曲-->
                    <div class="clear describe-deve">
                        <img src="${imageUrl}/aboutus/doulogo.png" alt="" class="fl describe-img">
                        <span class="desc-devo1 fr">
                           多粉的logo是一只抽象的可爱的宠物猫，人见人爱，比喻多粉平台系统受到广大商家的喜爱！
                            小粉团形状象征移动互联网时代以小博大的气魄与决心；即将绽放的花蕾意为:微商营销我们即将出发，
                            我们即将绽放整个行业，影响世界。
                        </span>
                    </div>


                    <div class="development-list">
                        <ul class="sub-items">
                            <li class="clear itme-deve">
                                <p class="triangle-right fl"></p>
                                <div class="fr desc-right ">
                                    <h2 class="desc-devo ">我们的展望</h2>
                                    <p class="desc-item-desc ">
                                       做新时期的移动互联网创业
                                    </p>
                                </div>
                            </li>
                            <li class="clear itme-deve">
                                <p class="triangle-right fl"></p>
                                <div class="fr desc-right ">
                                    <h2 class="desc-devo ">我们的理念</h2>
                                    <p class="desc-item-desc ">
                                        完美，创新，极致
                                    </p>
                                </div>
                            </li>
                            <li class="clear itme-deve">
                                <p class="triangle-right fl"></p>
                                <div class="fr desc-right ">
                                    <h2 class="desc-devo ">我们的使命</h2>
                                    <p class="desc-item-desc ">
                                  连接粉丝 连接世界（Connect friends  Connecting the world）
                                    </p>
                                </div>
                            </li>
                            <li class="clear itme-deve">
                                <p class="triangle-right fl"></p>
                                <div class="fr desc-right ">
                                    <h2 class="desc-devo ">企业文化</h2>
                                    <p class="desc-item-desc ">
                                        分享发展，让一切成果与我们的员工，用户，商业伙伴，投资者分享。
                                        多粉不仅是商家 的聚粉平台也是粉丝的分享平台，更是员工的事业平台。现有创始人及股东承诺为吸引更多优秀的人才，商业伙伴，
                                        机构投资者将根据公司的发展不断稀释现有股权来回报员工，用户，商业伙伴与投资者，一起参与这场移动互联网的分享盛宴。
                                    </p>
                                </div>
                            </li>
                            <li class="clear itme-deve">
                                <p class="triangle-right fl"></p>
                                <div class="fr desc-right ">
                                    <h2 class="desc-devo ">价值观</h2>
                                    <p class="desc-item-desc ">
                                        世界其实很小，以进取博奕的行动感动自己，改变世界。
                                        这个“世界”是我们心中的那个世界，改变一切要先改变自己开始，从心出发，积极进取博奕的精神创造一个又一个的奇迹。
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="fr development-right-ctn">
                    <img src="${imageUrl}/aboutus/timeaxle.png" alt="">
                </div>


            </div>


            <!--中间内容-->
        </div>


    </div>


<!--底部-->
<%@include file="/html/common/footer.jsp" %>
<!--底部-->
</div>
</body>
</html>

