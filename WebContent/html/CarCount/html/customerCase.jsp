<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>客户案例</title>
	<link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../css/carStyle.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
    <script src="../js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript">
		var access_num = 3; 
	</script>
</head>
<body>
<%@include file="/html/CarCount/html/common/banner.jsp" %>

<div id="myContainer" class="gt-mouse-scroll">
	<div class="section" id="section0">
		 <div class="car-auto animated">
		   <div class="car-auto-left mated1 infinite fadeInUpBig">
		     <span>
		     <h1>荣华汽车美容</h1>
		     <p>荣华汽车美容是一家传统的汽车美容门店，沿用传统的手工开单、纸质洗车卡、实体会员卡的运营模式。但由于手工进行洗车卡、会员卡记账核算时容易出错，时常与车主发生纠纷，影响门店信誉。</p>	     
		     </span>
		     <span>
		     <h1>使用效果：</h1>
		     <p>使用了车小算云ERP系统后，荣华汽车美容再也不用手工记账，直接通过扫码枪或手机端扫描二维码即可轻松完成核销，结算时系统自动关联车主会员卡，避免记账错误。而且车主还可以在商家的线上商城直接进行套餐及洗车卡的购买，原本旧的洗车卡转化率高达96%，洗车卡新增率达到15%，一个季度内吸引了300+的车主注册成为会员，大大提高了销售业绩。</p>	     
		     </span> 
		   </div>
		   <div class="car-auto-right">
		      <img src="../images/kh1.png" class="mated2 infinite fadeInUpBig">
		      <div class="car-auto-right-title">
			  <h2 class="mated3 infinite fadeInUpBig">96%</h2>
			  <img src="../images/kh2.png" class="mated1 infinite fadeInUpBig">
			  <p class="mated4 infinite fadeInUpBig">洗车卡转化率</p>
		      </div>
		      <div class="car-auto-right-title" style="margin-left: 60px;">
			  <h2 class="mated3 infinite fadeInUpBig">15%</h2>
			  <img src="../images/kh2.png" class="mated1 infinite fadeInUpBig">
			  <p class="mated4 infinite fadeInUpBig">洗车卡新增率</p>
		      </div>
		   </div>
		  </div>
   </div>
	<div class="section" id="section1">
	   <div class="car-carousel animated">
	     <div class="car-carousel-left">
	        <ul class="animated" style="opacity: 0;" id="carousel-ul">
	        <li class="car-carousel-left-choice" onclick="gtShow(1,this)">使用车小算前</li>
	        <li class="car-carousel-left-choice" onclick="gtShow(2,this)">使用车小算后</li>
	        </ul>
	      <div class="choice animated" style="opacity: 0;" id="carousel-ul">
		     <div style="display:block" id="id1">
		     <img src="../images/kh3.png" style="width:100%">
		     </div>
		     <div style="display:none" id="id2">
		     <img src="../images/kh4.png" style="width:100%">
		     </div>
	      </div> 	     
	     </div>
	     <div class="car-carousel-right animated" style="opacity: 0;">
	         <span>
	         <h1>爱车俱乐部</h1>
	         <p>爱车俱乐部是一家新开集汽车美容与快修服务的企业，管理者希望打造智能互联网化的行业新模式。车主能在手机上直接完成预约、违章代办、年审代办、保险购买、订货寄存、拖车救援等各式服务。最重要的是能结合移动互联网开展营销，现在的人已经习惯了使用手机进行消费，如果不能结合移动互联网进行营销，那必然会失去大量的线上客户资源。</p>	     
	         </span>
	         <span>
	         <h1>使用效果：</h1>
	         <p>经过仔细的市场考察，爱车俱乐部最后还是选择了多粉开发的车小算云ERP系统。车小算智能前台除了门店开展各项业务的需求，而且店员还可以在手机端及小程序端直接开单，实现移动化办公，门店服务效率比同行高出了32%。更快的服务效率，也因此吸引了许多新车主的加入，会员月增长率同比增加了17%。</p>
             <p>除此之外，车小算能完美兼容使用多粉的其他线上互动营销产品，再加上粉巢系统和商家联盟系统的配合使用。商家线上吸引客流的同时，线下还可以通过商机互荐吸纳会员，构建商家自有生态系统。半年内全渠道吸纳的会员数目将近800个，收获颇丰 。</p>	     
	         </span>
	     </div>
	   </div>
	</div>
	<div class="section" id="section2">
     <div class="car-chain animated">
        <div class="car-chain-left animated" style="opacity: 0;">
             <span>
	         <h1>锐强汽车美容与快修连锁店</h1>
	         <p>锐强汽修是一家小有规模的汽车连锁门店，现已有5家连锁门店，每家门店都已安装了软件ERP，而且还另外建立了自己的线上商城，让车主们可以直接线上购买。但是随着业务量的增长，连锁门店之间会员数据无法同步、线上商城与线下门店数据不互通等数据无法实时同步成了管理者们头痛的问题。</p>	     
	         </span>
	         <span>
	         <h1>使用效果：</h1>
	         <p>车小算云ERP系统使用最新的云技术，能实现门店所有数据的实时同步，而且还有双系统灾备，不用担心突发情况而导致数据的损失。帮助锐强汽车美容与快修连锁店实现了门店会员数据的互通，已注册的车主可在任意门店享受自己的会员权益，无需重新注册。门店的数量及分布优势，再结合各种会员营销活动，活动期间售出1000+的会员套餐。</p>
             <p>除此之外，线上商城与线下门店商品同一价格、统一的库存管理系统，商品库存告急时系统会自动提醒，库存率降低了68%，减少库存积压，帮助企业腾出更多的流动资金。而且系统自动进行数据的统计，自动生成各项数据报表，现在管理者打开手机就可以实时查看数据，掌握门店运营情况。</p>	     
	         </span>
        </div>
        <div class="car-chain-right animated" style="opacity: 0;">
          <div class="car-chain-right-box">
	           <span class="animated" style="opacity: 0;" id="chain-txt1">95%</span>
	           <img src="../images/kh5-1.png" class="animated" style="opacity: 0;" id="chain-pic1">
	           <img src="../images/kh6.png" class="car-chain-right-box img">
	           <p class="animated" style="opacity: 0;" id="chain-p">流动资金</p>
          </div>
          <div class="car-chain-right-box">
	           <span class="animated" style="opacity: 0;" id="chain-txt2">88%</span>
	           <img src="../images/kh5-2.png" class="animated" style="opacity: 0;" id="chain-pic2">
	           <img src="../images/kh6.png" class="car-chain-right-box img">
	           <p class="animated" style="opacity: 0;" id="chain-p2">门店会员</p>
          </div>
          <div class="car-chain-right-box">
	           <span class="animated" style="opacity: 0;" id="chain-txt3">69%</span>
	           <img src="../images/kh5-3.png" class="animated" style="opacity: 0;" id="chain-pic3">
	           <img src="../images/kh6.png" class="car-chain-right-box img">
	           <p class="animated" style="opacity: 0;" id="chain-p3">线上商城</p>
          </div>
          <div class="car-chain-right-box">
	           <span class="animated" style="opacity: 0;" id="chain-txt4">47%</span>
	           <img src="../images/kh5-4.png" class="animated" style="opacity: 0;" id="chain-pic4">
	           <img src="../images/kh6.png" class="car-chain-right-box img">
	           <p class="animated" style="opacity: 0;" id="chain-p4">线下商城</p>
          </div>
        </div>
      
      </div>
	</div>
	<div class="section" id="section3">
		<div class="car-more animated">
		     <h1 class="animated" style="opacity: 0;" id="more-txt">更多的商家正在使用车小算</h1>
		     <ul class="car-more-box">
			      <li class="animated" style="opacity: 0;" id="more-pic1"><img src="../images/kh7.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic2"><img src="../images/kh8.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic3"><img src="../images/kh9.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic4"><img src="../images/kh10.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic5"><img src="../images/kh11.png"></li>
		     </ul>
		     <ul class="car-more-box" style="margin-top: -77px;">
			      <li class="animated" style="opacity: 0;" id="more-pic6"><img src="../images/kh12.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic7"><img src="../images/kh13.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic8"><img src="../images/kh14.png"></li>
			      <li class="animated" style="opacity: 0;" id="more-pic9"><img src="../images/kh15.png"></li>
		      </ul>
		     <ul class="car-more-box"  style="margin-top: -77px;">
		          <li class="animated" style="opacity: 0;" id="more-pic10"><img src="../images/kh16.png"></li>		     
		     </ul>
		     <div class="car-more-show">
		        <span style="display: inline-block;opacity: 0;" class="animated" id="more-zz1">
		        <img src="../images/kh17.png">
		        <p>荣华汽车美容</p>
		        </span>
		        <span style="display: inline-block;padding: 0 15px;opacity: 0;" class="animated" id="more-zz2">
		        <img src="../images/kh18.png">
		        <p>爱车俱乐部</p>
		        </span>
		        <span style="display: inline-block;opacity: 0;" class="animated" id="more-zz3">
		        <img src="../images/kh19.png">
		        <p>锐强汽车美容与快修连锁店</p>
		        </span>		        
		     </div>
		
		</div>
	</div>
</div>

<script>
function gtShow(id,t){
	$('.choice').find('#id'+id).show().siblings('div').hide();
}
</script>
<script type="text/javascript" src="../js/jquery.fullPage.min.js"></script>
<script src="../js/case.js"></script>   
</body>
</html>