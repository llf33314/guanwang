<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>成功案例</title>
    <link rel="Shortcut Icon" href="/images/alogo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../css/bigStyle.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.min.css" />
	<script src="../js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript">
		var access_num = 2; 
	</script>
</head>
<body>
		<%@include file="/html/BigWhite/html/common/banner.jsp" %>
	  <div class="big-banner">
	    <canvas id="myCanvas" style="width:100%;height: 390px;"></canvas>
	     <img src="../images/big2-1.png" style="position: absolute;top: 64px;left: 33%;" id="ban"/>
	    <div class="banner-box">
		      <img src="../images/title.png"  class="animated infinite rubberBand">
		      <div class="banner">
			        <ul class="animated infinite flip">
			            <li>让社区门诊机构连接移动互联网，实现高效的智能化管理</li>
			            <li>以“医疗云数据中心”为核心，打造最优化的社区医疗服务体系</li>
			        </ul>
			        <div class="img-btn-list"></div>
			   </div>
	    </div>
	  </div>
	  <div class="big-clinic">
	       <div class="big-clinic-box">
	         <img src="../images/care1.png" style="position: relative;top: 49px;left: 50%;" class="mated1 infinite zoomIn"/>
	            <div class="big-clinic-box-left">
	                 <h5 class="mated2 infinite zoomInRight">普仁诊所</h5>
		             <p style="text-indent: 2em;" class="mated2 infinite zoomInRight">普仁诊所是一家小型的私人诊所，平时除了为社区患者提供医疗服务之外，还开展药品零售业务，而且还建立了自己的线上药店，让社区居民可以线上购买一些日常需要的药品，可是让诊所最为头痛的是，
		             线上药店开通后，由于线上线下数据无法同步，时常出现药品缺货现象，造成库存管理困难，影响诊所的日常运营</p>
		             <img src="../images/care3.png" style="width:277px;height:277px;margin-right: 35px;" class="mated3 infinite zoomInRight" id="zz1"/>
                </div>
                <div class="big-clinic-box-right">
		            <img src="../images/care2.png" style="margin-left: 35px;" class="mated3 infinite zoomInLeft" id="zz2"/>
		            <h5 class="mated4 infinite zoomInLeft">使用效果</h5>
		            <p style="margin-top: 75px;text-indent: 2em;" class="mated4 infinite zoomInLeft">大白ERP系统配备智能化的药品管理系统，采用扫码的方式轻松完成药品入库，而且门诊可以选择是否将数据实时同步到线上药店，药品库存告急时系统将自动提示，帮助社区门诊实现药品库存的轻松管理，
		            使用大白ERP系统后，普仁诊所不再需要担心库存问题，而且针对不同的季节有针对性地进行营销，线上药店销售业绩同比增长93% </p>		            
                </div>
	       </div>    
	  </div>
	  <div class="big-west">
	       <div class="big-west-box animated"> 
	            <div class="big-west-box-left animated" style="opacity: 0;">
	                 <h5>使用效果</h5>
	                 <p style="text-indent: 2em;">大白ERP智能化前台帮助工作人员快速完成挂号、预约等操作，大大缩短了就医者排队等待的时间。而且大白ERP还支持患者通过手机端以及小程序端线上直接预约挂号，
	                 实现有效分流，大大减少排队人数。除此之外，大白ERP还支持现金、银联支付、扫码支付等多种诊金支付方式，患者直接线上搞定、无需反复缴费排队。
	                 瑞康中西医门诊部接待能力大大提升，日接待人数同比增长57%。而且更加智能和快速的服务、更好地就医体验为瑞康中西医门诊部赢得了更好的口碑，再加上多粉专业运营团队的帮助下，针对性地开展线上营销活动，门诊会员人数半年内增长了2000+
	                 </p>
	            </div>
	            <div class="big-west-box-right animated" style="opacity: 0;">
