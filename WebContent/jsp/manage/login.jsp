<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/manage/common/taglibs.jsp"%>
<%@ include file="/jsp/manage/common/templatelibs.jsp"%>
<%@ include file="/jsp/manage/common/utils.jsp"%>

<!DOCTYPE html>
<html>
  <head>
    <title>多粉官网后台管理系统</title>
  </head>
  <body id="login">
    <div class="container">
	
      <div class="form-signin" style="margin-top: 10%;">
        <h2 class="form-signin-heading">多粉官网管理系统</h2>
	    <div class="alert alert-danger hidden" id="errorMsg">登录失败</div>
        <input type="text" id="userLogin" class="input-block-level" placeholder="请输入登录的账号">
        <input type="password" id="userPassword" class="input-block-level" placeholder="请输入登录的密码">
        <button class="btn btn-large btn-primary" style="margin-left: 70%;" type="submit" onclick="login();">登录</button>
      </div>

    </div> <!-- /container -->
  </body>
  <script type="text/javascript">
  	$('input').change(function() {
  		$("#errorMsg").addClass("hidden");
  	});
  	
  	function login(){
  		$("#errorMsg").addClass("hidden");
  		var userLogin = $("#userLogin").val();
  		var userPassword = $("#userPassword").val();
  		if(userLogin == null || userLogin == ""){
  			$("#errorMsg").html("账户不能为空");
			$("#errorMsg").removeClass("hidden");
			return;
  		}
  		if(userPassword == null || userPassword == ""){
  			$("#errorMsg").html("密码不能为空");
			$("#errorMsg").removeClass("hidden");
			return;
  		}
  		$.ajax({
  			type: 'POST',
  			url: path + "user/login.do",
  			data: {userLogin : userLogin, userPassword : userPassword},
  			dataType: 'json',
  			async : false, 
  			error: function(){
  				alert("获取素材库信息错误，请检查网络，并重试。若问题还未解决，请联系技术人员！");
  			},
  			success: function(data){
  				if(data.status <= 0){
  					// 失败
  					$("#errorMsg").html(data.msg);
  					$("#errorMsg").removeClass("hidden");
  				}else{
  					window.location = path + "jsp/manage/mainView.jsp";
  				}
  			}
  		});
  	};
  	
  	$(document).keydown(function(event){
  		if(event.keyCode==13){   
  			login();
  		} 
	});
  </script>
</html>