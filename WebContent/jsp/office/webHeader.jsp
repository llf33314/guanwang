<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<!--头部开始-->
		<div id="header" class="clearfix">
				<div class="container">				
				   	<div class="headerLeft fl">
				   		<img src="images/logoIndex.png" alt="logoImg" />
				   	</div>
				  	<div class="headerCent clearfix">
				   		<ul class="clearfix">
				   			<li class="headerItems"><a href="jsp/office/index.jsp" class="itemNav">首页</a></li>
				   			<li class="headerItems"><a href="jsp/office/product.jsp" class="itemNav">产品服务</a></li>
				   			<li class="headerItems"><a href="jsp/office/cooperation.jsp" class="itemNav">合作召集</a></li>
				   			<li class="headerItems"><a href="jsp/office/example.jsp" class="itemNav">案例中心</a></li>
				   			<li class="headerItems"><a href="jsp/office/help.jsp" class="itemNav">帮助中心</a></li>
                            <li class="headerItems"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   		<li class="headerItems"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
				   		</ul>
				 	</div>
			 	</div>
		   	</div>
		<div id="upgrade">
			<a href="http://browsehappy.com/" target="_blank">浏览器版本提醒：你的浏览器太古董了！将无法体验完整产品功能，还不速速换一个，点击下载新版浏览器！</a>
			<i></i>
		</div>
		<div class="positon" style="height: 60px;width: 100%;"></div>
		<!--头部结束-->
		
		 <script type="text/javascript">
			$(function(){
				$('.headerItems .itemNav').click(function(){	
					$('.headerItems .itemNav').removeClass("headerCurrent");
	                $(this).removeClass("headerCurrent").end().siblings().addClass("headerCurrent");
				});
			});
	   </script> 
</body>
</html>