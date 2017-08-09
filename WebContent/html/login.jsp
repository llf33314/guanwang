<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/cmm_css.jsp" %>
<link rel="stylesheet" href="/html/css/logreg.css"/>
<%@include file="/html/common/js.jsp" %>
<title>登录</title>

</head>
<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>

    <!--中间内容-->
    <div class="wrap">

        <div class="register-container login-container">

            <div class="register-content">
                <h1><img src="${imageUrl}/doufengo.png" alt=""></h1>
                <div class="register-list">
                    <h2>登录</h2>
                    <ul class="list-info clear">
                        <li>
                            <div class="optbg">
                                <input type="text" class="useraccout" placeholder="请输入用户名">
                            </div>
                        </li>
                        <li>
                            <div class="optbg">
                                <input type="text" class="password" placeholder="请输入密码">
                            </div>
                        </li>
                    </ul>

                    <p class="agree-register clearfix">
                        <span class="fl"><input type="checkbox" title=""><span>记住密码</span></span>
                        <span class="fr"><a href="#">立即注册</a> | <a href="#">忘记密码</a></span>
                    </p>

                    <button class="now-register">登录</button>
                </div>
            </div>
        </div>

    </div>


    <!--中间内容-->


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>

</body>
</html>
