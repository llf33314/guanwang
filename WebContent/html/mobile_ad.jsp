<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微信移动广告</title>
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
             <li><a href="#"><img src="${imageUrl}/myad/banner1.jpg"></a></li>
         </ul>
     </div>

     <div class="containter mobileAd">
         <div class="wrap1000">
              <div class="item_title">
                  <h2>微信移动广告</h2>
                  <div class="fbt"><em></em><span>解决方案</span><em></em></div>
              </div>  

              <div class="item_main">
                   <ul class="clearfix">
                       <li>
                          <img src="${imageUrl}/myad/myad_05.jpg"/>
                          <div class="tgc_tit">
                               <strong>微信朋友圈广告</strong>
                               <span>精准针对，高效曝光，<br/>强力吸引目标消费者眼球</span>
                           </div>
                       </li>
                       <li>
                          <img src="${imageUrl}/myad/myad_07.jpg"/>
                          <div class="tgc_tit">
                               <strong>微信公众号广告</strong>
                               <span>成本可控、效益可观、精<br/>准定位，迅速形成口碑宣传</span>
                           </div>
                       </li>
                       <li>
                          <img src="${imageUrl}/myad/myad_09.jpg"/>
                          <div class="tgc_tit">
                               <strong>微信公众号目录广告</strong>
                               <span>全方位展示、高效快捷、各种推广<br/>渠道，为你带来源源不断的精准粉丝</span>
                           </div>
                       </li>
                    </ul>
              </div>
             <div class="descript">
                 <div class="acticle">
                      <strong class="atitle">微信朋友圈广告</strong>
                      <p class="desc">通过微信广告系统进行投放和管理，广告本身内容将基于微信公众账号生态体系，以类似朋友的原创<br/>内容形式进行展现，在基于微信用户画像进行定向的同时，依托关系链进行互动传播。</p>
                      <img src="${imageUrl}/myad/myad_10.jpg">
                 </div>


                 <div class="item_main">
                     <ul class="clearfix">
                         <li>
                            <img src="${imageUrl}/myad/myad_19.jpg"/>
                            <div class="tgc_tit">
                                 <strong>用户体验高</strong>
                                 <span>类似朋友的原创内容形式进行展<br/>现，用户体验良好，接受度高</span>
                             </div>
                         </li>
                         <li>
                            <img src="${imageUrl}/myad/myad_21.jpg"/>
                            <div class="tgc_tit">
                                 <strong>针对性强</strong>
                                 <span>可定向投放，也可附加其它定<br/>向条件，如：地域、兴趣等</span>
                             </div>
                         </li>
                         <li>
                            <img src="${imageUrl}/myad/myad_23.jpg"/>
                            <div class="tgc_tit">
                                 <strong>形式多变</strong>
                                 <span>可以图文的形式发布，<br/>又可以视频的形式展现 </span>
                             </div>
                         </li>
                         <li>
                            <img src="${imageUrl}/myad/myad_25.jpg"/>
                            <div class="tgc_tit">
                                 <strong>指向多样</strong>
                                 <span>用户点击朋友圈广告后可<br/>以跳转指定的链接页面</span>
                             </div>
                         </li>
                      </ul>
                </div>

                 <div class="acticle ac1">
                      <strong class="atitle">微信公众号广告</strong>
                      <p class="desc fl">微信公众号广告是一个基于微信公众平台，可提供给广告主多种广告形式投放，并利用专业数据处理算法实现成本可控、效益可观、精准定位的效果广告投放系统。</p>
                      <img class="img1" src="${imageUrl}/myad/myad_32.jpg">
                      <div class="tc mt40"><img src="${imageUrl}/myad/myad_45.jpg"/></div>
                 </div>

                 <div class="acticle">
                      <strong class="atitle">微信公众号目录广告</strong>
                      <p class="desc">多粉微信公众号目录平台是全国最大的微信公众号目录平台，其目的就是要在充分挖掘和整合商户的<br/>
                      基础上，延伸和拓展传统的公众号查询服务，通过公众号名录让更多用户悉知，提供准确有效的信息<br/>
                      传播渠道。</p>
                      <img src="${imageUrl}/myad/myad_49.jpg">
                 </div>
             </div>

             <div class="item_title">
                  <h2>我们能提供什么</h2>
              </div>  

             <div class="support clearfix">
                 <dl>
                    <dt><img src="${imageUrl}/myad/myad_53.jpg"/>灵活的出价和投放控制</dt>
                    <dd>通过设置展示时间以及频次，针对用户精打细算曝光流量，最大程度节约客户预算。</dd>
                 </dl>
                 <dl>
                    <dt><img src="${imageUrl}/myad/myad_55.jpg"/>创意多样化，提升广告点击率</dt>
                    <dd>在设置完相关定向条件后，进行广告的创意编辑，为广告主量身定制高转化、多趣味、强互动的H5，打造完美交互体验。</dd>
                 </dl>
                 <dl>
                    <dt><img src="${imageUrl}/myad/myad_59.jpg"/>资深广告服务团队</dt>
                    <dd>多粉拥有专业的服务团队，资深广告策划师，资深广告优化师，资深数据师，包括策略制定、创意制作、社会化媒体营销等服务。</dd>
                 </dl>
                 <dl>
                    <dt><img src="${imageUrl}/myad/myad_60.jpg"/>一站式广告投放服务</dt>
                    <dd>为客户提供有效的广告投放方案，包括账素材制作，投放执行，数据分析，账户优化等服务。 </dd>
                 </dl>
             </div>

             <div class="item_title">
                  <div class="fbt"><em></em><span><h2>广告投放合作</h2></span><em></em></div>
              </div> 

              <div class="tf_program">
                   <ul class="clearfix">
                       <li><img src="${imageUrl}/myad/myad_67.jpg"/><span>前期准备</span></li>
                       <li><img src="${imageUrl}/myad/myad_79.jpg"/></li>
                       <li><img src="${imageUrl}/myad/myad_69.jpg"/><span>广告制作</span></li>
                       <li><img src="${imageUrl}/myad/myad_79.jpg"/></li>
                       <li><img src="${imageUrl}/myad/myad_71.jpg"/><span>方案审核</span></li>
                       <li><img src="${imageUrl}/myad/myad_79.jpg"/></li>
                       <li><img src="${imageUrl}/myad/myad_73.jpg"/><span>广告上线</span></li>
                       <li><img src="${imageUrl}/myad/myad_79.jpg"/></li>
                       <li><img src="${imageUrl}/myad/myad_76.jpg"/><span>效果跟踪</span></li>
                       <li><img src="${imageUrl}/myad/myad_79.jpg"/></li>
                       <li><img src="${imageUrl}/myad/myad_64.jpg"/><span>报告反馈</span></li> 
                   </ul>
              </div> 

              <a href="javascript:;" onclick="showBaiduBus();" class="base_abtn imMakeAd">立即投放广告</a>
         </div>
     </div>


     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>



