<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.gt.entity.user.BusUser"%>   --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>" />
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<!--[if IE 8]>
<meta http-equiv="X-UA-Compatible" content="IE=8">
<![endif]-->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="keywords" content="多粉，多粉平台，微信，营销，o20，吸粉，留粉" />
<meta name="description" content="多粉营销，开启你的多粉时代。移动互联网时代教你如何玩转o2o,是你不能错过的营销平台。" />
<title>多粉平台—连接粉丝，连接世界</title>
<link rel="stylesheet" type="text/css" href="css/common.css?<%= System.currentTimeMillis()%>"/>
<link rel="stylesheet" type="text/css" href="css/office/about.css?<%= System.currentTimeMillis()%>"/>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
<title></title>
</head>
<body>
		 <!--头部开始-->
			<div id="header">
				<div class="container clearfix">
				   	<div class="headerLeft fl">
				   		<img src="images/logoIndex.png" alt="logoImg" />
				   	</div>
				  	<div class="headerCent fr clearfix">
				   		<ul class="clearfix">
				   			<li class="items"><a href="jsp/office/index.jsp" class="white" >首页</a></li>
				   			<li class="items"><a href="jsp/office/product.jsp" class="white">产品服务</a></li>
				   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white headerCurrent">合作召集</a></li>
				   			<li class="items"><a href="jsp/office/example.jsp" class="white">案例中心</a></li>
				   			<li class="items"><a href="jsp/office/help.jsp" class="white">帮助中心</a></li>
					   		<li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
					   	    <li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
				   		</ul>
				 	</div>
			 	</div>
		   	</div>
		<!--头部结束-->
		<div id="abContent">
			<div class="aboutOne"></div>
			<div class="aboutBar"></div>
			<!--关于多粉-->
			<div class="aboutTwo">
				<div class="aboutWarp">
					<div class="aboutText">
						<h1>关于多粉</h1>
						<p class="aboutText1">多粉作为一家新兴的移动互联服务提供商，主要为企业提供 微信营销 数据分析 社会化营销及移动客户端的客户管理系统.自成立以来公司以客户的需求为出发点为企业提供微信行业的深度解决方案，平台的建设 系统的维护 运营的体系 策划方案 为品牌客户提供一站式的移动营销及行业应用的解决方案。</p>
						<p class="aboutText2">多粉让商家通过微信平台更好的去管理、互动、服务为一体的微信体验模式！欢迎各大商家及客户前来公司洽谈，我们的项目目前非常有优势，一定是结合企业本身业务和场景为企业在微信端提供更好的移动产品解决方案</p>
				   </div>
				</div>
			</div>
			<!--合作详情-->
			<div class="aboutThr">
				<div class="aboutWarp">
					<div class="aboutText">
						<h1>合伙人召集</h1>
						<p class="aboutText1">首先，感谢您对多粉平台的信任和支持，信任是合作的基础，我们找的不是代理商，我们找的是合作伙伴！</p>
						<p class="aboutText2">多粉平台是国内首家的多平台第三方营销平台，构建多元化的O2O营销体系。</p>
						<p class="aboutText2">时代需要大格局，大格局需要大智慧！志同道合是伙伴，求同存异也是伙伴！我们在全国寻找互信、包容、合作、共赢的合作伙伴。“共赢”是我们的目标，无论您在何方，不管您有多远，无论是个人还是团体，我们都欢迎您成为我们的一员。</p>
				   </div>
				</div>
			</div>
			 <!--定制开发-->
			<!-- <div class="aboutFou">
				<div class="aboutWarp">
					<div class="aboutText">
						<h1>已授权区域查询</h1>
						<div>
							<input class="search" type="text" placeholder="请输入公司名称"/>
						</div>
						<div>
							<a href="javascript:void(0);">搜索</a>
						</div>
						<input class="apply" type="button" value="免费申请加入 >"/>
				   </div>
				</div>
			</div> -->
			<!--伙伴查询-->
			<div class="aboutFive">
			<h2>我们支持您的成长</h2>
				<!-- <div class="aboutWarp">
					<input type="button" value="了解详情 >" />
				</div> -->
			</div>
			<!--联系我们-->
			<div class="aboutSix">
				<div class="container" style="position: absolute;width: 100%;">
					<h1 id="contact-map">联系方式</h1>
				</div>
				<!--[if lt IE 9]>
				<iframe name="mapIframe" src="jsp/office/ie8map.html" width="100%" height="800" border="0" frameborder="no"></iframe>
				<![endif]-->
				<iframe id="mapIframe" src="jsp/office/map.html" width="100%" height="800" border="0" frameborder="no" style="    position: relative;z-index:1"></iframe>
			</div>
		</div>
		<!--底部开始-->
			<div class="footer">
				<div class="foot-con1">
			    	<a href="jsp/office/index.jsp">首页</a>
			    	<span>|</span>
			    	<a href="jsp/office/product.jsp">产品服务</a>
			    	<span>|</span>
				  	<a href="jsp/office/cooperation.jsp" style="color:#2888e2">合作召集</a>
				  	<span>|</span>
				  	<a href="jsp/office/example.jsp">案例中心</a>
				  	<span>|</span>
				  	<a href="jsp/office/aboutCompany.jsp">关于我们</a>
				  	<span>|</span>
				  	<a href="jsp/office/help.jsp">帮助中心</a>
			  </div>
			  <p class="footText">
			    <label>服务热线：</label>
			    <label>400</label>
			    <label>889</label>
			    <label>4522</label>
			   </p>
			  <div class="foot-con2">
				  	<span >Copyright © 2015 duofriend. All Rights Reserved. </span>
				  	<span >粤ICP备15016183号-3</span>
			  </div> 
			  <p class="foot-con3">
			   广东谷通科技有限公司
			  </p>
			  </div>
		<!--底部结束-->
		<!--右侧qq联系我们-->
			<div class="right-float clearfix ">
				 <ul>
				    <li class="item item1" id="gotop"><a href="javascript:void(0)"></a></li>
				    <li class="item item2" id="code"><a href="javascript:void(0)"></a></li>
				    <li class="item item3">
				    	<a href="tencent://message/?Menu=yes&amp;uin=938188163&amp;Service=58&amp;SigT=A7F6FEA02730C98848AA17E7EA0C4541D1AB6B0588A8659BD6EA5ECD767F2949B15FBDFBF7A981BA743090690B5F5F0C3D49F30760535DA6956B8B2F3251EE2A660F99EAF040D30AC05EBFE2B53FD07C41AB564653CFA16E1B10051BDBF4450AF7353F25DEFFEF1B0696B7DA942E97408762B9381F06B602&amp;SigU=30E5D5233A443AB250CC3E8399B705436C072BEB88755A87351A9D17A0D3FE71C9345B22CA2136C780C54D119D3CB86ACBA3C6D2D4C77239B56A1B71B64D87FAE5DDC6E4274947BE" target="tencent"></a>
				    	<iframe name="tencent" style="display:none"></iframe>
				    </li>
				    <li class="item item4" id="code2"><a href="javascript:void(0)"></a></li>
				    <li class="code"></li>
				    <li class="code2">
				       <p class="code2Text">服务热线</p>
	                   <p class="code2Text">400 889 4522</p>
				    </li>
				 </ul>
			</div>
        <!--右侧qq联系我们 End-->
		<script type="text/javascript">  
//		ie10以下不支持placeholder方法
		  if( !('placeholder' in document.createElement('input')) ){   
		
		    $('input[placeholder],textarea[placeholder]').each(function(){    
		      var that = $(this),    
		      text= that.attr('placeholder');    
		      if(that.val()===""){    
		        that.val(text).addClass('placeholder');    
		      }    
		      that.focus(function(){    
		        if(that.val()===text){    
		          that.val("").removeClass('placeholder');    
		        }    
		      })    
		      .blur(function(){    
		        if(that.val()===""){    
		          that.val(text).addClass('placeholder');    
		        }
		      })    
		      .closest('form').submit(function(){    
		        if(that.val() === text){    
		          that.val('');    
		        }    
		      });    
		    });    
		  }   
        </script>
<script>
FuckInternetExplorer();
function FuckInternetExplorer() {
	var browser = navigator.appName;
	var b_version = navigator.appVersion;
	var version = b_version.split(";");
	if (version.length > 1) {
		var trim_Version = parseInt(version[1].replace(/[ ]/g, "").replace(/MSIE/g, ""));
		if (trim_Version < 9) {
			$("#mapIframe").remove();
			return false;
		}
	}
	return true;
}

</script>
</body>
</html>