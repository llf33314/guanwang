<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--[if IE 8]>
<meta http-equiv="X-UA-Compatible" content="IE=8">
<![endif]--> 
<meta name="renderer" content="webkit" />
<meta name="keywords" content="多粉、微营销、微信营销、微信推广、微信代运营、微信定制开发、微信营销软件、微信推广软件、微信推广平台" />
<meta name="description" content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微会员、微商城、微活动、微预约、微分销，助力企业全面开启微营销。" />
<link rel="stylesheet" type="text/css" href="css/common.css?<%= System.currentTimeMillis()%>"/>
<link rel="stylesheet" type="text/css" href="css/office/wisdomWX.css?<%= System.currentTimeMillis()%>"/>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
<title>多粉—连接粉丝，连接世界，广东谷通科技有限公司</title>
</head>
<body>
   
    <!--顶部菜单开始-->
	<div id="header">
		<div class="container clearfix">
		   	<div class="headerLeft fl">
		   		<img src="images/logoIndex.png" alt="logoImg" />
		   	</div>
		  	<div class="headerCent fr clearfix">
		   		<ul class="clearfix">
		   			<li class="items"><a href="jsp/office/index.jsp" class="white" >首页</a></li>
		   			<li class="items"><a href="jsp/office/product.jsp" class="white headerCurrent">产品服务</a></li>
		   			<li class="items"><a href="jsp/office/cooperation.jsp" class="white">合作召集</a></li>
		   			<li class="items"><a href="jsp/office/example.jsp" class="white">案例中心</a></li>
		   			<li class="items"><a href="jsp/office/help.jsp" class="white">帮助中心</a></li>
			   		<li class="items"><input type="button" value="登录" class="logBtn" onclick="window.location.href='http://duofriend.com/user/tologin.do'"/></li>
			   	    <li class="items"><input type="button" value="注册" class="regBtn" onclick="window.location.href='http://duofriend.com/user/toregister.do'" /></li>
		   		</ul>
		 	</div>
	 	</div>
   	</div>
    <!--顶部菜单结束-->
    <!-- 中间开始 -->
    <div class="wxCon">
      <!-- 头部 --> 
        <div class="wxOne">
		    <img src="images/wisdomWX/wxheadText.png" class="headText" />
		</div>
		<!-- 中间导航条 -->
		<div class="wxBar">
			<div class="container">
				<ul class="clearfix">
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common1'">通用版</a></li>
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common2'">行业版</a></li>
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common3'">定制开发</a></li>
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common4'">代运营</a></li>
					<li class="twoItem fl"><a href="jsp/office/packages.jsp">多粉套餐</a></li>
					<li class="twoItem fl current"><a href="jsp/office/wisdomWX.jsp">智慧微信</a></li>
				</ul>
			</div>
		</div>
		<div class="wxBar fixBar">
			<div class="container">
				<ul class="clearfix">
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common1'">通用版</a></li>
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common2'">行业版</a></li>
					<li class="twoItem fl"><a href="javascript:void(0);" onclick="window.location.href='jsp/office/product.jsp#common3'">定制开发</a></li>
					<li class="twoItem fl"><a href="javascript:void(0);"  onclick="window.location.href='jsp/office/product.jsp#common4'">代运营</a></li>
				    <li class="twoItem fl"><a href="jsp/office/packages.jsp">多粉套餐</a></li>
				    <li class="twoItem fl current"><a href="jsp/office/wisdomWX.jsp">智慧微信</a></li>
				</ul>
			</div>
		</div>
		<!-- 中间导航条 结束-->
	    <!-- 智慧酒店 -->
	    <div class="wxTwo">
	         <div class="TwoWarp warp">
				<h1>智慧酒店</h1>
				<p>由微信公众号＋微信支付为基础构建，帮助酒店快速生成强大的酒店预定系统，实现全新的酒店微信公众号服务平台。从微信订酒店、到用微信开锁入住、微信退房、微信点评等，客人自己通过自己手机即可一键实现。</p>
				<div class="showa">
					<a href="http://v.qq.com/page/p/2/1/p01855uwl21.html" target="_blank">查看演示</a>
				</div>
			</div>
	    </div>
	    <div class="wxThr">
	         <div class="ThrWarp warp">
				<h1>智慧餐饮</h1>
				<p>通过客人自主点餐系统、服务呼叫系统、后厨互动系统、前台收银系统、预定排号系统以及信息管理系统!</p>
				<div class="showa">
					<a href="http://v.qq.com/page/d/y/1/d0186ne71y1.html" target="_blank">查看演示</a>
				</div>
			</div>
	    </div>
	    <div class="wxFour">
	         <div class="FourWarp warp">
				<h1>智慧生活</h1>
				<p>随着微信等新媒介的兴起，生活方式正在发生"微""妙"的变化，智慧生活是通过多粉平台打造的一款彻底专为用户提供全方位生活服务的移动网站，通过微生活服务，用户可以时时刻刻享受在线购物、点餐、定机票、预约酒店等多项服务的功能，彻底改变了用户传统的生活模式。</p>
				<div class="showa">
					<a href="http://v.qq.com/page/d/i/u/d01860f3fiu.html" target="_blank">查看演示</a>
				</div>
			</div>
	    </div>
	    <div class="wxFive">
	         <div class="FiveWarp warp">
				<h1>外勤办公</h1>
				<p>便捷查看外勤批示结果，记录员工外勤行程轨迹，量身定制特色管理应用，安全的让你无法拒绝。</p>
				<div class="showa">
					<a href="javascript:void(0);"  onclick="showAll('#signLayer')">查看演示</a>
				</div>
			</div>
			<img src="images/wisdomWX/wx5Index.png" class="fiveImg fiveImg1"/>
			<img src="images/wisdomWX/wx5Add.png" class="fiveImg fiveImg2"/>
	    </div>
    </div>
    <!-- 底部引入 -->
	<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
	<!-- 底部结束 -->
	
	<!--弹出层的遮罩层-->
	<div id="fade" class="black_overlay" onclick="closeFade()"></div>
	
	<!-- 外勤签到弹出层 -->
	<div class="signLayer" id="signLayer">
	    <div class="idyclose">
  		    <a href="javascript:void(0)" onclick="closeFade();"></a>
  	    </div>
    	<div class="signHeader">
    		<ul>
    			<li class="signHeaderCur" id="sign1">外勤办公</li><li id="sign2">产品中心</li>
    		</ul>
    	</div>
    	
    	 <div class="signCon" id="sign1Content">
    	   <h2 class="signTitle">外勤签到</h2>
    	   <div class="signMain">
    	      <div class="signLeft">
    	         <img src="images/wisdomWX/signLeft.jpg" />
    	      </div>
    	      <div class="signRig">
    	           <p class="rigText">外勤签到系统拥有移动定位轨迹、移动考勤、移动签到等多项功能，为企业提供外勤人员实时动态管理，解决企业外勤人员“<span>人在哪</span>”和“<span>做什么</span>”管理难题，让外勤人员的工作轨迹，一目了然。</p>
    	           <div class="rigBox">
    	           </div>
    	      </div>
    	   </div>
    	</div> 
    	<div class="signCon" id="sign2Content">
    	    <h2 class="signTitle signTitle2">产品中心</h2>
    	    <div class="signMain">
    	       <ul class="signList">
    	            <li class="signItem">
    	                <img src="images/wisdomWX/signRig1.png" />  
    	                <p class="title title1">移动考勤与外勤</p>
    	                <p class="info">随时随地移动考勤 <br /> 工作就是那么高校</p>
    	            </li>
    	            <li class="signItem">
    	                <img src="images/wisdomWX/signRig2.png" />  
    	                <p class="title title2">个人中心</p>
    	                <p class="info">业绩动态随手控 <br />客户信息一目了然</p>
    	            </li>
    	            <li class="signItem">
    	                <img src="images/wisdomWX/signRig3.png" />  
    	                <p class="title title3">任务管理</p>
    	                <p class="info">审批、团队、数据 <br /> 任务管理无需担心</p>
    	            </li>
    	            <li class="signItem">
    	                <img src="images/wisdomWX/signRig4.png" />  
    	                <p class="title title4">待办事项</p>
    	                <p class="info">随时填写及时提醒 <br /> 让工作更方便流畅</p>
    	            </li>
    	       </ul>
    	    </div>
    	</div>
    	
	</div>
	
    <script type="text/javascript">
		$(function(){
			    var height=300;
			    var productTwoLi = $('.wxBar ul li');
				$(window).scroll(function(){
					//获取滚动条的滑动距离
					var scroH = $(this).scrollTop()-0;
					//滚动条的滑动距离大于等于77距离固定  反之不固定
					if(scroH > height){
						$(".fixBar").show();
						 productTwoLi.removeClass('twoItem').addClass('twoItemCur');	 
					}else{
						$(".fixBar").hide();
						 productTwoLi.removeClass('twoItemCur').addClass('twoItem'); 
					}
				});
		});
		
		//弹出遮罩层
		function showFade(){
			document.getElementById('fade').style.display='block';
			var bgdiv=document.getElementById('fade');
			bgdiv.style.width=document.body.scrollWidth;
			$('#fade').height($(document).height());
		}
		
		//让指定的div始终显示在屏幕中间
		function divCenter(divname){
			var top=($(window).height()-$(divname).height())/2;
			var left=($(window).width()-$(divname).width())/2;
			var scrollTop=$(document).scrollTop();
			var scrollLeft=$(document).scrollLeft();
			$(divname).css(
				{
				position:'absolute',
				top:top+scrollTop,
				left:left+scrollLeft
			}).show();
		}
		//弹出弹出层
		function showAll(divname){
			showFade();
			divCenter(divname);
		}
		//关闭弹出层按钮
		function closeFade(){
			$('#fade').hide();
			$('#signLayer').hide();
		}
		
		//办公考勤切换
        $('#signLayer').find('.signHeader > ul li').click(function(){
				var openli=$(this).attr('id');
				var tabid=openli+"Content";
				$(this).addClass('signHeaderCur').siblings().removeClass('signHeaderCur');
				$('.signCon').hide();
				$("#"+tabid).show();
			});
	</script>
</body>
</html>