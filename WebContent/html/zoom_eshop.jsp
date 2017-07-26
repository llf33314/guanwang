<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>区域化电商平台</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":405});
})
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/zeshop/banner.png"></a></li>
         </ul>
     </div>

     <div class="containter mobileAd smartycy wshop zeshop">
          <div class="wrap1000">

             <div class="item_title">
                  <h2>本土商家发展问题</h2>
             </div>

              <div class="descript">
                 <div class="acticle">
                      <div class="item_main clearfix">
                             <ul class="clearfix ">
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_05.png"/>
                                    <div class="tgc_tit">
                                         <span>停车不便，交通拥<br/>堵，阻碍客流导入</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_07.png"/>
                                    <div class="tgc_tit">
                                         <span>物流配送体系不健全，<br/>配送效率低，成本高</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_09.png"/>
                                    <div class="tgc_tit">
                                         <span>缺少线上销售渠道，本地目<br/>标客户被各大网购平台蚕食</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_11.png"/>
                                    <div class="tgc_tit">
                                         <span>业态组合单一，购物模<br/>式简单，吸客能力弱</span>
                                     </div>
                                 </li>
                              </ul>
                      </div> 
                  </div>

                  <div class="acticle ac1">
                      <strong class="atitle">多粉区域化电商平台解决方案</strong>
                      <div class="fl support clearfix">
                           <dl>
                              <dt>找身边客户，做身边生意</dt>
                              <dd>专注为立足本地销售与服务的商家搭建网站建设和推广平台，<br/>为商家提供精准的区域推广服务，打造区域化电商平台。</dd>
                           </dl>
                           <dl>
                              <dt>真实</dt>
                              <dd>线上拉客，线下购买。同城购可实现“线上拉客，线下购买”，具有较强的真实性，<br/>便于消费者选择自己的购物意向，并在线下去查看自己线上选购的商品。</dd>
                           </dl>
                           <dl>
                              <dt>时效</dt>
                              <dd>同城物流可靠及时，一般在网络上购买的商品，物流一般需要2-5天才可到达。多<br/>粉同城购平台，速度快，最快1小时可送达。</dd>
                           </dl>
                           <dl>
                              <dt>全面</dt>
                              <dd>提供更加丰富的线上会员营销体系，有效获取核心客户信息，围绕着商户会员开展<br/>营销活动，从而更加全面支撑商户和会员之间的联系。</dd>
                           </dl>
                       </div>
                      <img class="img1" src="${imageUrl}/zeshop/zeshop_18.png" style="margin-top:80px">
                 </div>
          </div>
      </div>


       <div class="myad"><img src="${imageUrl}/zeshop/zeshop_21.png"/></div>

       <div class="wrap1000">

           <div class="descript">
                 <div class="acticle">
                      <div class="item_main item_main1 clearfix">
                             <ul class="clearfix ">
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_24.png"/>
                                    <div class="tgc_tit">
                                         <strong>大数据</strong>
                                         <span>精准消费引导、建立大数据</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_26.png"/>
                                    <div class="tgc_tit">
                                         <strong>本土化</strong>
                                         <span>区域独立、全国互通</span>
                                     </div>
                                 </li>
                                 <li>
                                    <img src="${imageUrl}/zeshop/zeshop_28.png"/>
                                    <div class="tgc_tit">
                                         <strong>服务优</strong>
                                         <span>区域独立、全国互通</span>
                                     </div>
                                 </li>
                              </ul>
                      </div> 
                  </div>
            </div>
            
            <a href="http://duofriend.com/user/toregister.do" class="base_abtn imMakeAd">免费入驻体验</a>

            <div class="tf_program">
                   <ul class="clearfix">
                       <li><img src="${imageUrl}/zeshop/zeshop_34.png"/><span>技术支持</span></li>
                       <li><img src="${imageUrl}/zeshop/zeshop_36.png"/><span>即时故障处理</span></li>
                       <li><img src="${imageUrl}/zeshop/zeshop_38.png"/><span>1V1大客户服务</span></li>
                       <li><img src="${imageUrl}/zeshop/zeshop_40.png"/><span>7×24小时服务</span></li>
                       <li class="lastli"><img src="${imageUrl}/zeshop/zeshop_42.png"/><span>定制开发</span></li>
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



