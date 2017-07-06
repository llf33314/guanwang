<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉 · 连接粉丝，连接世界！提供微信营销应用，众多行业SaaS ERP解决方案！</title>
<meta name="keywords" content="微营销,微信营销,微信代运营,微信定制开发,微信营销软件,微信推广平台,微信营销平台,微信代运营套餐,智慧酒店"/> 
<meta name="description" content="多粉是国内专业领先的微信第三方开发平台，提供微信小程序、微信商城、微信分销系统、H5游戏等功能开发及代运营服务，全方位智慧行业SaaS ERP解决方案。"/>
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<link rel="stylesheet" href="/html/css/fans.css">
<link rel="stylesheet" href="/html/css/animate.css" />
<script src="/html/js/iconfont.js"></script>
<script src="/html/js/index.js"></script>
<script src="/html/js/jj/jquery-1.11.0.min.js"></script>
<script src="/html/js/jj/jquery.vm-carousel.js"></script>
<script src="/html/js/jj/modernizr.js"></script>
<style type="text/css">
	.icon-list-wrap em{cursor: pointer;}
	.popup_dialog_ft{
	display:block
	}
</style>
<script>
$(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();         
         if(scrollTop >0 && scrollTop < 1665){     
        	 $(".construct").find(".construct-left").addClass("fadeInUp");
        	 $(".construct").find(".construct-right").addClass("fadeInUp");
        	 setTimeout(function(){
                 $(".construct").find("#id1").addClass("fadeInRight");
              },600);
             setTimeout(function(){
                 $(".construct-left").find("#id3").addClass("fadeInDown");
              },500);
             setTimeout(function(){
                $(".construct-left").find("#id4").addClass("fadeInLeft");
             },800);
             setTimeout(function(){
                 $(".construct-left").find("#id5").addClass("fadeInDown");
              },1300);
             setTimeout(function(){
                 $(".construct-right").find(".construct-box").addClass("fadeInUp");
              },600);
             setTimeout(function(){
                 $(".construct-right").find(".con-box").addClass("fadeInUp");
              },1000);
             setTimeout(function(){
                 $(".construct-right").find("#con2").addClass("rotateIn rotateIn");
              },1400);
             setTimeout(function(){
                 $(".construct-right").find("#con4").addClass("fadeInUp");
              },1800);
             setTimeout(function(){
                 $(".construct-right").find(".con-box-small").addClass("fadeInUp");
              },2200);
             setTimeout(function(){
                 $(".construct-right").find("#con6").addClass("bounceIn rotateIn");
              },2600);
             setTimeout(function(){
                 $(".construct-right").find("#con5").addClass("bounceIn");
              },2800);
             setTimeout(function(){
                 $(".construct-right").find("#con12").addClass("bounceIn");
              },600);
             setTimeout(function(){
                 $(".construct-right").find("#con13").addClass("bounceIn");
              },1000);
             setTimeout(function(){
                 $(".construct-right").find("#con11").addClass("bounceIn");
              },1400);
             setTimeout(function(){
                 $(".construct-right").find("#con14").addClass("bounceIn");
              },1800);
             setTimeout(function(){
                 $(".construct-right").find("#con15").addClass("bounceIn");
              },2200);
             setTimeout(function(){
                 $(".construct-right").find("#con16").addClass("bounceIn");
              },2600);
             setTimeout(function(){
                 $(".construct-right").find("#con17").addClass("bounceIn");
              },3000);
             setTimeout(function(){
                 $(".construct-right").find("#id7").addClass("fadeInDown");
              },1000);            
         }

    });
});
jQuery(function($){
	  $('.vmcarousel-centered').vmcarousel({
		 centered: true,
		 start_item: 2,
		 autoplay: false,
		 infinite: false
	  });

	  $('.vmcarousel-centered-infitine').vmcarousel({
		 centered: true,
		 start_item: 1,
		 autoplay: false,
		 infinite: true
	  });

	  $('.vmcarousel-normal').vmcarousel({
		 centered: false,
		 start_item: 0,
		 autoplay: false,
		 infinite: false
	  });
 });

</script>
<script type="text/javascript">
	$.cookie("clearfix_selected", '', {path:'/'});
	$.cookie("clearfix_selected_child", '', {path:'/'});
	var bg_ind = 1;
