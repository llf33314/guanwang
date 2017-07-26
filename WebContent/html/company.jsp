<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>公司简介</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
    <%@include file="/html/common/css.jsp" %>
	<%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            $("#banner").slideLx({"height": 434});
        });
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
                <a href="develoment.jsp"><li>企业文化</li></a>
                <a href="invide.jsp"><li>加入我们</li></a>
                <a href=""><li style="background:#c8e6ca ">公司团队</li></a>
                <a href="contract.jsp"><li>联系我们</li></a>
            </ul>
        </div>


        <!--中间内容-->
    </div>

    <img class="img-poster" src="${imageUrl}/aboutus/company-poster.png" alt="">
    <div style="width: 100%;background: #ebebeb;height:auto;">
        <div class="company-content">
            <!--中间内容-->
            <div class="company-title">
                <h1>办公环境</h1>
                <h3>Office environment</h3>
            </div>

            <div class="company-content">
                <ul>
                    <li>
                        <img src="${imageUrl}/company/company1.png" alt="">
                        <img src="${imageUrl}/company/company2.png" alt="">
                    </li>
                    <li>
                        <img src="${imageUrl}/company/company3.png" alt="">
                        <img src="${imageUrl}/company/company4.png" alt="">
                        <img src="${imageUrl}/company/company5.png" alt="">
                    </li>
                    <li class="pb">
                        <div class="company-title">
                            <h1>团队活动</h1>
                        </div>
                        <img src="${imageUrl}/company/company6.png" alt="">
                        <img src="${imageUrl}/company/company7.png" alt="">
                        <img src="${imageUrl}/company/company8.png" alt="">
                    </li>
                </ul>
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

