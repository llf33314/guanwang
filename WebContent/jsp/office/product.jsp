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
<link rel="stylesheet" type="text/css" href="css/office/product.css?<%= System.currentTimeMillis()%>"/>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/public.js?<%= System.currentTimeMillis()%>"></script>
</head>
<body onload="delayLading()">
	<!--头部开始-->
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
		<!--头部结束-->
		
		<!--中间开始-->
		<div id="proCon">
			<div class="productOne">
			 <img src="images/wisdomWX/wxheadText.png" class="headText" />
				<!-- <div class="headText">
					<h1>使用全新的方式销售、服务和推广</h1>
					<p>更好的兼容性、更便捷的操作性、更庞大的集中库、更直观的数据分析、您可以获取推动公司成长的持续动力。</p>
				</div> -->
			</div>
			<div class="productTwo">
				<div class="container">
					<ul class="clearfix">
						<li class="twoItem fl current"><a href="javascript:void(0);" onclick="document.getElementById('common1').scrollIntoView();">通用版</a></li>
						<li class="twoItem fl"><a href="javascript:void(0);" onclick="document.getElementById('common2').scrollIntoView();">行业版</a></li>
						<li class="twoItem fl"><a href="javascript:void(0);" onclick="document.getElementById('common3').scrollIntoView();">定制开发</a></li>
						<li class="twoItem fl"><a href="javascript:void(0);" onclick="document.getElementById('common4').scrollIntoView();">代运营</a></li>
						<li class="twoItem fl"><a href="jsp/office/packages.jsp">多粉套餐</a></li>
						<li class="twoItem fl"><a href="jsp/office/wisdomWX.jsp">智慧微信</a></li>
					</ul>
				</div>
			</div>
			<div class="productTwo fixBar">
				<div class="container">
					<ul class="clearfix">
						<li class="twoItem fl current"><a href="javascript:void(0);" onclick="document.getElementById('common1').scrollIntoView();">通用版</a></li>
						<li class="twoItem fl"><a href="javascript:void(0);" onclick="document.getElementById('common2').scrollIntoView();">行业版</a></li>
						<li class="twoItem fl"><a href="javascript:void(0);" onclick="document.getElementById('common3').scrollIntoView();">定制开发</a></li>
						<li class="twoItem fl"><a href="javascript:void(0);"  onclick="document.getElementById('common4').scrollIntoView();">代运营</a></li>
					    <li class="twoItem fl"><a href="jsp/office/packages.jsp">多粉套餐</a></li>
					    <li class="twoItem fl"><a href="jsp/office/wisdomWX.jsp">智慧微信</a></li>
					</ul>
				</div>
			</div>
			<span id="common1" name="common1">
				
			</span>
			<div class="productThr">
				<div class="container">
					<div class="threeWarp warp">
						<h1>通用版</h1>
						<p>一个包罗万象的操作平台，可以不限行业地满足您对微信平台的基本使用需求，通过展示、推广、互动、成交的各个环节快速进入微信营销轨道。它的功能远超你想象。</p>
						<div class="showa">
							<a href="javascript:void(0)" onclick="showAll('#common')">查看演示</a>
						</div>
					</div>
			    </div>
			</div>
			<span id="common2" name="common2">
				
			</span>
			<div class="productFou">
				<div class="fourWarp warp">
					<h1>行业版</h1>
					<p>更具体的使用场景、更有针对性的特色功能，行业版将您的客户、员工与您的业务直接相连，帮助您更有效的推广、销售和工作，并提高客户及员工的参与度。</p>
				    <div class="showa">
						<a href="javascript:void(0)" onclick="showAll('#industry')">查看演示</a>
					</div>
				</div>
			</div>
			<span id="common3" name="common3" class="change">
				
			</span>
			<div class="productFiv">
				<div class="fiveWarp warp">
					<h1>定制开发</h1>
					<p>深入到每个营销环节，让您的微信平台更具特色，并能针对性的提升客户体验。</p>
				    <div class="showa">
						<a href="javascript:void(0)" onclick="showAll('#open')">查看演示</a>
					</div>
				</div>
			</div>
			<span id="common4" name="common4">
				
			</span>
			<div class="productSix">
				<div class="sixWarp warp">
					<h1>代运营</h1>
					<p>专业化的团队将全面帮助您解决微信的平台搭建、运营管理、营销策划和电商管理，将您的业务推到全新的高度。</p>
				    <div class="showa">
						<a href="jsp/office/Operations.jsp">更多详情>></a>
					</div>
				</div>
			</div>
		</div>
		<!--中间结束-->
		<!-- 底部引入 -->
		<jsp:include page="/jsp/office/webFooter.jsp"></jsp:include>
		<!-- 底部结束 -->
		
		<!--弹出层的遮罩层-->
		 <div id="fade" class="black_overlay"></div>
		 <!--通用版弹出层-->
		 <div id="common" class="general">
		 	<div class="idyclose">
		  		<a href="javascript:void(0)" onclick="closeFade();"></a>
		  	</div>
		 	<div class="alertFirst">
	<div class="alertFirstHeader">
    	<ul>
    		<li class="user select"><img src="images/commonUser.png" />用户</li>
        	<li class="set"><img src="images/commonSet.png" />设置</li>
            <li class="promote"><img src="images/commonSpread.png" />推广</li>
            <li class="fans"><img src="images/commonFans.png" />粉丝</li>
            
        </ul>
    </div>
    <div class="alertFirstMain">
    <div class="viewUser">
        	<div class="viewNav">
            	<ul>
                    <li class="select"><a>首页</a></li>
                    <li><a>微信设置</a></li>
                    <li><a>账户充值</a></li>
                    <li><a href="http://duofriend.com/jsp/merchants/user/register.jsp">更多</a></li>
                </ul>
                <div class="slideSwitch">
                	<img src="images/alertFirstPic10.png" />
                </div>
            </div>
            <div class="viewMain">
            	<div class="viewNav01 viewMainBox">
                	<div class="viewMainDescribe">
                        <h1>用户首页</h1>
                        <p>展现用户的重要信息且快速找到，如增加了</p>
                        <p>多少粉丝，微官网今日流量等等</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic18.png" /></div>
                </div>
                <div class="viewNav02 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>微信设置</h1>
                        <p>通过首页一键绑定按钮，直接绑定公众号</p>
                        <p>无需复杂繁琐填写过程</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic19.png" /></div>
                </div>
                <div class="viewNav03 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>账户充值</h1>
                        <p>账户交易记录，充值、充值记录，粉币</p>
                        <p>发放记录等功能</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic20.png" /></div>
                </div>
            </div>
        </div>
    	<div class="viewSet"  style="display:none">
        	<div class="viewNav">
            	<ul>
                    <li class="select"><a>多图文</a></li>
                    <li><a>微网站</a></li>
                    <li><a>微场景</a></li>
                    <li><a>更多</a></li>
                </ul>
                <div class="slideSwitch">
                	<img src="images/alertFirstPic07.png" />
                </div>
            </div>
            <div class="viewMain">
            	<div class="viewNav01 viewMainBox">
                	<div class="viewMainDescribe">
                        <h1>多图文</h1>
                        <p>多层次的组合推广利器，信息更丰富</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic03.png" /></div>
                </div>
                <div class="viewNav02 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>微网站</h1>
                        <p>适合手机显示及触屏操作，多模板可选</p>
                        <p>快速编辑出精美微网站</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic02.png" /></div>
                </div>
                <div class="viewNav03 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>微场景</h1>
                        <p>重新定义的推广方式，超强的视听效果</p>
                        <p>让推广风靡你的粉丝圈</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic01.png" /></div>
                </div>
                <div class="viewNav04 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>更多微应用</h1>
                        <p>微应用是腾讯公司于2011年1月21日推出的一款</p>
                        <p>通过网络快速发送语音短信、视频、图片和</p>
                        <p>文字，支持多人群聊的手机聊天软件</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic04.png" /></div>
                </div>
            </div>
        </div>
        
        
        <div class="viewPromote"  style="display:none">
        	<div class="viewNav">
            	<ul>
                    <li class="select"><a>群发消息</a></li>
                    <li><a>抢红包</a></li>
                    <li><a>大转盘</a></li>
                    <li><a href="http://duofriend.com/jsp/merchants/user/register.jsp">更多</a></li>
                </ul>
                <div class="slideSwitch">
                	<img src="images/alertFirstPic08.png" />
                </div>
            </div>
            <div class="viewMain">
            	<div class="viewNav01 viewMainBox">
                	<div class="viewMainDescribe">
                        <h1>群发消息</h1>
                        <p>让你的营销信息推送更精准</p>
                    </div>
                    <div class="viewMainPic" style="top: 132px;"><img src="images/alertFirstPic15-01.png" /></div>
                </div>
                <div class="viewNav02 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>微红包</h1>
                        <p>让你的成交转化率显著提升</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic13.png" /></div>
                </div>
                <div class="viewNav03 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>微抽奖</h1>
                        <p>让你的营销对传统抽奖模式进行优化</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic14.png" /></div>
                </div>
            </div>
        </div>
        
        
        <div class="viewFans"  style="display:none">
        	<div class="viewNav">
            	<ul>
                    <li class="select"><a>粉丝管理</a></li>
                    <li><a>会员管理</a></li>
                    <li><a>数据中心</a></li>
                    <li><a href="http://duofriend.com/jsp/merchants/user/register.jsp">更多</a></li>
                </ul>
                <div class="slideSwitch">
                	<img src="images/alertFirstPic09.png" />
                </div>
            </div>
            <div class="viewMain">
            	<div class="viewNav01 viewMainBox">
                	<div class="viewMainDescribe">
                        <h1>粉丝管理</h1>
                        <p>先进的管理模式能让你在与粉丝的互动中</p>
                        <p>了解每一位粉丝的需求和对商家的建议</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic15.png" /></div>
                </div>
                <div class="viewNav02 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>会员管理</h1>
                        <p>先进的管理系统能迅速增加</p>
                        <p>和稳固你的客源</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic16.png" /></div>
                </div>
                <div class="viewNav03 viewMainBox" style="display:none">
                	<div class="viewMainDescribe">
                        <h1>数据中心</h1>
                        <p>记录粉丝、买家的行为，把数据图形化，帮你分析</p>
                        <p>粉丝的喜好，从而调整公司的营销方向</p>
                    </div>
                    <div class="viewMainPic"><img src="images/alertFirstPic17.png" /></div>
                </div>
            </div>
        </div>
        
        
    </div>    