</script>
<script>

</script>
</head>

<body style="display: none;">
<div style="display: none;">
	<img alt="" src="/html/images/index_logo.jpg">
</div>
<div class="wrap index index2017">
     <div class="toper-wrap">
         <%@include file="/html/common/clearfix.jsp" %>

         <div id="banner" class="focusad">
             <ul>
                 <%-- <li style="height: 406px; background-image: url(${imageUrl}/tuiguan/banner.jpg);"><a href="/html/promotion.jsp"><img src="${imageUrl}/tuiguan/banner.jpg" style="display:none"></a></li>
                 <li><a href="#"><img lazy_src="${imageUrl}/banner1.jpg"></a></li>
                 <li><a href="#"><img lazy_src="${imageUrl}/banner3.jpg"></a></li> --%>
             </ul>
         </div>
     </div>

     <div class="notice">
          <div class="wrap1200">
               <span class="fl t"><em class="sys_cion"></em>最新公告</span>
               <div class="msg" id="notice_msg">
                   <ul class="pr">
                       <li><a href="#"><span></span>多粉新官网上线了</a></li>
                       <li><a href="#"><span></span>比粤语更难懂的方言 广东水质最好沙滩</a></li>
                       <li><a href="#"><span></span>为什么说香港人讨厌大陆人也是情有可原？</a></li>
                       <li><a href="#"><span></span>美苹果7概念机曝光，这才是我们想要的</a></li>
                   </ul>
               </div>
               <div class="sj_msg"><!-- 已有 <span>12403</span> 商家入驻，今日入驻 <span>178</span> 位 --></div>
          </div>
     </div>
     <div class="construct animated" >
       <h1 id="id1" class="mated1 infinite  fadeInUp" style="opacity: 0;">构建商家自有生态圈，进入一个无疆界的竞合时代</h1>
       <div class="construct-left ">
          <img src="/html/images/new1.png" class="mated1 infinite fadeInLeftBig" style="opacity: 0;">
          <h3 id="id3" class="mated2 infinite fadeInUp" style="opacity: 0;">围绕MIUI系统，打造智能家居生态系统</h3>
          <img src="/html/images/new2.png" id="id4" class="mated3 infinite fadeInLeftBig" style="opacity: 0;">
          <h3 id="id5" class="mated4 infinite fadeInUp" style="opacity: 0;">围绕媒体资讯，构建移动新媒体生态</h3>    
       </div>
       <div class="construct-right animated fadeInUp">
          <h3 id="id6" class="animated fadeInDown" style="opacity: 0;">“生态”不再是独角兽企业的专利</h3>
          <div class="construct-box animated fadeInUp" style="opacity: 0;"> 
               <img src="/html/images/c1.png" id="con1" >
               <div class="con-box animated fadeInUp" style="opacity: 0;">
                    <img src="/html/images/c2-1.png" id="con3">
               </div>
               <div class="con-box-small animated fadeInUp" style="opacity: 0;" >
                    <img src="/html/images/c6.png" id="con6" class="mated3 infinite bounceIn rotateIn" style="opacity: 0;">
                    <img src="/html/images/c6-1.png" id="con8">
               </div>
                    <img src="/html/images/c2.png" id="con2" class="mated3 infinite rotateIn" style="opacity: 0;">
		            <img src="/html/images/c4.png" id="con4" class="mated2 infinite fadeInUp" style="opacity: 0;">
		            <img src="/html/images/c5.png" id="con5" class="animated bounceIn" style="opacity: 0;">
		            <img src="/html/images/c11.png" id="con11" class="animated" style="opacity: 0;">
		            <img src="/html/images/c12.png" id="con12" class="animated" style="opacity: 0;">
		            <img src="/html/images/c13.png" id="con13" class="animated" style="opacity: 0;">
		            <img src="/html/images/c14.png" id="con14" class="animated" style="opacity: 0;">
		            <img src="/html/images/c15.png" id="con15" class="animated" style="opacity: 0;">
		            <img src="/html/images/c16.png" id="con16" class="animated" style="opacity: 0;">
		            <img src="/html/images/c17.png" id="con17" class="animated" style="opacity: 0;">
		            <img src="/html/images/c18.png" id="con18" class="animated bounceIn rotateIn" style="opacity: 0;">
		            <img src="/html/images/c19.png" id="con19" class="animated bounceIn rotateIn" style="opacity: 0;">
		            <img src="/html/images/c20.png" id="con20" class="animated bounceIn rotateIn" style="opacity: 0;">
		            <img src="/html/images/c21.png" id="con21" class="animated bounceIn rotateIn" style="opacity: 0;">
		            <img src="/html/images/c22.png" id="con22" class="animated bounceIn rotateIn" style="opacity: 0;"b>
		            <img src="/html/images/c23.png" id="con23" class="animated bounceIn rotateIn" style="opacity: 0;">
		            <img src="/html/images/c24.png" id="con24" class="animated bounceIn rotateIn" style="opacity: 0;">
		            <img src="/html/images/c25.png" id="con25" class="animated bounceIn rotateIn" style="opacity: 0;">         
          </div>
          <h3 id="id7" class="animated" style="opacity: 0;">多粉为商家打造自有商业生态平台</h3>         
       </div>    
     </div>     
     <div class="containter"> 
     <div class="icon-list-wrap wrap1200">
               <div class="title-wrap">
                   <h2>六大核心业务，一站式互联网解决方案</h2>
               </div>
               <div class="content-wrap clearfix">
                   <ul class="clearfix">
                        <li>
                            <img src="${imageUrl}/index2017/index_03.jpg"/>
                            <em onclick="location.href='/html/weixinSell.jsp'">微信营销</em>
                            <p><span>包含订阅号、服务号<br/>
                               提供公众号功能和小程序的定制开发<br/>
                               基础搭建、运营、推广等全系列微信营销方案</span>
                            </p>
                            <a href="/html/weixinSell.jsp">查看详情</a>
                        </li>
                        <li>
                            <img src="${imageUrl}/index2017/index_05.jpg"/>
                            <em onclick="location.href='/html/weixinapp.jsp'">微信小程序</em>
                            <p><span>操作简单、功能实用、丰富有趣的小程序<br/>
                               有效提高商家访问量、回访率、转化率<br/>
                               为您的营销增添动力</span>
                            </p>
                            <a href="/html/weixinapp.jsp">查看详情</a>
                        </li>
                        <li>
                            <img src="${imageUrl}/index2017/index_07.jpg"/>
                            <em onclick="location.href='/html/wcy.jsp'">微信行业应用</em>
                            <p><span>涵盖餐饮、酒店、美容等十多个行业<br/>
                               商家运营效率高，省时省力，降低成本<br/>
                               提高消费体验，让用户做您的最佳宣传者</span>
                            </p>
                            <a href="/html/wcy.jsp">查看详情</a>
                        </li>

                        <li>
                            <img src="${imageUrl}/index2017/index_12.jpg"/>
                            <em onclick="location.href='/html/fansNest.jsp'">粉巢系统</em>
                            <p><span>包含微信端、电脑端、手机端<br/>
                               十多个行业的网站模板自由选择<br/>
                               账号、会员卡、优惠券、订单数据无缝同步对接<br/>
                               支持个性化绑定域名</span>
                            </p>
                            <a href="/html/fansNest.jsp">查看详情</a>
                        </li>
                        <li>
                            <img src="${imageUrl}/index2017/index_13.jpg"/>
                            <em onclick="location.href='/html/erp.jsp'">SaaS ERP管理系统</em>
                            <p><span>基于多粉强大的云计算平台<br/>
                               提供十多个行业的SaaS ERP选择<br/>
                               支持数据导出本地保存<br/>
                               结合跨平台系统，所有数据无缝对接</span>
                            </p>
                            <a href="/html/erp.jsp">查看详情</a>
                        </li>
                        <li class="omg">
                            <img src="${imageUrl}/index2017/index_14.jpg"/>
                            <em onclick="location.href='/html/BusinessAlliance/html/index.jsp'">商家联盟</em>
                            <p><span>整合客户资源<br/>
                               让商家互相推荐商机、共享优惠<br/>
                               打造移动互联网时代下<br/>
                               新零售的颠覆性创新理念</span>
                            </p>
                            <a href="/html/BusinessAlliance/html/index.jsp">查看详情</a>
                        </li>
                   </ul>
               </div>
          </div>
           
        <div class="package-wrap">
               <div class="title-wrap">
                   <h2>选择中意的套餐</h2>
                   <a href="/html/newCombo.jsp">更多套餐</a>
               </div>
                <div class="content-wrap clearfix" id="meal_set">
                   <!--<div class="item-wrap">
                        <div class="item-main-wrap">
                           <div class="icon-wrap"><span>基础版</span></div>
                           <div class="top-wrap">
                               <div class="price"><span>￥570</span>/年</div>
                               <div class="desc"><span>基础版<i>*</i></span>全程人工协助</div>
                               <a href="#" class="base_abtn">立即购买</a>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span>微官网</span></li>
                                   <li><span>微官网</span></li>
                                   <li><span>微官网</span></li>>
                                   <li><span>微官网</span></li>
                                   <li><span>微官网</span></li>
                                   <li><span>自定义菜单</span></li>
                                   <li><span>自动回复</span></li>
                                   <li><span>图文素材库</span></li>
                                   <li><span>一键拨号</span></li>
                                   <li><span>数据分析</span></li>
                                   <li><span>群发功能</span></li>
                                   <li><span>会员系统</span></li>
                                   <li><span>H5游戏</span></li>
                               </ul>
                               <a href="/html/newCombo.jsp" class="more">查看详情</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap">
                       <div class="item-main-wrap">
                           <div class="icon-wrap"><span>升级版</span></div>
                           <div class="top-wrap">
                               <div class="price"><span>￥1380</span>/年</div>
                               <div class="desc"><span>升级版<i>*</i></span>全程人工协助</div>
                               <a href="#" class="base_abtn">立即购买</a>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span>微官网</span></li>
                                   <li><span>会员系统</span></li>
                                   <li><span>微场景</span></li>
                                   <li><span>优惠劵</span></li>
                                   <li><span>推广工具</span></li>
                                   <li><span>微商城</span></li>
                                   <li><span>互动游戏</span></li>
                                   <li><span>行业版应用</span></li>
                                   <li><span>免费提供POS机</span></li>
                                   <li><span>支付工具</span></li>
                               </ul>
                               <a href="/html/newCombo.jsp" class="more">查看详情</a>
                           </div>
                        </div>
                   </div> 
                   <div class="item-wrap">
                        <div class="item-main-wrap">
                           <div class="icon-wrap"><span>高级版</span></div>
                           <div class="top-wrap">
                               <div class="price"><span>￥2580</span>/年</div>
                               <div class="xjb">（性价比最高）</div>
                               <div class="desc"><span>高级版<i>*</i></span>全程人工协助</div>
                               <a href="#" class="base_abtn">立即购买</a>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span>微官网</span></li>
                                   <li><span>优惠劵</span></li>
                                   <li><span>会员系统</span></li>
                                   <li><span>分销系统</span></li>
                                   <li><span>推广工具</span></li>
                                   <li><span>互动游戏</span></li>
                                   <li><span>微商城</span></li>
                                   <li><span>分销系统</span></li>
                                   <li><span>免费提供POS机</span></li>
                                   <li><span>微信小程序</span></li>
                                   <li><span>SaaS ERP单店版</span></li>
                                   <li><span>粉巢系统</span></li>
                               </ul>
                               <a href="/html/newCombo.jsp" class="more">查看详情</a>
                           </div>
                        </div>
                   </div>
                   <div class="item-wrap">
                        <div class="item-main-wrap">
                           <div class="icon-wrap"><span>至尊版</span></div>
                           <div class="top-wrap">
                               <div class="price"><span>￥4980</span>/年</div>
                               <div class="desc"><span>至尊版<i>*</i></span>全程人工协助</div>
                               <a href="#" class="base_abtn">立即购买</a>
                           </div>
                           <div class="cont-wrap">
                               <ul class="clearfix">
                                   <li><span>微官网</span></li>
                                   <li><span>优惠劵</span></li>
                                   <li><span>会员系统</span></li>
                                   <li><span>分销系统</span></li>
                                   <li><span>推广工具</span></li>
                                   <li><span>互动游戏</span></li>
                                   <li><span>微商城</span></li>
                                   <li><span>分销系统</span></li>
                                   <li><span>免费提供POS机</span></li>
                                   <li><span>微信小程序</span></li>
                                   <li><span>SaaS ERP单店版</span></li>
                                   <li><span>粉巢系统</span></li>
                               </ul>
                               <a href="/html/newCombo.jsp" class="more">查看详情</a>
                           </div>
                        </div>
                   </div> -->
               </div>
          </div>
          <div class="erp-solution-wrap">
               <div class="title-wrap">
                   <h2>SaaS ERP行业解决方案</h2>
                   <p>基于多粉强大的云计算平台，提供十多个行业的SaaS ERP选择<br/>从线上到线下双线覆盖提供全面有效、针对性的营销方案，系统地推广，助您建立成熟的营销体系</p>
               </div>
               <div class="content-wrap">
               <div class="content-wrap clearfix wrap1200">
                   <div class="slide-wrap ">
                        <li style="display: block;zoom: 1;"><img src="/html/images/sy1.png" class="block"></li>
                        <ul class="clearfix vmcarousel-centered-infitine vmc-centered" style="height: 375px;overflow: hidden;">                       
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy2.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st1.png" >
                                    <em>小馋猫</em>
                                    <span>智慧餐饮解决方案</span>
                                    <a href="/html/LittleGreedyCat/html/index.jsp">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy3.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st2.png">
                                    <em>小驿</em>
                                    <span>智慧酒店解决方案</span>
                                    <a href="/html/smarty_hotel.jsp">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy4.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st3.png">
                                    <em>揽胜家园</em>
                                    <span>物业管理解决方案</span>
                                    <a href="/html/wuye.jsp">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy5.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st4.png">
                                    <em>车小算</em>
                                    <span>汽车美容解决方案</span>
                                    <a href="/html/CarCount/html/index.jsp">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy6.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st5.png">
                                    <em>样子</em>
                                    <span>美容美发解决方案</span>
                                    <a href="/html/demo.jsp">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy8.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st6.png">
                                    <em>大白</em>
                                    <span>社区医疗解决方案</span>
                                    <a href="html/BigWhite/html/index.jsp">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy9.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st7.png">
                                    <em>来店</em>
                                    <span>智慧商超解决方案</span>
                                    <a href="javascript:;"">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy10.png" class="block">
                               <div class="txt-wrap" style="width: 240px !important;">
                                    <img src="/html/images/st8.png">
                                    <em>存销宝</em>
                                    <span>智慧进销存解决方案</span>
                                    <a href="javascript:;"">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy11.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st9.png">
                                    <em>小盼</em>
                                    <span>智慧教育解决方案</span>
                                    <a href="javascript:;"">查看详情</a>
                               </div>
                            </li>
                            <li style="width: 240px !important;">
                               <img src="/html/images/sy12.png" class="block">
                               <div class="txt-wrap">
                                    <img src="/html/images/st10.png">
                                    <em>再途</em>
                                    <span>智慧旅游解决方案</span>
                                    <a href="javascript:;"">查看详情</a>
                               </div>
                            </li>
                        </ul>
                        <li style="display: block;float: right;position: relative;bottom: 375px;">
                            <img src="/html/images/sy7.png" class="block">
                        </li>
                   </div>
               </div>
               </div>
          </div>
          <div class="myad animate_ad" style="background:url(${imageUrl}/index2017/myad.jpg) no-repeat center top">
             <div class="wrap1200">
                 <div class="t100">
                    0
                 </div>
                 <div class="t150">
                    0
                 </div>
                 <div class="t724">
                    <span>0</span>*<span>0</span>
                 </div>
                 <div class="t1">服务案例</div>
                 <div class="t2">客户逐年增长率</div>
                 <div class="t3">24小时客户服务</div>
             </div>
          </div>
          <div class="news wrap1200 clearfix">
              <div class="news_main">
                 <div class="common_tit tgc_tit clearfix">
                      <strong class="fl">热门动态</strong>
                      <span class="fl">News</span>
                  </div>  
                  <div class="tabbox">
                      <div class="bh">
                          <ul class="clearfix">
                              <li class="selected"><a href="javascript:;">行业动态</a></li>
                              <li><a href="javascript:;">产品更新</a></li>
                              <li><a href="javascript:;">公司新闻</a></li>
                          </ul>
                      </div>
                      <div class="bd">
                          <div class="cont selected">
                              <ul class="clearfix" id="article_dynamic">
                              </ul>
                              <a href="/html/product-trends/product-news.jsp" class="more">查看全部</a>
                          </div>
                          <div class="cont">
                              <ul class="clearfix" id="article_product">
                              </ul>
                              <a href="/html/product-trends/product-news.jsp?type=1" class="more">查看全部</a>
                          </div>
                          <div class="cont">
                              <ul class="clearfix" id="article_new">
                              </ul>
                              <a href="/html/product-trends/product-news.jsp?type=0" class="more">查看全部</a>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="vedio_main">
                   <div class="common_tit tgc_tit clearfix">
                      <strong class="fl">沙龙</strong>
                      <span class="fl">Salon</span>
                      <p>互动、交流、学习、专注为客户分享更精彩的营销策略</p>
                  </div>
                  <div class="vedio"><a href="/html/product-trends/product-video.jsp"><img src="${imageUrl}/index2017/vedio1.jpg"/></a></div>
              </div>
          </div> 


