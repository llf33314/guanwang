<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../css/carStyle.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
	<script src="../js/jquery-2.2.2.min.js"></script>
    <link rel="stylesheet" href="/css/webSite.css"/>
	<script src="/js/webSite.js"></script>
    <script type="text/javascript">
		var access_num = 0; 
	</script>
</head>
<body>
<%@include file="/html/CarCount/html/common/banner.jsp" %>

<div id="myContainer" class="gt-mouse-scroll">
   <div class="section" id="section0">
	 <div class="car-ban">
	      <span class="car-ban-title">
	        <h1>专业的汽车美容与快修行业ERP</h1>
	        <h5>高效的运营解决方案 全面的数据统计分析</h5>
	      </span>
	      <div class="car-ban-pic">
	        <img src="../images/car.png" id="img-1" style="width: 62%;"/>
	        <img src="../images/car1.png" class="car-ban-img animated" id="img-2" style="width: 80%;"/>
	      </div>
	    </div>
   </div>	
	<div class="section" id="section1">
	    <div class="car-home-small">
	      <canvas id="wave">对不起，您的浏览器不支持canvas</canvas>
	      <div class="car-home-small-box">
	      	<div class="animated car-home-small-box-animated" >
		        <img src="../images/lun.png" style="width: 74%;"/>
		        <div class="car-home-small-show">
		         <div class="car-home-small-roll1">
		           <div class="roll1-big">
		             <div class="roll1-small"></div>
		             <div class="roll1-2-small"></div>
		           </div>      
		         </div>
		         <div class="car-home-small-roll2">	  
		           <div class="roll2-big">
		             <div class="roll2-small"></div> 
		           </div>           
		         </div>
		         <div class="car-home-small-roll3">
		           <div class="roll3-big">
		             <div class="roll3-small"></div>
		             <div class="roll3-2-small"></div>
		           </div>             
		         </div>
		         <div class="car-home-small-roll4">
		           <div class="roll4-big">
		             <div class="roll4-small"></div> 
		           </div>               
		         </div>
		        </div>
		        <div class="car-home-small-article">
		          <p><span style="color:#1A82F1;font-size:18px;">随</span>着汽车市场快速发展，汽车美容与快修行业本应有着较大的发展空间和利润空间。但正是由于行业的快速发展，每个区域都聚集着成百上千的汽车美容与快修门店，行业竞争越来越激烈。</p>
		          <p>与此同时，同质化的门店太多，而大多数门店因为缺乏高效的运营管理系统、无法连接互联网进行有效营销引流等原因，难以形成自己的核心竞争力,
		          难以从同质化的竞争中脱颖而出。而且竞争对手之间常常通过价格战来赢取客户，再加上铺租、成本等问题，导致行业服务水平普遍下降，盈利能力降低。</p>
		          <p>在这样的大环境下，<span style="color:#1A82F1;">“提高运营效率+连接互联网”</span>成为汽车美容与快修门店提升竞争力关键。车小算云ERP系统，直接触达汽车美容与快修行业痛点，提供高效的行业解决方案，帮助商家进入移动互联网营销时代。</p>	        
		        </div>
	        </div>
	    </div>
	 </div>
	</div>
	<div class="section" id="section2">
     <div id="myContainer2" class="gt-mouse-scroll">
	  <div id="section22">
		  <div class="main-wrap animated">
		       <h2 id="main-h2" class="animated" style="opacity: 0;">行业痛点</h2>
		       <nav id="main-nav" class="animated" style="opacity: 0;">
		       	   <a href="#" class="selected">无ERP</a>
		       	   <a href="#">传统ERP</a>
		       	   <a href="#">车小算云ERP</a>
		       </nav>
		       <div class="conts-wrap">
		           <div class="cont-wrap w-erp">
		           	   <div class="txt animated" style="opacity: 0;">
		           	        <article>
			           	        <h3>无ERP 手工记录经营</h3>
								<p>· 手工记录，洗车卡核算容易出错，容易产生纠纷</p>
								<p>· 商家没有自己的线上商城，无法开展线上营销</p>
								<p>· 没有会员卡，老顾客无法稳定，客户流失现象普遍</p>
								<p>· 人工统计数据，量大费时，且无法清晰展示各类数据</p>
								<p>· 没有自己的公众号，营销手段匮乏，无法增加客流</p>
								<p>· 没有自己的互联网入口，无法让顾客通过网络第一时间找到商家</p>
	                        </article>
		           	   </div>
		           	   <div class="img">
                            <div class="xg-wrap animated" style="opacity: 0;">
                                 <img src="../images/car-ind11.png">
                                 <img src="../images/car-ind1.png">
                            </div>
		           	   </div>
		           </div>
		           <div class="cont-wrap ct-erp">
		           	   <div class="txt">
		           	        <article>
			           	        <h3>传统ERP</h3>
			           	        <p>· 传统的软件端ERP需要手动本地安装、使用容易中毒，需要手动升级软件</p>
		                        <p>· 实体会员卡，运营管理费时费力，制卡成本高，顾客携带不方便</p>
		                        <p>· 无法连接微信，无法开展线上营销，无法吸引线上流量</p>
		                        <p>· 无法与线上商城形成互通，库存难以掌控，线上线下数据相互独立</p>
		                        <p>· 软件需要本地运行，数据本地保存，没有灾备系统，当发生硬件损坏或其他严重故障时，数据无法还原</p>
	                        </article>
		           	   </div>
		           	   <div class="img">
                            <img src="../images/car-ind2.png">
                            <div class="xg-wrap">
                                <img src="../images/item6.png" class="iphone"> 
                                <img src="../images/item5.png">
                                <img src="../images/item1.png">
                                <img src="../images/item2.png">
                                <img src="../images/item3.png">
                                <img src="../images/item4.png">
                            </div>
		           	   </div>
		           </div>
		           <div class="cont-wrap cxs-erp">
		           	   <div class="txt">
		           	        <article>
			           	        <h3>车小算云ERP</h3>
			           	        <em>车小算=云ERP+微信（公众号、小程序）+会员CRM+洗车卡+商家联盟+优惠券+粉巢系统+线上商城=商家自有生态系统；</em>
								<p>· 车主通过手机线上预约，到店直接享受服务</p>
								<p>· 微信洗车卡，打开微信即可使用，扫码核销，自动扣次；车主通过微信管理与查看洗车卡信息</p>
								<p>· 线上商城与线下门店销售商品数据互通，线上线下同价，统一库存；库存告急自动提醒</p>
								<p>· 通过手机即可查看及管理会员信息，商家可以选择会员是否兼容实体卡同步使用</p>
								<p>· 能使用各种微信营销场景及游戏互动功能</p>
								<p>· 专属的店员端APP（小程序），店员可以通过手机开单以及核销顾客洗车次数</p>
								<p>· 使用云计算、云存储，双系统灾备，支持数据本地保存</p>
								<p>· 实时的财务报表分析与老板报表，老板通过手机专属查看与管理</p>
								<p>· 商家联盟系统，支持联盟内的商家会员互通消费，商机相互推荐，实现线下有效引流</p>
								<p>· 违章代办/年审代办/保险购买/订货寄存/拖车救援，为车主提供全面的贴心服务</p>
	                        </article>
		           	   </div>
		           	   <div class="img ">
                            <div class="xg-wrap animated" style="opacity: 0;" id="main-xun">
                                 <img src="../images/car-ind3.png">
                                 <img src="../images/car-ind4.png">
                            </div>
		           	   </div>
		           </div>
		       </div>
		  </div>
	    </div>
      </div>
	</div>
	<div class="section" id="section3">
		<div class="car-home-demand animated ">
	    <div class="car-home-demand-box">
	      <h1 class="car-txt1 animated" style="opacity: 0;">懂你需求的ERP，才是最好的</h1>
	      <div class="car-home-demand-span animated" style="opacity: 0;">
	        <p>多粉平台已为超过5000家的汽车美容与快修企业提供服务，我们了解汽车美容与快修行业的痛点和需求。</p>
	        <p>专业的研发团队，前期深入考研分析，也和商家一起探讨汽车美容与快修行业最核心的需求，制定车小算的开发方案；</p>
	        <p>再由技术团队精心设计，在细节上精益求精，只为给用户带来好学、好用的车小算云ERP系统。</p>	    
	      </div>
	      <div class="car-home-demand-box-pic animated">
	        <div class="demand animated" style="opacity: 0;"></div>
	        <div class="demand-line animated" style="opacity: 0;"></div>
	        <div class="Pain animated" style="opacity: 0;"></div>
	        <div class="Pain-line animated" style="opacity: 0;"></div>
	        <div class="point animated" style="opacity: 0;"></div>
	        <div class="point-line animated" style="opacity: 0;"></div>
	        <div class="main animated" style="opacity: 0;"></div>
	        <div class="main-line animated" style="opacity: 0;"></div>
	        <div class="technology animated" style="opacity: 0;"></div>
	        <div class="technology-line animated" style="opacity: 0;"></div>
	        <div class="major animated" style="opacity: 0;"></div>
	        <div class="major-line animated" style="opacity: 0;"></div>
	        <div class="discuss  animated" style="opacity: 0;"></div>	    
	        <div class="form animated" style="opacity: 0;"></div>               
	      </div>
	    </div>
	  </div>
	</div>
	<div class="section" id="section4">
	  <div class="car-home-choice animated">
	    <div class="car-home-choice-box">
	      <h1 class="car-txt2 animated" style="opacity: 0;">选择我们就够了，你要的这里全都有</h1>
	      <div class="car-home-choice-span animated" style="opacity: 0;">
	        <p>车小算是在多粉平台的基础上进行开发的云ERP，可实现会员卡、线上商城等不同产品之间的数据无缝对接。</p>
	        <p>商家无需为跨平台数据无法互通而烦恼，使用更加的方便。而且还有各式各样微营销工具让商家使用，</p>
	        <p>为商家提供线上线下全流程服务。</p>	    
	      </div>
	      <div class="car-home-choice-box-pic">
	        <img src="../images/choice1.png" id="choice1-1" class="animated" style="opacity: 0;width:30%"/>
	        <img src="../images/choice0.png" id="choice0" class="animated" style="opacity: 0;width:70%;"/>
