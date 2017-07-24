<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉样子美容美发管理系统_美容美发收银软件_多粉</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
<meta name="description"
          content="多粉样子美容美发管理系统，集合了智能开单、在线预约、会员管理、员工管理、便捷支付等多种功能，是一款专门为美容美发行业设计的智能化管理系统，让企业的服务和管理更加快捷高效。"/>
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":411});
    $("#focusad-01").slideLi({"height":439,"width":661,"arrow":true});
    $("#focusad-02").slideLi({"display":"roll","height":635,"width":339,"arrow":true});
})
</script>
</head>

<body>
<div class="wrap carxs">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/yangzhi/index_02.jpg"></a></li>
         </ul>
     </div>

     <div class="containter">
         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>美容美发服务预约解决方案</h2>
              </div>
              <div class="content-wrap clearfix wrap1200 tc">
                  <img src="${imageUrl}/yangzhi/index_05.jpg">
              </div>
         </div>

         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>样子ERP解决方案</h2>
              </div>
              <div class="content-wrap">
                  <div class="tabbox">
                       <ul class="bh">
                           <li class="selected">视频介绍</li>
                           <li>PC端</li>
                           <li>手机端</li>
                       </ul>
                       <div class="bd">
                           <div class="cont selected">
                               <a href="javascript:void(0);"><img src="${imageUrl}/yangzhi/index_08.jpg"></a>
                           </div>
                           <div class="cont">
                               <div class="roll-wrap">
                                    <div class="main-wrap" id="focusad-01">
                                         <div class="ov-wrap">
                                           <ul>
                                               <li><img src="${imageUrl}/yangzhi/pic1.jpg"></li>
                                               <li><img src="${imageUrl}/yangzhi/pic2.jpg"></li>
                                               <li><img src="${imageUrl}/yangzhi/pic3.jpg"></li>
                                           </ul>
                                         </div>
                                    </div>
                               </div>
                           </div>
                           <div class="cont">
                                <div class="switch-wrap">
                                    <div class="main-wrap" id="focusad-02">
                                         <div class="ov-wrap">
                                             <ul>
                                                 <li class="current">
                                                     <img src="${imageUrl}/yangzhi/p1.png">
                                                     <img src="${imageUrl}/yangzhi/share.png" class="shape">
                                                 </li>
                                                 <li>
                                                     <img src="${imageUrl}/yangzhi/p2.png">
                                                     <img src="${imageUrl}/yangzhi/share.png" class="shape">
                                                 </li>
                                                 <li>
                                                    <img src="${imageUrl}/yangzhi/p3.png">
                                                    <img src="${imageUrl}/yangzhi/share.png" class="shape">
                                                 </li>
                                             </ul>
                                         </div>
                                    </div>
                               </div>
                           </div>
                       </div>
                  </div>
              </div>
         </div>

         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>消费者、商家、技师多角色使用</h2>
              </div>
              <div class="content-wrap wrap1200">
                  <ul class="clearfix block-list-wrap">
                     <li style="height: 493px">
                        <strong>消费者</strong>
                        <img src="${imageUrl}/yangzhi/index_09.jpg" class="block">
                        <h3>多渠道快捷预约</h3>
                        <p>微信、网站均可多渠道预约，<br/>实现随时随地在线预约</p>
                     </li>
                     <li style="height: 493px">
                        <strong>商家</strong>
                        <img src="${imageUrl}/yangzhi/index_11.jpg" class="block">
                        <h3>门店ERP操作后台</h3>
                        <p>多粉ERP后台实现多门店统一管理，<br/>订单、资金、店员统一管理</p>
                     </li>
                     <li style="height: 493px">
                        <strong>技师</strong>
                        <img src="${imageUrl}/yangzhi/index_13.jpg" class="block">
                        <h3>专用技师后台</h3>
                        <p>服务人员使用手机即可管理日常，包括接单、<br/>预约时间安排、与客户沟通、接收总店消息等</p>
                     </li>
                  </ul>
              </div>
         </div>

         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>更多特色功能</h2>
              </div>
              <div class="content-wrap wrap1200">
                  <ul class="clearfix  block-list-wrap block-list-wrap-01 characteristic-function">
                     <li>
                        <img src="${imageUrl}/yangzhi/index_19.jpg" class="block">
                        <h3>前台营业</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_21.jpg" class="block">
                        <h3>在线预约</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_23.jpg" class="block">
                        <h3>优惠套餐</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_25.jpg" class="block">
                        <h3>多门店管理</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_31.jpg" class="block">
                        <h3>技师ERP</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_33.jpg" class="block">
                        <h3>服务开单</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_35.jpg" class="block">
                        <h3>统计报表</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/yangzhi/index_37.jpg" class="block">
                        <h3>会员管理</h3>
                     </li>
                  </ul>
              </div>
         </div>

         <div class="bzerwm-wrap">
              <img src="${imageUrl}/bzerwm.jpg" class="block">
              <p>扫一扫立即体验</p>
              <a href="http://duofriend.com/user/toregister.do" class="base_abtn imMakeAd">立即体验柜台版</a>
         </div>

         
     </div>

     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>



