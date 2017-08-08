    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="utf-8">
        <title>代理商登录</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
           <style>
        .mt {
    margin-top: 35px !important;
}

.pt {
    margin-top: 20px;
}
.verification {
    width: 353px;
    margin: 20px auto !important;
    text-align: left;
    font-size: 18px;
}

.register-button {
    line-height: 50px;
    font-size: 18px;
    color: white;
    width: 278px;
    cursor: pointer;
    margin: -10px auto !important;
    text-align: center;
    height: 50px;
    border-radius: 5px;
    background: #326899;
}
        </style>
        <%@include file="/html/common/css.jsp" %>
        <%@include file="/html/common/js.jsp" %>
        <script type="text/javascript">
        $(function () {
        $("#banner").slideLx({"height": 434});
        	$("#login").click(function(){
        	   $("#login_f").submit();
        	});
        	console.log('${msg}');
        });
     	// 键盘事件
    	$(document).keydown(function(event){
      		if(event.keyCode == 13){
      			$("#login_f").submit();
      		} 
    	});
        </script>
        <style type="text/css">
        	.msg{color: red;}
        </style>
        </head>

        <body>
        <div class="wrap index">
        <%@include file="/html/common/clearfix.jsp" %>

        <form action="/agent/html/checkAgentLogin" id="login_f" method="post">
        <div class="video-containter">
        <!--中间内容-->
        <div class="content-register">
        <div class="account-register mt">
        <label>
        帐 号：<input type="text" id="name" name="name" placeholder="请输入用户帐号" class="checkFn">
        </label>
        </div>
        <div class="password-register pt">
        <label>
        密 码：<input type="password" name="pwd" placeholder="请输入用户密码">
        </label>
        </div>
        <div class="verification pt clear">
        <label>
        验证码：<input type="text" name="val" placeholder="请输入验证码">
        </label>
        <div class="fr" style="float: none;">
        <img id="val_i" src="/login/html/buildCode" alt="" onclick="this.src='/login/html/buildCode?d='+Math.random();">
        </div>
        <p class="moho" onclick="$('#val_i').attr('src', '/login/html/buildCode?d='+Math.random());">看不清楚，换一张！</p>
        
        </div>
        
        <div class="verification pt clear">
        <p id="sendMsg" style="font-size: 5px;display: none;">发送短信到：****</p><!-- display: black; -->
        <label style="margin-left:-35px;">
        短信验证码：<input type="text" name="sms" placeholder="请输入验证码">
        </label>
		<input type="button" class="getCode" value="获取验证码"  
			style="width: 90px;height: 30px;font-size: 1rem;background-color: #2888e2;color: white;">			
        <!-- ${msg} -->
        <p class="msg">${msg}</p>
        </div>
        <div class="register-button " id="login">登录</div>
        </div>
        <!--中间内容-->
        </div>
		</form>


        <%@include file="/html/common/footer.jsp" %>
        </div>
     	<script type="text/javascript">
     	$(function(){
     		var flag = false;
     		var saveFlage = 0;
     		var checkFlag = 0;
     		
    		$(document).on('blur','.checkFn',function(){
     			var name = $("#name").val();
                if (name == '') {
                    return;
                }
                var bean = {
					"name":name,//账号
				}
     			var check = {
		            url: path + '/login/html/checkIsagent',
		            type:'post',
		            dataType:'json',
		            data:$.param(bean),
		            success:function (data) {
		            	console.log(data);
		                if(data.status=='success'){
		                	checkFlag = 1;
		                	$("#sendMsg").html("<font color='red'>接受短信号码：" + data.phone + " 请【获取验证码】进行验证</font>");
			                $("#sendMsg").show();
		                }else{
		                	checkFlag = 0;
		                	$("#sendMsg").html("<font color='red'>该账号还未开通代理商，请查正</font>");
		                	$("#sendMsg").show();
		                    return;
		                }
		            }
		        };
                $.ajax(check);
     		});
     		
     		$(document).on('click','.getCode',function(){
     			var name = $("#name").val();
                if (name == '') {
                    alert('账号不能为空')
                    return;
                }
                if(checkFlag == 0){
     				return;
     			}
     			_this = this;
		     	var bean = {
					"name":name,//账号
				}
				if(flag){
					return;
				}
		     	flag=true;
		     	var btn = _this;
                btn.value="60s后重新获取";
 				var clickTime = new Date().getTime();
                var Timer = setInterval(function(){
                    var nowTime = new Date().getTime();
                    var second  = Math.ceil(60-(nowTime-clickTime)/1000);
                    if(second>0){
                        btn.value = second+"s后重新获取";
                    }else{
                    	saveFlage = 0;
                        clearInterval(Timer);
                        btn.value = "获取验证码";
                        flag=false;
                    }
                },1000);
				var options = {
			            url: path + '/login/html/getTextCode',
			            type:'post',
			            dataType:'json',
			            data:$.param(bean),
			            success:function (data) {
			                if(data.status=='success'){
			                	flag = true;
			                }else{
			                	saveFlage = 0;
			                	alert('账号输入有误')
			                    return;
			                }
			                if(flag == true){
				                flag=false;
				                $("#sendMsg").html("<font color='red'>发送短信到：" + data.phone + " 请注意查收</font>");
				                $("#sendMsg").show();
					     	}else{
				                return;
				            }
			            }
			        };
		     	if(saveFlage == 0){
					saveFlage = 1;
					$.ajax(options);
				}
	     	})
     	});
     	</script>
        </body>
        </html>

