<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>功能展示</title>

    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../css/carStyle.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
    <script type="text/javascript" src="../js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="../js/three.min.js"></script>
    
    <script type="text/javascript">
		var access_num = 1; 
	</script>
    <script type="text/javascript">
    $(function(){
         var time = window.setInterval(function(){
         	  if($(".ct-erp").find(".xg-wrap").hasClass("show")){
         	  	   $(".ct-erp").find(".xg-wrap").removeClass("show");
         	  	   $(".ct-erp").find(".xg-wrap").find("img").eq(0).removeClass("show");
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(5).removeClass("show");},100);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(4).removeClass("show");},200);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(3).removeClass("show");},300);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(2).removeClass("show");},400);
         	  }
         	  else{
         	  	   $(".ct-erp").find(".xg-wrap").addClass("show");
         	  	   $(".ct-erp").find(".xg-wrap").find("img").eq(0).addClass("show");
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(2).addClass("show");},100);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(3).addClass("show");},200);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(4).addClass("show");},300);
         	  	   setTimeout(function(){$(".ct-erp").find(".xg-wrap").find("img").eq(5).addClass("show");},400);
         	  }
         },2000);


         $("#section2").find("nav a").click(function(e){
              e.preventDefault();
              var _index = $(this).index();
              $(this).addClass("selected").siblings().removeClass("selected");
              $("#section2").find(".conts-wrap").find(".cont-wrap").eq(_index).show().siblings().hide();
         });

    });
    </script>
</head>
<body>
<%@include file="/html/CarCount/html/common/banner.jsp" %>

