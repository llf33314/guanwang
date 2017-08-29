<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>小馋猫餐饮管理系统_外卖点餐无线点菜_收银支付软件_多粉</title>

    <meta name="description"
          content="多粉小馋猫智慧餐饮，提供包含订餐、订房、点菜、支付、收银、预约排号等功能服务，整合互联网餐饮营销方式，帮助餐厅快速提升订单，提高用户体验。"/>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="apple-mobile-web-app-capable" content="no" />
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/css/webSite.css"/>
	<script src="/js/webSite.js"></script>
	<%@include file="/html/LittleGreedyCat/html/common/resource.jsp" %>

	<script type="text/javascript">
		var access_num = 1; 
	</script>
</head>
<body>

	<%@include file="/html/LittleGreedyCat/html/common/banner.jsp" %>
	
             <div class="xc-choice-hidden">
               <div class="xc-switch" style="display:block" id="id1">
                  <img src="../img/mm-1.png" class="xc-switch-pic" />
                  <p class="xc-switch-brief">粉丝可以通过微信端直接预订餐桌、选择菜式，到店扫码核销后可马上用餐。为粉丝提供了快捷的体验，也更利于商家安排日常运营工作。</p>
               </div>

               <div class="xc-switch-two" style="display:none" id="id2">
                 <span class="xc-switch-box">
                  <p class="xc-switch-brief-two">支持微信在线取号，手机实时查看排队进度；系统自动提前发出消息提醒；顾客根据排队进度到餐厅就餐，无需到店排队。</p>
                 </span>
                  <img src="../img/mm-2.png" class="xc-switch-pic-two" />
               </div>

                <div class="xc-switch" style="display:none" id="id3">
                  <img src="../img/mm-3.png" class="xc-switch-pic" />
                  <p class="xc-switch-brief">微信扫码点餐，粉丝自主操作，点取自己喜欢的菜式后，输入用餐人数，系统将自动生成相应的订单。提升用户体验，提高商家翻台率。</p>
               </div>

                <div class="xc-switch-two" style="display:none" id="id4">
                 <span class="xc-switch-box">
                  <p class="xc-switch-brief-two">专业的ERP外卖点餐订餐系统，订单信息即时通知，数据同步到智能前台，轻松管理并打印订单。店员端小程序，订单管理一部手机即可搞定。</p>
                 </span>
                  <img src="../img/mm-4.png" class="xc-switch-pic-two" />
               </div>

                <div class="xc-switch" style="display:none" id="id5">
                  <img src="../img/mm-5.png" class="xc-switch-pic" />
                  <p class="xc-switch-brief">一键开台，实时查看全台位状态；预订管理，快速核销。智能化前台，让服务流程更加规范、统一，降低餐厅的培训成本。智能化操作，减少店员的工作量，提高运营效率。</p>
               </div>

                <div class="xc-switch-two" style="display:none" id="id6">
                 <span class="xc-switch-box">
                  <p class="xc-switch-brief-two">系统完美融合多粉优惠券功能，解决传统纸质优惠券的缺点和不足。同时，多元化的优惠券类型及发布方式，帮助商家吸引更多的粉丝，激发粉丝到店里进行二次消费。粉丝消费自动返优惠券，带给粉丝更多元化的消费体验。</p>
                 </span>
                  <img src="../img/mm-6.png" class="xc-switch-pic-two" />
               </div>

               <div class="xc-switch" style="display:none" id="id7">
                  <img src="../img/mm-7.png" class="xc-switch-pic" />
                  <p class="xc-switch-brief">结合会员营销体系，通过积分换购、抵现、兑奖等方式，给会员更多的“实惠”，有利于交易转化。</p>
               </div>

               <div class="xc-switch-two" style="display:none" id="id8">
                 <span class="xc-switch-box">
                  <p class="xc-switch-brief-two">智能化收银系统，支持微信在线支付、银联支付、扫码支付等多种支付方式。而且智能POS机包含卡券核销、多种支付方式、会员管理、票据打印等功能，满足现实场景中的各种需求。</p>
                 </span>
                  <img src="../img/mm-8.png" class="xc-switch-pic-two" />
               </div>
            </div>


  <div class="gt-swiper3d-box" title="商家联盟优势">
    <div class="gt-bg-blue blue-bg"></div>
    <div class="gt-bg-white white-bg"></div>
    <div class="gt-width1200">
      <span title="后退" class="gt-swiper3d-btn left" id="leftBtn"></span>
      <span title="前进" class="gt-swiper3d-btn right" id="rightBtn"></span>
      <div class="gt-swiper3d-container">
        <div class="gt-swiper3d-top">
          <div class="gt-text" style="display: none">
            <h1>小馋猫行业解决方案是什么？</h1>
            <h6>小馋猫为客户提供包含订餐、订房、点菜、支付、预约排号等功能服务，将线下店铺和线上营销无缝对接，帮助餐厅快速提升订单，提高用户体验 </h6>
          </div>
          <div class="gt-text">
            <h1>小馋猫行业解决方案是什么？</h1>
            <h6>小馋猫为客户提供包含订餐、订房、点菜、支付、预约排号等功能服务，将线下店铺和线上营销无缝对接，帮助餐厅快速提升订单，提高用户体验 </h6>
          </div>
          <div class="gt-text" style="display: none">
            <h1>小馋猫行业解决方案是什么？</h1>
            <h6>小馋猫为客户提供包含订餐、订房、点菜、支付、预约排号等功能服务，将线下店铺和线上营销无缝对接，帮助餐厅快速提升订单，提高用户体验 </h6>
          </div>
        </div>
        <div class="gt-swiper3d-radio-box"  style="transform: scale(0.68) translate(-435px, 44px);z-index: 1">
          <div class="gt-swiper3d-radio-image"><img alt="" src="../img/gt-image1.png"></div>
          <div class="gt-swiper3d-popup addBg">
          <h2 style="color:#fff;font-size:24px;">小馋猫MG动画</h2>
            <a href="javascript:;" class="gt-swiper3d-play" onclick='WSFUNCTION.videoFrame("https://v.qq.com/iframe/player.html?vid=q03896qqitw&auto=0&tiny=0&auto=0");'></a>
          </div>
        </div>
        <div class="gt-swiper3d-radio-box"  style="transform: scale(1) translate(0,0);z-index: 2">
          <div class="gt-swiper3d-radio-image"><img alt="" src="../img/gt-image1.png"></div>
          <div class="gt-swiper3d-popup">
          <h2 style="color:#fff;font-size:24px;">小馋猫现实场景视频</h2>
            <a href="javascript:;" class="gt-swiper3d-play" onclick='WSFUNCTION.videoFrame("https://v.qq.com/iframe/player.html?vid=b0388vsm3nr&auto=0&tiny=0&auto=0");'></a>
          </div>
        </div>
        <div class="gt-swiper3d-radio-box"  style="transform: scale(0.68) translate(435px, 44px);z-index: 1">
          <div class="gt-swiper3d-radio-image"><img alt="" src="../img/gt-image1.png"></div>
          <div class="gt-swiper3d-popup addBg">
          <h2 style="color:#fff;font-size:24px;">小馋猫现实场景视频</h2>
            <a href="javascript:;" class="gt-swiper3d-play" onclick='WSFUNCTION.videoFrame("https://v.qq.com/iframe/player.html?vid=d0186ne71y1&auto=0&tiny=0&auto=0");'></a>
          </div>
        </div>
        <ul class="gt-swiper3d-page">
         <li class="clicked"></li>
        </ul>
      </div>
    </div>
  </div>

     <div class="xc-function">
       <h2>智能餐饮核心功能</h2>
       <div class="xc-function-box">
          <div class="show1">
            <img src="../img/c1.png" class="pic-show"/>
             <p><b>餐饮系统</b></p>
          </div>
          <div class="show2">
            <img src="../img/c1-1.png" class="pic-show"/>
            <p><b>餐饮系统</b></p>
            <p style="font-size:13px;">微信外卖、点餐、预定、排号、打破位置的限制，餐厅动态一手掌控</p>
          </div>
       </div>

       <div class="xc-function-box">
          <div class="show1">
            <img src="../img/c2.png" class="pic-show"/>
            <p><b>前台营业ERP</b></p>
          </div>
          <div class="show2">
            <img src="../img/c1-2.png" class="pic-show"/>
            <p><b>前台营业ERP</b></p>
            <p style="font-size:13px;">顾客自主消费体验高环保、低成本智能化营业模式减少服务操作，节省人工成本</p>
          </div>
       </div>

       <div class="xc-function-box">
          <div class="show1">
            <img src="../img/c3.png" class="pic-show"/>
            <p><b>智能支付</b></p>
          </div>
          <div class="show2">
            <img src="../img/c1-3.png" class="pic-show"/>
            <p><b>智能支付</b></p>
            <p style="font-size:13px;">微信支付、扫码支付、刷卡支付，轻松实现买单一键支付</p>
          </div>
       </div>
     </div>
     <div class="xc-function">
       <div class="xc-function-box">
          <div class="show1">
            <img src="../img/c4.png" class="pic-show"/>
            <p><b>互动营销</b></p>
          </div>
          <div class="show2">
            <img src="../img/c1-4.png" class="pic-show"/>
            <p><b>互动营销</b></p>
            <p style="font-size:13px;">支付有礼、摇一摇卡券、朋友圈营销，让消费者全程参与，传播口碑</p>
          </div>
       </div>

       <div class="xc-function-box">
          <div class="show1">
            <img src="../img/c5.png" class="pic-show"/>
            <p><b>会员CRM</b></p>
          </div>
          <div class="show2">
            <img src="../img/c1-5.png" class="pic-show"/>
            <p><b>会员CRM</b></p>
            <p style="font-size:13px;">实体/虚拟会员卡自由组合分析消费习惯，提高会员粘度</p>
          </div>
       </div>

       <div class="xc-function-box">
          <div class="show1">
            <img src="../img/c6.png" class="pic-show"/>
            <p><b>营销分析</b></p>
          </div>
          <div class="show2">
            <img src="../img/c1-6.png" class="pic-show"/>
            <p><b>营销分析</b></p>
            <p style="font-size:13px;">查看数据分析 深入挖掘洞悉消费者的喜好预判他们的消费动向</p>
          </div>
       </div>
    </div>

    <div class="gt-xcm-hy">
    	<div class="gt-width1200">
    		<h1 style="padding-top: 60px;">行业解决方案 两种业务模式</h1>
    		<ul class="title">
    			<li class="clicked" onclick="gtXcmHy(1,this)"><span class="icon icon1"></span>餐厅预定</li>
    			<li onclick="gtXcmHy(2,this)"><span class="icon icon2"></span>店内就餐</li>
    		</ul>
    		<img id="gtXcmHy1" alt="餐厅预定" style="padding:0 20px" src="../img/xcm_hy1.png">
    		<img id="gtXcmHy2" style="display:none;padding:0 20px;" alt="店内就餐" src="../img/xcm_hy2.png">
    	</div>
    </div>
    <div class="gt-width1200">
    	<h1 class="gt-xcm-yycenter-title">应用中心</h1>
    	<div class="gt-xcm-yycenter">
    		<span class="border top"></span>
    		<span class="border bottom"></span>
    		<ul class="list">
    			<li>
    				<div class="cont">
    					<span class="img img1"></span>
    					<h2 class="title">一键开台</h2>
    					<p class="ps">操作员可在智能前台系统选择空白台位一键开台</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img2"></span>
    					<h2 class="title">预订核销</h2>
    					<p class="ps">前台系统一键核销预订顾客提高餐厅核销率</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img3"></span>
    					<h2 class="title">实时查看全台位状态</h2>
    					<p class="ps">前台系统可查看全部台位状态实时了解顾客需要 提高服务质量</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img4"></span>
    					<h2 class="title">快速买单</h2>
    					<p class="ps">店员可用手机操作买单<br/>顾客扫描二维码即时付款</p>
    				</div>
    			</li>
    		</ul>
    		<ul class="list" style="padding-top:100px;">
    			<li>
    				<div class="cont">
    					<span class="img img5"></span>
    					<h2 class="title">收银交班</h2>
    					<p class="ps">支持前台收银人员智能交接班不漏掉每一个工作细节</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img6"></span>
    					<h2 class="title">钱箱管理</h2>
    					<p class="ps">让管理者清晰了解门店的资金情况进行合理的资金安排</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img7"></span>
    					<h2 class="title">当日报表</h2>
    					<p class="ps">决策者只需要一部手机随时随地查看每一条订单记录</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img8"></span>
    					<h2 class="title">营业分析</h2>
    					<p class="ps">深入挖掘餐厅的营业数据帮助管理者做出更明智的决策</p>
    				</div>
    			</li>
    		</ul>
    	</div>
    	<h1 class="gt-xcm-yycenter-title">帮助客户现实业务增涨</h1>
    	<div class="gt-xcm-yycenter gt-xcm-yycenter2" style="height: 230px">
    		<ul class="list">
    			<li>
    				<div class="cont">
    					<span class="img img5"></span>
    					<h2 class="title">翻台率上升</h2>
    					<p class="ps">店内服务效率提升翻台率上涨12%</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img6"></span>
    					<h2 class="title">核销率上升</h2>
    					<p class="ps">账单统计整台效率提升87%</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img7"></span>
    					<h2 class="title">复购率上升</h2>
    					<p class="ps">完善的会员卡和复购营销店内复购率持续上升</p>
    				</div>
    			</li>
    			<li>
    				<div class="cont">
    					<span class="img img8"></span>
    					<h2 class="title">忠诚度上升</h2>
    					<p class="ps">线下客流能够转化为商家线上粉丝线上粉丝会再次回归餐厅消费</p>
    				</div>
    			</li>
    		</ul>
    	</div>
    </div>

    <%@include file="/html/common/footer-son.jsp" %>
<script>

   $(function(){

     gtSwiper3d.event();
     gtSwiper3d.interval();
     $('.xc-function-box').on('mouseenter',function(){
         $(this).find('.show1').hide();
         $(this).find('.show2').show();
     }).on('mouseleave',function(){
         $(this).find('.show1').show();
         $(this).find('.show2').hide();
     })
   })
          function gtShow(id,t){
            $('.xc-choice-hidden').find('#id'+id).show().siblings('div').hide();
          }
      </script>
	<script type="text/javascript">
		function gtXcmHy(id, t) {
			$(t).addClass('clicked').siblings('li').removeClass('clicked');
			$(t).parent('.title').siblings('#gtXcmHy' + id).show().siblings(
					'img').hide();
		}
	</script>


</body>
</html>
