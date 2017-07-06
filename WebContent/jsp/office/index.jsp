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
<link rel="stylesheet" type="text/css" href="css/office/index.css?<%= System.currentTimeMillis()%>"/>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
<script type="text/javascript">
	$(function(){
		$('.items a').click(function(){	
			$('.items a').removeClass("headerCurrent");
            $(this).removeClass("headerCurrent").end().siblings().addClass("headerCurrent");
		});
	});
</script>
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
				   			<li class="items"><a href="jsp/office/index.jsp" class="white headerCurrent">首页</a></li>
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
		<div class="positon" style="height: 77px;width: 100%;"></div>
		<!--头部结束-->
		<!--中间开始-->
		<div id="indexCon" class="indexCon">
			<!--开始体验模块-->
			<div class="banner1">
				<div class="center-warp">
					<div class="banner-logo"><img src="../../images/index/indexBg1Text.png" width="100%" /></div>
					<div class="btn j-cretae a-fadeinB">
						<a href="http://duofriend.com/user/toregister.do">
							<img src="../../images/index/indexBg1Start.png" width="100%" >
						</a>
					</div>
				</div>
            </div>
            
			<!--o2o新玩法模块-->
			<div class="banner2">
				<div class="title"></div>
			</div>
			<!--多平台模块-->
			<div class="banner3">
			    <div class="bannerImg"></div>
				<div class="title"></div>
			</div>
			<!--疯狂粉丝模块-->
			<div class="banner4">
				<div class="title"></div>
			</div>
			<!--合作伙伴模块-->
			<div class="banner5">
			    <div class="fiveWarp">
				<h1>合作伙伴</h1>
	            <div id="focus-banner">
					<ul id="focus-banner-list">
						<li>
							<a href="javascript:void();" class="focus-banner-img">
								<img src="images/index/hb01.png" alt="img">
							</a>	
						</li>
						<li>
							<a href="javascript:void();" class="focus-banner-img">
								<img src="images/index/hb02.png" alt="img">
							</a>	
						</li>
					</ul>
					<a href="javascript:;" id="next-img" class="focus-handle"></a>
					<a href="javascript:;" id="prev-img" class="focus-handle"></a>
					<ul id="focus-bubble"></ul>
	            </div>
			</div>
			</div>
		</div>
		<!--中间结束-->
		<!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
		<script>
		$(function(){
			var focusBanner=function(){
				var x=30;
				var $focusBanner=$("#focus-banner"),
					$bannerList=$("#focus-banner-list li"),
					$focusHandle=$(".focus-handle"),
					$bannerImg=$(".focus-banner-img"),
					$nextBnt=$("#next-img"),
					$prevBnt=$("#prev-img"),
					$focusBubble=$("#focus-bubble"),
					bannerLength=$bannerList.length,
					_index=0,
					_timer="";

					/* $(window).resize(function(){
						window.location.reload()
					 });   */ // 浏览器窗口改变时  强制刷新当前窗口

					for(var i=0; i<bannerLength; i++){
						$bannerList.eq(i).css("zIndex",bannerLength-i);
						$focusBubble.append("<li></li>");
					}
					//zIndex是js的z-index写法 默认图片是重叠堆放的   动态加载图片层级显示
					
					$focusBubble.find("li").eq(0).addClass("current");

					var bubbleLength=$focusBubble.find("li").length;

					$focusBubble.css({
						"width":bubbleLength*30,
						"marginLeft":-bubbleLength*11,
						
					});//初始化

					$focusBubble.on("click","li",function(){
						$(this).addClass("current").siblings().removeClass("current");
						_index=$(this).index();	
						changeImg(_index);
					});//点击轮换

					$nextBnt.on("click",function(){
						_index--
						if(_index<0){
							_index=bannerLength-1;
						}
						changeImg(_index);
					});//下一张

					$prevBnt.on("click",function(){
						_index++;
						if(_index>bannerLength-1){
							_index=0;
						}
						changeImg(_index);
					});//上一张

					function changeImg(_index){
						$bannerList.eq(_index).fadeIn(250);
						$bannerList.eq(_index).siblings().fadeOut(200);
						$focusBubble.find("li").removeClass("current");
						$focusBubble.find("li").eq(_index).addClass("current");
						clearInterval(_timer);//取消注释即可自动轮播
						_timer=setInterval(function(){$nextBnt.click()},5000)//取消注释即可自动轮播
					}//切换主函数
					_timer=setInterval(function(){$nextBnt.click()},5000)//取消注释即可自动轮播
			}();
		});
		
		$(function(){
			$(".banner1").height($(window).height()-77);
			setTimeout(function(){
				$(".center-warp").css({
					"width":$(".banner1").width()/3.2,
					"padding-top":($(".banner1").height()-$(".center-warp").height()+120)/2
				}).show();
			},50);
		})
	</script>
</body>
</html>