<div id="myContainer" class="gt-mouse-scroll">
	<div class="section" id="section-ts">
		<div class="banner relative">
             <div style=" height: 532px;" id="fd-banner"></div>
             <h2 class="top-h">车小算</h2>
             <em class="top-em">开启互联网+的大门，构建线上+线下全渠道营销闭环</em>
        </div>
 
        <div class="reservation-service ">
             <div class="wrap-1200 relative" id="wrap1">
                  <h2 class="absolute h21 top-h mated2 infinite fadeInUpBig" style="opacity: 0;">预约服务，打开微信就可以了</h2>
                  <em class="absolute desc desc1 top-em mated3 infinite fadeInUpBig" style="opacity: 0;">线上预约功能，车主可通过微信在线上预约维修、保养等事项；<br/>更高的运营效率，让商家能为更多的车主提供服务，带来更大的效益。</em>
                  <img src="../images/ts/iphone1.png" class="absolute iphone1 mated1 infinite fadeInLeftBig" style="opacity: 0;"/>
                  <span class="blue-line line1 absolute animated" style="opacity: 0;"></span>
                  <span class="blue-cri cri1 absolute animated" style="opacity: 0;"></span>
                  <span class="block block1 absolute animated" style="opacity: 0;"></span>
                  <img src="../images/ts/txt1.png" class="absolute txt1 animated" style="opacity: 0;"/>

                  <h2 class="absolute h22 top-h animated" style="opacity: 0;">洗车卡扫码扣次，精确方便 </h2>
                  <em class="absolute desc desc2 top-em animated" style="opacity: 0;">微信洗车卡，车主手机打开即可使用；<br/>店员扫码核销，精准扣次，数据实时同步，不再担心扣次错误而发生纠纷。</em>
                  <img src="../images/ts/iphone2.png" class="absolute iphone2 animated" style="opacity: 0;"/>
                  <span class="blue-line line2 absolute animated" style="opacity: 0;"></span>
                  <span class="blue-cri cri2 absolute animated" style="opacity: 0;"></span>
                  <span class="block block2 absolute animated" style="opacity: 0;"></span>
                  <img src="../images/ts/txt2.png" class="absolute txt2 animated" style="opacity: 0;"/>
             </div>
        </div>

        <div class="member-crm animated">
             <div class="wrap-1200 relative animated" id="wrap2">
                 <h2 class="absolute h21 top-h animated" style="opacity: 0;" id="crm1">会员CRM+商家联盟，线上线下资源相互转化</h2>
                 <em class="absolute top-em animated" style="opacity: 0;" id="crm2">完善的会员CRM系统+商家联盟系统，<br/>通过卡券派发吸引线上会员到门店进行消费，通过线下商机相互推荐，帮助商家吸引新客户、吸纳会员。</em>
                 <img src="../images/ts/tips1.png" class="absolute tips animated" style="opacity: 0;"/>
             </div>
        </div>

        <div class="data-report wrap-1200 relative">
             <h2 class="absolute top-h top-h2 animated" style="opacity: 0;" id="report1">数据报表自动生成，你想看时它就在那里</h2>
             <em class="absolute top-em top-em2 animated" style="opacity: 0;" id="report2">门店销售、财务数据等，系统自动统计，管理者可在PC/手机端随时查看；<br/>新增客户分析、优质客户分析、会员消费分析、到店车价分析；精准的数据分析报告一一呈现，帮助商家快速制定运营决策。</em>
             <div class="bl relative">
                 <div class="absolute bg"></div>
                 <div class="item item1 selected">
                      <span class="txt">门店销售</span>
                      <span class="cri"></span>
                      <span class="icon"></span>
                 </div>
                 <div class="item item2">
                      <span class="txt">财务数据</span>
                      <span class="cri"></span>
                      <span class="icon"></span>
                 </div>
                 <div class="item item3">
                      <span class="txt">新增客户</span>
                      <span class="cri"></span>
                      <span class="icon"></span>
                 </div>
                 <div class="item item4">
                      <span class="txt">优质客户</span>
                      <span class="cri"></span>
                      <span class="icon"></span>
                 </div>
                 <div class="item item5">
                      <span class="txt">会员消费</span>
                      <span class="cri"></span>
                      <span class="icon"></span>
                 </div>
                 <div class="item item6">
                      <span class="txt">到店车价</span>
                      <span class="cri"></span>
                      <span class="icon"></span>
                 </div>
             </div>
        </div>

        <div class="data-shop">
             <div class="wrap-1200 relative">
                 <h2 class="absolute h21 top-h animated" style="opacity: 0;" id="shop1">轻松管理线下门店+线上商城，数据不分家</h2>
                 <em class="absolute top-em animated" style="opacity: 0;" id="shop2">同一平台开发，车小算云ERP系统实现与线上商城的数据互通，<br/>统一的进销存系统，数据实时同步，库存告急自动提示。商家不再需要分开管理库存，也不用分开查看数据。</em>
                 <div class="absolute xg-1">
                      <div class="absolute bg"></div>
                      <span class="absolute arrow-1"></span>
                      <span class="absolute arrow-2"></span>
                      <span class="absolute arrow-3"></span>
                      <span class="absolute txt23 txt">23%</span>
                      <span class="absolute txt53 txt">53%</span>
                      <span class="absolute txt30 txt">30%</span>
                      <span class="absolute txt-label">线上线下营销业绩</span>
                 </div>

                 <div class="absolute xg-2">
                      <span class="absolute txtA">A</span>
                      <span class="absolute txtB">B</span>
                      <span class="absolute line1"></span>
                      <span class="absolute line2"></span>
                      <span class="absolute cri1"></span>
                      <span class="absolute cri2"></span>
                      <span class="absolute cri3"></span>
                      <img src="../images/ts/xg1.png" class="absolute xg1" />
                      <img src="../images/ts/xg2.png" class="absolute xg2" />
                      <span class="label label1">线上</span>
                      <span class="label label2">线上</span>
                      <span class="absolute txt-label">线上线下互通</span>
                 </div> 
             </div>
        </div>

        <div class="more-function wrap-1200 relative animated">
            <h2 class="animated" style="opacity: 0;" id="more1">更多功能</h2>
            <ul class="clearfix animated">
                <li class="animated" style="opacity: 0;" id="clearfix1">
                <span class="animated" style="opacity: 0;" id="clearfix-txt1">套餐购买</span>
                </li>
                <li class="animated" style="opacity: 0;" id="clearfix2">
                <span class="animated" style="opacity: 0;" id="clearfix-txt2">违章代办</span>
                </li>
                <li class="animated" style="opacity: 0;" id="clearfix3">
                <span class="animated" style="opacity: 0;" id="clearfix-txt3">年审代办</span>
                </li>
                <li class="animated" style="opacity: 0;" id="clearfix4">
                <span class="animated" style="opacity: 0;" id="clearfix-txt4">保险购买</span>
                </li>
                <li class="animated" style="opacity: 0;" id="clearfix5">
                <span class="animated" style="opacity: 0;" id="clearfix-txt5">订货寄存</span>
                </li>
                <li class="animated" style="opacity: 0;" id="clearfix6">
                <span class="animated" style="opacity: 0;" id="clearfix-txt6">拖车救援</span>
                </li>
            </ul>
        </div>
	</div>
</div>
<%@include file="/html/common/footer-son.jsp" %>

<script type="text/javascript" src="../js/main.js"></script>
</body>
</html>