<div style="display: none" class="popup_dialog_confirm" id="paybox">
    <div class="popup_mask"></div>
    <div class="popup_dialog">
        <svg class="icon fr iconRight closeimg" aria-hidden="true" style='margin: 10px'>
            <use xlink:href="#icon-close"></use>
        </svg>
        <div class="popup_dialog_hd">
            <div class="popup_dialog_title">
            <span>购买套餐</span>
            
            </div>
        </div>
        <div class="popup_dialog_bd">
            <ul>
                <li>              
                    <span class='label borernone'>购买套餐:</span>
	                <select id="paymeal">
	                    <option>升级版套餐</option>
	                    <option style='color:#0182de'>高级版套餐（推荐）</option>
	                    <option>至尊版套餐</option>
	                    <option>钻石版套餐</option>
	                    <option>白金版套餐</option>
	                </select>
                </li>
                <h4>提交个人信息  （专属客服为您开通账号）</h4>
                <li>                
                     <span class='label'>个人姓名:</span>
                    <input type="text"  placeholder="请输入个人姓名" id="payname" maxlength="12">
                </li>
                <li>               
                    <span class='label'>手机号码:</span>
                    <input type="text" placeholder="请输入手机号码" id="payphone" maxlength="12">

                </li>
                <li>                   
                      <span class='label borernone' style='border:none'>支付方式: </span>
                    <div class="payWay">
                        <img class="wx checkedPay" data-value="wx" src="/html/images/fans/weixin.png" alt="" pay-data="0">
                        <img class="pay" data-value="pay" src="/html/images/fans/pay.png" alt="" pay-data="1">
                    </div>
                </li>
                <div class="showpay clear">
                    <div class="fr " style="text-align: right;margin: 15px 0 0 0;">
                        <span>实付金额：</span>
                        <span><label id="pay_box_price">510</label>元</span>
                    </div>
                </div>
            </ul>
        </div>
        <div class="popup_dialog_ft">
              <p class='remindbox' id="paytip"></p>
            <div class="sumlitBtn">提交订单</div>
        </div>
    </div>
</div> 
<div style="display: none;" class="popup_dialog_confirm " id="qrcodeview">
    <div class="popup_mask"></div>
    <div class="popup_dialog">
        <svg class="icon fr iconRight closeimg" aria-hidden="true" style='margin: 10px' onclick="clearIt();">
            <use xlink:href="#icon-close"></use>
        </svg>
        <div class="popup_dialog_hd">
            <div class="popup_dialog_title">扫码支付</div>
        </div>
        <div class="popup_dialog_bd" style="text-align: center;">
        
  <p class='p-detial'>
         <span>
         <label>实付金额：<span style='color: #F85555;' id="shipay">510</span></label>
                   元</span>
         </p>
            <img alt="" src="" style="" class='imgcode'>
           <p class='p-detial'>扫一扫支付</p> 
        </div>
    </div>
</div>
     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>