<!-- 	               <img src="../images/west1.png" style="width:100%;" id="bb3" > -->
	               <div class="big-west-box-body animated" style="opacity: 0;">
	                 <h6 style="font-size:24px;">瑞康中西医门诊部</h6>
	                 <p>瑞康中西医门诊部采用传统ERP系统，虽然能满足基本的需求。</p>
	                 <p>但是由于就医人数过多，就医流程繁琐、低效等多方面的原因，造成</p>
	                 <p>就诊高峰期时排队现象严重。常常需要加派人手，服务质量无法兼顾</p>
	              </div>
	            </div>      
	       </div>
	  </div>
      <div class="big-service">
           <div class="big-service-box"> 
               <div class="big-service-top">       
	                <div class="big-service-top-left animated" style="opacity: 0;" id="service1">
	                    <img src="../images/west2.png" style="width:100%" id="bb1"/>
	                </div>
	                <div class="big-service-top-right animated" style="opacity: 0;" id="service2">
	                     <h5>众康门诊服务部</h5>
	                     <p style="text-indent: 2em;">众康门诊服务部是一家小型社区门诊医疗服务机构，每天都要超负荷地为患者提供就诊服务。但是由于现在使用着的医疗系统中还是使用纸质的化验报告，
	                     患者常常发生遗漏，医生无法通过查看患者以往病例进行快速、精确诊断，大大降低问诊效率。而且由于缺乏交流渠道，患者无法及时进行咨询或者问题反馈，只能再去医院排队就医，严重影响医院的运营效率 。
	                     而且由于众康门诊服务部的日常运营数据比较多，但传统的ERP中无法进行数据的自动统计分析，数据无法随时查看，不利于院方管理层实时掌握门诊运营</p>
	                </div>
              </div>
              <div class="big-service-top" style="margin-top:5px;">       
	                <div class="big-service-top-left animated" style="opacity: 0;" id="service3">
	                    <img src="../images/west3.png" style="width:100%" id="bb2"/>
	                </div>
	                <div class="big-service-top-right animated" style="opacity: 0;" id="service4">
	                     <h5>使用效果</h5>
	                     <p style="text-indent: 2em;">大白ERP系统直接连通硬件设备，结果出来后系统自动将各类的化验报告、检验单的相关数据同步到ERP系统，系统自动建立个人电子健康档案。
医生直接在PC端查看患者个人健康档案，快速问诊，提高运营效率。在同样的工作时间内，医生问诊效率提高43%，为众康门诊服务部带来了36%的营业收入增长量。而且大白ERP还为众康门诊服务部提供了便捷的医患沟通渠道，患者可在微信以及小程序端直接线上咨询医生。
医生也可以在PC或手机端快速回复患者的诊后的问题反馈，改善医患关系。除此之外，大白ERP系统还能实现数据自动统计、自动生成报表，管理层可以随时通过PC端、微信端、以及小程序查看销售数据，医生问诊数据等情况</p>
	                </div>
              </div>        
           </div>   
      </div>
      <div class="car-more animated">
		     <h1 class="animated"  id="more-txt" style="opacity: 0;">更多的社区门诊正在使用大白ERP</h1>
		     <ul class="car-more-box">
			      <li class="animated" id="more-pic1" style="opacity: 0;"><img src="../images/ss1.png" style="width:100%"></li>
			      <li class="animated" id="more-pic2" style="opacity: 0;"><img src="../images/ss2.png" style="width:100%"></li>
			      <li class="animated" id="more-pic3" style="opacity: 0;"><img src="../images/ss3.png" style="width:100%"></li>
			      <li class="animated" id="more-pic4" style="opacity: 0;"><img src="../images/ss4.png" style="width:100%"></li>
			      <li class="animated" id="more-pic5" style="opacity: 0;"><img src="../images/ss5.png" style="width:100%"></li>
		     </ul>
		     <ul class="car-more-box" style="margin-top: -60px;">
			      <li class="animated" id="more-pic6" style="opacity: 0;"><img src="../images/ss6.png" style="width:100%"></li>
			      <li class="animated" id="more-pic7" style="opacity: 0;"><img src="../images/ss7.png" style="width:100%"></li>
			      <li class="animated" id="more-pic8" style="opacity: 0;"><img src="../images/ss8.png" style="width:100%"></li>
			      <li class="animated" id="more-pic9" style="opacity: 0;"><img src="../images/ss9.png" style="width:100%"></li>
		      </ul>
		     <ul class="car-more-box"  style="margin-top: -60px;">
		          <li class="animated" id="more-pic10" style="opacity: 0;"><img src="../images/ss10.png" style="width:100%"></li>		     
		     </ul>
		</div>
      <%@include file="/html/BigWhite/html/common/footer.jsp" %>

<script src="../js/index.js"></script>
<script src="../js/one/jquery.js"></script>
<script src="../js/one/bannerList.js"></script>
    <script>
		bannerListFn(
		    $(".banner"),
		    $(".img-btn-list"),
		    $(".left-btn"),
		    $(".right-btn"),
		    2000,
		    true
		);
    </script>
</body>
</html>