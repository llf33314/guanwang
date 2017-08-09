<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/cmm_css.jsp" %>
<link rel="stylesheet" href="/html/css/logreg.css"/>
<%@include file="/html/common/js.jsp" %>
<title>注册</title>

</head>
<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>

    <!--中间内容-->
    <div class="wrap">

        <div class="register-container">

            <div class="register-content">
                <h1><img src="${imageUrl}/doufengo.png" alt=""></h1>
                <div class="register-list">
                    <h2>注册</h2>
                    <ul class="list-info clear">
                        <li>
                            <lable>
                                <span>用户名：</span>
                                <input type="text" placeholder="请输入用户名">
                            </lable>
                        </li>
                        <li>
                            <lable>
                                <span>设置密码：</span>
                                <input type="text" placeholder="请输入用户名">
                            </lable>
                        </li>
                        <li>
                            <lable>
                                <span>确认密码：</span>
                                <input type="text" placeholder="请输入用户名">
                            </lable>
                        </li>
                        <li>
                            <lable>
                                <span>手机号：</span>
                                <input type="text" placeholder="请输入用户名">
                            </lable>

                        </li>
                        <li>
                            <lable>
                                <span>验证码：</span>
                                <input class="auth-code" type="text" placeholder="请输入用户名">
                                <span class="get-auth">获取验证码</span>
                            </lable>
                        </li>
                    </ul>

                    <p class="agree-register">
                        <input type="checkbox"><span>同意注册本网站</span>
                    </p>

                    <button class="now-register">立刻注册</button>
                </div>
            </div>
        </div>

    </div>


    <!--中间内容-->


    <%@include file="/html/common/footer.jsp" %>
</div>

</body>
</html>
