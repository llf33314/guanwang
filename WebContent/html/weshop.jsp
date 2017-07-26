<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微电商解决方案</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":405});
    webjs.weshop();
})
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/wshop/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containter mobileAd smartycy wshop">
          <div class="wrap1000">

             <div class="item_title">
                  <h2>传统行业经营痛点</h2>
             </div>

              <div class="item_main item_main2">
                   <ul class="clearfix">
                       <li>
                          <img src="${imageUrl}/wshop/wshop_09.jpg"/>
                          <div class="tgc_tit">
                               <strong>传统企业</strong>
                               <span>产品销售受限，缺少互联网线上宣传，实体店成本高</span>
                           </div>
                       </li>
                       <li>
                          <img src="${imageUrl}/wshop/wshop_11.jpg"/>
                          <div class="tgc_tit">
                               <strong>传统电商</strong>
                               <span>曝光量有限，精准定位目标用户难度高，缺乏互动，转化低</span>
                           </div>
                       </li>
                       <li>
                          <img src="${imageUrl}/wshop/wshop_13.jpg"/>
                          <div class="tgc_tit">
                               <strong>微商</strong>
                               <span>微商信任度低，主要依靠朋友圈刷屏曝光，个体微商囤货，供货商品易滞销</span>
                           </div>
                       </li>
                   </ul>
              </div>  

              <div class="descript">

                 <div class="acticle" id="duofeneshopsolution">
                      <strong class="atitle">多粉电商解决方案</strong>
                      <div class="pr duofenshop_solution">
                          <div class="sline"></div>
                          <div class="item item1 itop">
                              <span>接入多粉微电商，产品、服务、销售渠道化。<img src="${imageUrl}/wshop/wshop_19.jpg"/></span>
                          </div>
                          <div class="item item2 itop">
                              <span>与微信公众号完美对接，共享微信8亿微信用户，分享互动拉动二次消费。<img src="${imageUrl}/wshop/wshop_19.jpg"/></span>
                          </div>
                          <div class="item item3 ibottom">
                              <span>专业的微商城系统，建立商城新体系，助力传统行业加速转型。<img src="${imageUrl}/wshop/wshop_20.jpg"/></span>
                          </div>
                          <div class="item item4 ibottom">
                              <span>打掉平台，直接建立与消费者的联系，连接品牌和用户，社交转化为消费。<img src="${imageUrl}/wshop/wshop_20.jpg"/></span>
                          </div>
                          <div class="cril_box">
                              <span class="s1"></span>
                              <span class="s2"></span>
                              <span class="s3"></span>
                              <span class="s4"></span>
                          </div>
                      </div>  
                 </div>


                 <div class="acticle">
                      <strong class="atitle">搭建独立移动商城</strong>
                      <div class="item_main item_main1 clearfix">
                             <ul class="clearfix ">
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_23.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>店铺建设</strong>
                                         <span>支持多分店<br/>商铺建设管理</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_25.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>商品管理</strong>
                                         <span>商品分类一目<br/>了然，轻松上架</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_28.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>页面管理</strong>
                                         <span>可视化编辑<br/>自由切换页面</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_30.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>订单管理</strong>
                                         <span>收货、发货，订单<br/>状态一键管理</span>
                                     </div>
                                 </li>
                              </ul>
                              <ul class="clearfix ">
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_38.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>会员管理</strong>
                                         <span>打通会员体系，<br/>积分系统刺激消费</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_37.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>互动营销</strong>
                                         <span>提供团购、优惠券、<br/>限时秒杀等营销活动</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_39.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>消息推送</strong>
                                         <span>可不限次数向会员<br/>群发送推广消息</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/wshop/wshop_40.jpg"/>
                                    <div class="tgc_tit">
                                         <strong>微信支付</strong>
                                         <span>打通微信支付<br/>接口，快捷高效</span>
                                     </div>
                                 </li>
                              </ul>
                      </div> 

                  </div>
          </div>
      </div>


       <div class="myad"><a href="/html/zoom_eshop.jsp"><img src="${imageUrl}/wshop/wshop_44.jpg"/></a></div>

       <div class="wrap1000">
             <div class="descript">
                 <div class="acticle">
                      <strong class="atitle">商城交易解决方案</strong>
                      <div class="item_main item_main1 clearfix">
                          <div class="fl part">
                             <b>多粉快店</b>
                             <p class="dsc">基于微信公众平台打造的原生电商模式，为各行各业的商家提供微信商城搭建服务，适用于无法开通微信支付的商家，提供店铺、商品、订单、管理等功能，解决商家在移动端销售难题。</p>
                              <ul class="clearfix ">
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_47.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>个人商铺</strong>
                                       </div>
                                   </li>
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_49.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>订单处理</strong>
                                       </div>
                                   </li>
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_51.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>货物查询</strong>
                                       </div>
                                   </li>
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_53.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>多粉支付</strong>
                                       </div>
                                   </li>
                                </ul>
                          </div>

                          <div class="fl part mt55">
                             <b>多粉钱包</b>
                             <p class="dsc">多粉钱包致力于提供“简单、安全、快速”的商城交易解决方案，是商户委托多粉代为收取消费者支付的相应服务款，可以查看在多粉平台上获得的累计收入、也可
以查看待确认金额、账户余额以及金额提现。</p>
                              <ul class="clearfix ">
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_59.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>余额查询</strong>
                                       </div>
                                   </li>
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_61.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>金额提现</strong>
                                       </div>
                                   </li>
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_63.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>收入记录</strong>
                                       </div>
                                   </li>
                                   <li>
                                      <img src="${imageUrl}/wshop/wshop_65.jpg"/>
                                      <div class="tgc_tit">
                                           <strong>支付管理</strong>
                                       </div>
                                   </li>
                                </ul>
                          </div>
                    </div>
                 </div>

             </div> 





              <div class="item_title item_title1">
                  <h2>他们都在使用</h2>
              </div> 

              <div class="shoplist">
                <ul class="clearfix">
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_71.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_73.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_75.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_77.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_83.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_84.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_85.jpg"></a></li>
                    <li><a href="#"><img src="${imageUrl}/wshop/wshop_86.jpg"></a></li>
                </ul> 
              </div>
         </div>
     </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>