</div>
		</div>
		 <!--通用版弹出层结束-->
		 
		<!--行业版弹出层-->
		<div id="industry">
		    <div class="idyclose">
		  		<a href="javascript:void(0)" onclick="closeFade();"></a>
		  	</div>
		    <div class="idy_fl">
			    <div class="idy_tle"><img rel="images/product/idyLogo.png">多粉行业版</div>
			    <div class="showlist">  
			      <ul id="idylist"> 
			        <li class="barfocus"><a onclick="selectTag('item0',this)" href="javascript:void(0)">微餐饮</a></li>
			        <li class=""><a onclick="selectTag('item1',this)" href="javascript:void(0)">微酒店</a></li>
			        <li class=""><a onclick="selectTag('item2',this)" href="javascript:void(0)">微房产</a></li>
			        <li class=""><a onclick="selectTag('item3',this)" href="javascript:void(0)">微汽车</a></li>
			        <li class=""><a onclick="selectTag('item4',this)" href="javascript:void(0)">微花店</a></li>
			        <li class=""><a onclick="selectTag('item5',this)" href="javascript:void(0)">微生活</a></li>
			        <li class=""><a onclick="selectTag('item6',this)" href="javascript:void(0)">微旅游</a></li>
			        <li class=""><a onclick="selectTag('item7',this)" href="javascript:void(0)">微教育</a></li>
			        <li class=""><a onclick="selectTag('item8',this)" href="javascript:void(0)">微物流</a></li>
			        <li class=""><a onclick="selectTag('item9',this)" href="javascript:void(0)">微零售</a></li>
			        <li class=""><a onclick="selectTag('item10',this)" href="javascript:void(0)">微休闲</a></li>
			        <li class=""><a onclick="selectTag('item11',this)" href="javascript:void(0)">微医院</a></li>
			        <li class=""><a onclick="selectTag('item12',this)" href="javascript:void(0)">微制造</a></li>
			        <li class=""><a onclick="selectTag('item13',this)" href="http://duofriend.com/jsp/merchants/user/register.jsp">其他</a></li>
			        <!-- <li class="idyLast"><a onclick="selectTag('item12',this)" href="javascript:void(0)">微制造</a></li> --> 
			      </ul> 
			    </div>  
		    </div>
		
		  
		    <div id="item0" class="idy_fr" style="display: block;">
			    <div class="idybox">
			      <h1>微餐饮</h1>
			      <h2>Catering</h2>
			      <p>菜品展示、预约订餐、微信排队、门店管理、粉丝管理，有效提高客户体验。舌尖上的美食——别舔了，赶紧动动手指，就可以了尽享美味！ </p>
			    </div>
			    <img rel="images/product/idy01.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item1" class="idy_fr" style="display: none;">
			    <div class="idybox">
			      <h1>微酒店</h1>
			      <h2>Hotel</h2>
			      <p>手机预订酒店，简单掌握酒店最新资讯！包括酒店环境、在线预约、微信支付等</p>
			    </div>
			    <img rel="images/product/idy02.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item2" class="idy_fr" style="display: none;">
			    <div class="idybox">
			      <h1>微房产</h1>
			      <h2>House Property</h2>
			      <p>楼盘信息介绍、区域及学位分析、360度3D全景展示、户型比较及评测、一键导航、预约看房全在掌控之中。</p>
			    </div>
			    <img rel="images/product/idy03.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item3" class="idy_fr" style="display: none;">
			    <div class="idybox">
			      <h1>微汽车</h1>
			      <h2>Automobile</h2>
			      <p>掌上的4S店，车型导购、外拍说车、超级试驾、优惠促销、保养常识、预约维保。</p>
			    </div>
			    <img rel="images/product/idy04.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item4" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微花店</h1>
			      <h2>Flower shop</h2>
			      <p>多粉微花店，微官网、微预约、微相册。属于您企业的“专属定制”，让您的客户体验最快捷的预定，最及时的收货服务。</p>
			    </div>
			    <img rel="images/product/idy05.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item5" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微生活</h1>
			      <h2>Life</h2>
			      <p>微您打造全方位的移动服务网站，用户随时随地享受购物、点餐、订机票等服务的功能，打破了传统的生活模式。</p>
			    </div>
			    <img rel="images/product/idy06.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item6" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微旅游</h1>
			      <h2>Travel</h2>
			      <p>粉微旅游，景区直达、查找周边、电子购票、线路规划。从此说走就走的旅行不再是梦。</p>
			    </div>
			    <img rel="images/product/idy07.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item7" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微教育</h1>
			      <h2>Education</h2>
			      <p>打通教育行业的各种所需，手机玩转各种便捷、智能的教学服务，环境展示、在线问答、报名预约、课程报名、成绩查询、学员互动，全部指尖搞定！</p>
			    </div>
			    <img rel="images/product/idy08.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item8" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微物流</h1>
			      <h2>Logistics</h2>
			      <p>网上下单、运单追踪、运费查询、网点查询，让您的每单全部掌控在手中，精准快捷。</p>
			    </div>
			    <img rel="images/product/idy09.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item9" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微零售</h1>
			      <h2>Retail</h2>
			      <p>多粉微零售，为您0租金微信开店，快速建铺，让您拥有线下店铺的同时，还能拥有线上店铺，从此双线经营，收益倍增！</p>
			    </div>
			    <img rel="images/product/idy10.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item10" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微休闲</h1>
			      <h2>Leisure</h2>
			      <p>不一样的娱乐方式，不一样的生活情趣。在线预订K房，在线唱吧、美容资讯、最新款产品、邀约驴友，一切尽在掌中。 </p>
			    </div>
			    <img rel="images/product/idy11.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item11" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微医院</h1>
			      <h2>The Hospital</h2>
			      <p>预约挂号、医生在线、医院实景展示、专家资质查询一应俱全，免去病患奔波之苦，节约医院服务成本。</p>
			    </div>
			    <img rel="images/product/idy12.jpg" width="640" height="600">
		    </div>
		  
		    <div id="item12" class="idy_fr" style="display:none">
			    <div class="idybox">
			      <h1>微制造</h1>
			      <h2>Manufacturing</h2>
			      <p>个性化定制产品、足不出户就能定制、杯具、玩具、家具等各类用品，质量认证、产品展示、定制产品，一键到位，轻松解决。</p>
			    </div>
			    <img rel="images/product/idy13.jpg" width="640" height="600">
		    </div>
        </div>
		<!--行业版弹出层结束-->
		
		<!--定制开发弹出层-->
		    <div id="open">
		    	<div class="idyclose">
		  		    <a href="javascript:void(0)" onclick="closeFade();"></a>
		  	    </div>
		    	<div class="openHeader">
		    		<ul>
		    			<li class="openHeaderCur" id="open1">定制开发</li><li id="open2">开发流程</li>
		    		</ul>
		    	</div>
		    	<!--定制开发部分-->
		    	<div class="openMadeCon openContent" id="open1Content">
		    		<h1>定制开发</h1>
		    		<div class="madeConWarp">
		    			<h2>维护与支持</h2>
		    			<p>多粉定制开发服务，专业的技术、开发团队支持满足客户的个性化需求深入到每个营销环节，让您的微信平台更具特色，这是一个能让您展现创意的平台。</p>
		    		</div>
		    	</div>
		    	<!--定制开发部分结-->
		    	<!--开发流程部分-->
		    	<div class="openProcess openContent" id="open2Content">
		    		<h1>开发流程</h1>
		    		<div class="processText">
		    			<label for="">签订合同</label>
		    			<label for="">项目启动</label>
		    			<label for="">产品原型</label>
		    			<label for="">视觉图</label>
		    			<label for="">研发</label>
		    			<label for="">测试</label>
		    			<label for="">验收</label>
		    			<label for="">上线</label>
		    		</div>
		    		<div class="process">
		    			<ul>
		    				<li class="proItem" id="step1"><img class="proItem1" rel="images/product/proBlue.png" alt="img" />
		    				</li><li class="proItem" id="step2"><img class="proItem2" rel="images/product/proGreyL.png" alt="img" />
		    				</li><li class="proItem" id="step3"><img class="proItem3" rel="images/product/proGreyL.png" alt="img" />	
		    				</li><li class="proItem" id="step4"><img class="proItem4" rel="images/product/proGreyL.png" alt="img" />
		    				</li><li class="proItem" id="step5"><img class="proItem5" rel="images/product/proGreyL.png" alt="img" />
		    				</li><li class="proItem" id="step6"><img class="proItem6" rel="images/product/proGreyL.png" alt="img" />
		    				</li><li class="proItem" id="step7"><img class="proItem7" rel="images/product/proGreyL.png" alt="img" />
		    				</li><li class="proItem" id="step8"><img class="proItem8" rel="images/product/proGreyL.png" alt="img" />
		    				</li>
		    			</ul>
		    		</div>
		    		<!--第一步 签订合同-->
		    		<div class="processCon" id="step1Con">
		    			<div class="conBox conBox1">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp1.png" alt="img" />
		    				</div>	
		    				<h2>商务代表</h2>
		    				<ul>
		    					<li>▪ 与客户签订合同</li>
		    					<li>▪ 项目周期</li>
		    					<li>▪ 项目价格</li>
		    					<li>▪ 保密协议</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第二步 项目启动-->
		    		<div class="processCon" id="step2Con" style="display: none;" >
		    			<div class="conBox conBox2">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp2.png" alt="img" />
		    				</div>	
		    				<h2>项目经理</h2>
		    				<ul>
		    					<li class="step2Item1">▪ 组织产品经理、UI设计师、开发工程师等人员</li>
		    					<li class="step2Item2">▪ 发动项目启动会议</li>
		    					<li class="step2Item2">▪ 组建会议</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第三步 产品原型-->
		    		<div class="processCon" id="step3Con" style="display: none;">
		    			<div class="conBox conBox3">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp3.png" alt="img" />
		    				</div>	
		    				<ul>
		    					<li>▪ 制作产品原型图与客户确认</li>
		    					<li>▪ 由项目经理同程参与，把控进度</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第四步 视觉图-->
		    		<div class="processCon" id="step4Con" style="display: none;">
		    			<div class="conBox conBox4">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp4.png" alt="img" />
		    				</div>	
		    				<h2>UI设计师</h2>
		    				<ul>
		    					<li>▪ 设计高保真视觉图与客户确认</li>
		    					<li>▪ 由项目经理同程参与 ，把控进度</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第五步 研发-->
		    		<div class="processCon" id="step5Con" style="display: none;">
		    			<div class="conBox conBox5">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp2.png" alt="img" />
		    				</div>	
		    				<h2>开发工程师</h2>
		    				<ul>
		    					<li>▪ 项目研发，接收测试工程师反馈后进行调整</li>
		    					<li>▪ 由项目经理同程参与 ，把控进度</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第六步 测试-->
		    		<div class="processCon" id="step6Con" style="display: none;">
		    			<div class="conBox conBox6">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp2.png" alt="img" />
		    				</div>	
		    				<h2>测试工程师</h2>
		    				<ul>
		    					<li>▪ 项目测试，发布测试报告反馈给工程师进行调整</li>
		    					<li>▪ 由项目经理同程参与 ，把控进度</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第七步 验收-->
		    		<div class="processCon" id="step7Con" style="display: none;">
		    			<div class="conBox conBox7">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp3.png" alt="img" />
		    				</div>	
		    				<ul>
		    					<li>▪ 提供最终产品包给客户验收</li>
		    				</ul>
		    			</div>
		    		</div>
		    		<!--第八步 上线-->
		    		<div class="processCon" id="step8Con" style="display: none;">
		    			<div class="conBox conBox8">
		    				<div class="boxImg">
		    					<img rel="images/product/proSetp8.png" alt="img" />
		    				</div>	
		    				<h2>项目经理</h2>
		    				<ul>
		    					<li>▪ 发布上线</li>
		    				</ul>
		    			</div>
		    		</div>
		    	</div>	
		    	<!--开发流程部分结束-->
		    </div>
		<!--定制开发弹出层结束-->
		<!--代运营弹出层-->
		    <!-- <div class="Operations" id="Operations">
		    	<div class="idyclose">
			  		<a href="javascript:void(0)" onclick="closeFade();"></a>
			  	</div>
		    	<div class="operWarp">
		    		<h1>代运营</h1>
		    		<p class="p1">微信平台搭建、活动策划、文案编辑、智能客服、线下活动硬件支持、BBS论坛社区推广、用户行为深度分析、同行微信分析、互动游戏、朋友圈转发、企业微信品牌案例包装、媒体宣传。</p>
                    <h2>我们的优势</h2> 
                    <div id="focus-banner">
						<ul id="focus-banner-list">
							<li>
								<a href="javascript:void(0)" class="focus-banner-img">
									<img rel="images/product/operImg1.jpg" alt="img">
								</a>	
							</li>
							<li>
								<a href="javascript:void(0)" class="focus-banner-img">
									<img rel="images/product/operImg2.jpg" alt="img">
								</a>	
							</li>
							<li>
								<a href="javascript:void(0)" class="focus-banner-img">
									<img rel="images/product/operImg3.jpg" alt="img">
								</a>	
							</li>
							<li>
								<a href="javascript:void(0)" class="focus-banner-img">
									<img rel="images/product/operImg4.jpg" alt="img">
								</a>	
							</li>
							<li>
								<a href="javascript:void(0)" class="focus-banner-img">
									<img rel="images/product/operImg5.jpg" alt="img">
								</a>	
							</li>
							<li>
								<a href="javascript:void(0)" class="focus-banner-img">
									<img rel="images/product/operImg6.jpg" alt="img">
								</a>	
							</li>
						</ul>
						<a href="javascript:;" id="next-img" class="focus-handle handleLeft"></a>
						<a href="javascript:;" id="prev-img" class="focus-handle handleRig"></a>
						<ul id="focus-bubble"></ul>
		            </div>
		            <p class="p2">拥有一批经验丰富的电子商务领域的精英团队以及各行业的专家，精通客户消费行为模式的统计与分析能力，同时还拥有一批专业的客户服务团队。</p>
		    	</div>
		    </div>	 -->
		<!--代运营弹出层结束-->
		
		<script type="text/javascript">
		$(function(){
			    var height=300;
			    var productTwoLi = $('.productTwo ul li');
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
			
			    //头部当前样式
				$('.items a').click(function(){	
					$('.items a').removeClass("headerCurrent");
					$(this).addClass("headerCurrent").siblings().removeClass("headerCurrent");
					});	
					
				//通用 行业版块导航条当前样式	
				$('.twoItem').click(function(){
					$('.twoItem ').removeClass("current");
					$(this).addClass("current").siblings().removeClass("current");
				   });	
				   
				// 轮播图样式
				var focusBanner=function(){
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

//					var _height=$("#Operations .focus-banner-img").find("img").height();
//					$focusBanner.height(_height);
//					$bannerImg.height(_height);

					//$(window).resize(function(){
					//	window.location.reload()
					//});   // 浏览器窗口改变时  强制刷新当前窗口

					for(var i=0; i<bannerLength; i++){
						$bannerList.eq(i).css("zIndex",bannerLength-i);
						$focusBubble.append("<li></li>");
					}
					//zIndex是js的z-index写法 默认图片是重叠堆放的   动态加载图片层级显示
					
					$focusBubble.find("li").eq(0).addClass("current");

					var bubbleLength=$focusBubble.find("li").length;

					$focusBubble.css({
						"width":bubbleLength*22,
						"marginLeft":-bubbleLength*11
					});//初始化

					$focusBubble.on("click","li",function(){
						$(this).addClass("current").siblings().removeClass("current");
						_index=$(this).index();
						changeImg(_index);
					});//点击轮换

					$nextBnt.on("click",function(){
						_index--;
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
					$('#industry').hide();
					$('#common').hide();
					$('#open').hide();
					$('#Operations').hide();
				}
			
			
			  //通用版弹出层标签切换
		        $('#common').find('#tagbar li:first-child').css({
		        	height:'65px',
		        	marginBottom:'0px',
		        	borderRadius:'5px 5px 0px 0px'
		        });
				$("#common").find('#tagbar li').click(function(){
					$(this).css({
						height:'65px',
						marginBottom:'0px',
						borderRadius:'5px 5px 0px 0px'
					}).siblings().css({height:'60px',marginBottom:'0px',borderRadius:'0px 0px 0px 0px'});
					var tagli=$(this).attr('id');
					var contentid=tagli+"Content";
					$('.rtbox').hide();
					$("#"+contentid).show();
				});
					//通用版设置标签切换
				$('#common').find('#tag1Content >.showSetTitle #setUl li').click(function(){
					var setli=$(this).attr('id');
					var tabid=setli+"Content";
					$(this).addClass('setCurrent').siblings().removeClass('setCurrent');
					$('.tabContent').hide();
					$("#"+tabid).show();
				});
				
				// 通用版推广标签切换
				$('#common').find('#tag2Content >.showTgTitle #setUl li').click(function(){
					var Tgli=$(this).attr('id');
					var Tgid=Tgli+"Content";
					$(this).addClass('setCurrent').siblings().removeClass('setCurrent');
					$('.TgContent').hide();
					$("#"+Tgid).show();
				});
	
		
		    //行业版标签切换
			function selectTag(showContent,selfObj){
				// 操作标签
				var tag = document.getElementById("idylist").getElementsByTagName("li");
				var taglength = tag.length;
				for(i=0; i<taglength; i++){
					tag[i].className = "";
					$('.idyLast').css('width','260px');
				}
			
				selfObj.parentNode.className = "barfocus";
				// 操作内容
				for(i=0; j=document.getElementById("item"+i); i++){ 
					j.style.display = "none";
				}
				document.getElementById(showContent).style.display = "block";	
			}
			
			//定制开发标签切换
            $('#open').find('.openHeader > ul li').click(function(){
					var openli=$(this).attr('id');
					var tabid=openli+"Content";
					$(this).addClass('openHeaderCur').siblings().removeClass('openHeaderCur');
					$('.openContent').hide();
					$("#"+tabid).show();
				});
				
			//开发流程进度切换
            $('#open').find('.proItem').mouseover(function(){
            	var stepLi=$(this).attr('id');
            	var conid=stepLi+"Con";
            	var length = $(".proItem").length;
                var index = parseInt($(this).find("img").attr("class").replace("proItem",""));
                
                $('.processCon').hide();
              	$("#"+conid).show();
                
                for (var i = index; i >= 0; i--) {
                  	$('.proItem1').attr('src','images/product/proBlue.png');
                    $(".proItem").find(".proItem"+i).attr("src","images/product/proBlueL.png");	
                  }
                
                for (var i = (index+1); i <= length; i++) {
                 $(".proItem").find(".proItem"+(i)).attr("src","images/product/proGreyL.png");
             }
            });
			
			function delayLading(){
				var imgArray  = document.getElementsByTagName("img");
				var img = null;
				for(var i=0;i<imgArray.length;i++){
					img = $(imgArray[i]);
					img.attr("src",img.attr("rel"));
				}
			}
			
			$(function(){
				var viewSet = $(".viewSet"),viewPromote = $(".viewPromote"),viewFans = $(".viewFans"),viewUser = $(".viewUser"),alertFirstHeader = $(".alertFirstHeader"),slideSwitch = $(".slideSwitch"),viewMainBox = $(".viewMainBox");
				
				viewSet.on("click",".viewNav ul li",function(){
					var index = SelectIndex(this);
					slideSwitchMove(viewSet,index);
				})
				
				viewPromote.on("click",".viewNav ul li",function(){
					var index = SelectIndex(this);
					slideSwitchMove(viewPromote,index);
				})
				
				viewFans.on("click",".viewNav ul li",function(){
					var index = SelectIndex(this);
					slideSwitchMove(viewFans,index);
				})
				
				viewUser.on("click",".viewNav ul li",function(){
					var index = SelectIndex(this);
					slideSwitchMove(viewUser,index);
				})
				
				alertFirstHeader.on("click","ul li",function(){
					var index = SelectIndex(this);
					$(".alertFirstMain>div").hide();
					$(".alertFirstMain>div:eq("+index+")").show();
				})
				
				function SelectIndex(obj){
					var _this = $(obj);
					var index = _this.index();
					_this.parent().find(".select").removeClass("select");
					_this.addClass("select");
					return index;
				}
				
				function slideSwitchMove(obj,page){
					var left = parseInt(page)*98;
					obj.find(".slideSwitch").css("left",left);
					obj.find(".viewMain>div").hide();
					obj.find(".viewMain>div").eq(page).show();
				}
				
				
			})
	</script>
</body>
</html>