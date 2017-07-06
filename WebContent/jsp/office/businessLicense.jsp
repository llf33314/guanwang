<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>多粉—连接粉丝，连接世界，广东谷通科技有限公司</title>
<meta http-equiv="X-UA-Compatible"content="IE=edge,chrome=1" />
<!--[if IE 8]>
<meta http-equiv="X-UA-Compatible" content="IE=8">
<![endif]-->
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<meta name="keywords" content="多粉、微营销、微信营销、微信推广、微信代运营、微信定制开发、微信营销软件、微信推广软件、微信推广平台" />
<meta name="description" content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微会员、微商城、微活动、微预约、微分销，助力企业全面开启微营销。" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<link rel="stylesheet" type="text/css" href="css/common.css?<%= System.currentTimeMillis()%>"/>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
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
				   			<li class="items"><a href="jsp/office/index.jsp" class="white">首页</a></li>
				   			<li class="items"><a href="jsp/office/product.jsp" class="white">产品服务</a></li>
				   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white">合作召集</a></li>
				   			<li class="items"><a href="jsp/office/example.jsp" class="white">案例中心</a></li>
				   			<li class="items"><a href="jsp/office/help.jsp" class="white">帮助中心</a></li>
                            <li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   		<li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
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
		<!--中间开始-->
		<div id="businessLicense" class="" style="width: 600px; margin: 0 auto;">
			<img src="images/businessLicense.jpg" alt="谷通经营许可证" title="谷通经营许可证" style="width: 100%"/>
		</div>
		<!--中间结束-->
		
		<!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
</body>
</html>