<!-- 	        <img src="../images/choice1-1.png" id="choice1" class="animated" style="opacity: 0;"/> -->
<!-- 	        <img src="../images/choice1-2.png" id="choice2" class="animated" style="opacity: 0;"/> -->
<!-- 	        <img src="../images/choice1-3.png" id="choice3" class="animated" style="opacity: 0;"/> -->
<!-- 	        <img src="../images/choice1-4.png" id="choice4" class="animated" style="opacity: 0;"/> -->
<!-- 	        <img src="../images/choice1-5.png" id="choice5" class="animated" style="opacity: 0;"/>	                -->
	      </div>
	    </div>
	  </div>
	</div>
	<div class="section" id="section5">
		<div class="car-home-scanning animated">
	    <div class="car-home-scanning-box">
	      <h1 class="car-txt1 animated" style="opacity: 0;">一点都不麻烦，和玩手机一样简单</h1>
	      <span class=" animated" style="opacity: 0;" id="scanning-span">
	        <p>为了让门店能更灵活地提供服务，让管理者更便捷的查看数据，并且适应用户对移动设备的使用习惯。</p>
	        <p>车小算配备了相应的手机端、微信小程序端应用，实现店员移动化办公、老板随时随地查看数据报表、</p>
	        <p>用户打开手机即可使用的移动化体验</p>	    
	      </span>
	      <div class="car-home-scanning-box-pic animated" style="opacity: 0;">
	        <img src="../images/car-ind8.png" style="width:38%;"/>
	        <img src="../images/car-ind8-1.png" id="ind1" class="animated" style="opacity: 0;"/>
	        <img src="../images/car-ind8-2.png" id="ind2" class="animated" style="opacity: 0;"/>
	        <img src="../images/car-ind8-3.png" id="ind3" class="animated" style="opacity: 0;"/>
	        <img src="../images/car-ind8-4.png" id="ind4" class="animated" style="opacity: 0;"/>
	        <img src="../images/car-ind8-5.png" id="ind5" class="animated" style="opacity: 0;"/>
	        <img src="../images/car-ind8-6.png" id="ind6" class="animated" style="opacity: 0;"/>
	        <img src="../images/car-ind8-7.png" id="ind7" class="animated" style="opacity: 0;"/>
	        <div class="car-home-scanning-box-pic point"></div>	        
	      </div>
	    </div>
	  </div>
	</div>
	<div class="section" id="section6">
		<div class="car-home-animation">
	    <div class="car-home-animation-box">
	      <h1 class="car-txt2 animated" style="opacity: 0;">不会用没关系，我们教你</h1>
	      <div class="car-home-animation-span animated" style="opacity: 0;">
	        <p>车小算的MG动画、现实场景视频、实操演示等一系列的培训视频免费为用户提供；</p>
	        <p>而且还有专业的培训师提供培训，帮助商家快速上手；专业的售后客服7*24小时地为你提供服务，</p>
	        <p>第一时间帮你解决问题。</p>	    
	      </div>
	      <div class="car-home-animation-box-pic animated" style="opacity: 0;">
	         <img src="../images/mg.png" style="width: 45%;"/>
	         <p class="car-home-animation-title">点击播放键播放视频</p> 
	         <div class="car-home-animation play">
	            <a href="javascript:WSFUNCTION.videoFrame('http://v.qq.com/iframe/player.html?vid=y0503lythmm&auto=0&tiny=0&auto=0');"><img src="../images/mg1.png"/></a>
	           <div class="gt-halo-box">
				 <div class="gt-halo"></div>
				 <div class="gt-halo-big enlarge"></div>
				</div>	
	         </div>
	         <div class="car-home-animation stration">
	            <a href="#"><img src="../images/mg2.png"/></a>
	            <div class="gt-halo-box" style="margin-left: 47%;margin-top: -8%;">
				  <div class="gt-halo"></div>
				  <div class="gt-halo-big enlarge"></div>
				</div>		         
	         </div>
	         <div class="car-home-animation scene">
	            <a href="javascript:;"><img src="../images/mg3.png"/></a>
	            <div class="gt-halo-box">
				  <div class="gt-halo"></div>
				  <div class="gt-halo-big enlarge"></div>
				</div>	         
	         </div>            
	      </div>
	    </div>
	  </div>
	</div>
</div>


<script src="../js/lib/wave.js"></script>
<script type="text/javascript" src="../js/jquery.fullPage.min.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script src="../js/lib/halo.js"></script>  
<script>
	var wave = new Wave('wave');
</script>  
<script>
  var halo = new Halo('.enlarge',1000,28);
</script>
</body>
</html>