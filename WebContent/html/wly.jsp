<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微景区</title>

<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":401});
})
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/wcontent/wly/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wly">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2"><em class="sys_icon"></em>微装修</a></li>
                     <li><a href="wyl.jsp" class="lnav3"><em class="sys_icon"></em>微医疗</a></li>
                     <li><a href="wjd.jsp" class="lnav4"><em class="sys_icon"></em>微酒店</a></li>
                     <li><a href="wly.jsp" class="lnav5 selected"><em class="sys_icon"></em>微景区</a></li>
                     <li><a href="wjy.jsp" class="lnav6"><em class="sys_icon"></em>微教育</a></li>
                     <li><a href="wmr.jsp" class="lnav7"><em class="sys_icon"></em>微美容(美发)</a></li>
                     <li><a href="wwy.jsp" class="lnav8"><em class="sys_icon"></em>微物业</a></li>
                     <li><a href="wfc.jsp" class="lnav9"><em class="sys_icon"></em>微房产</a></li>
                     <li><a href="wzw.jsp" class="lnav10"><em class="sys_icon"></em>微政务</a></li>
                     <li><a href="wxx.jsp" class="lnav11"><em class="sys_icon"></em>微休闲</a></li>
                     <li><a href="wqx.jsp" class="lnav12"><em class="sys_icon"></em>微汽修</a></li>
                     <li><a href="wgc.jsp" class="lnav13"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微景区</h1>
                     <p class="subtitle">景点介绍、线路规划一键解决，<span>让远在天边的美景，变成触手可及</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">旅游度假</a></li>
                                  <li><a href="javascript:;">酒店预订</a></li>
                                  <li><a href="javascript:;">门票预订</a></li>
                                  <li><a href="javascript:;">热门推荐</a></li>
                                  <li><a href="javascript:;">专属顾问</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wly/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>专业提供跟团游、自助游、定制游、蜜月游、亲子游等旅游规划，以图文结合的方式，简单的介绍旅游景区的概况及环境，优美的旅游景点，让游客一目了然。游客能够在微信上进行充值消费，预订门票等。从而增加景区人气，改善服务体验。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wly/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>支持酒店、旅游线路、在线预订功能。加强消费体验，预订成功后，系统自动生成订单并发送"手机短信"通知商家订单状态。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wly/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>游客可通过微信平台实微信预订购买门票，省去了游客在景区排队的时间。也方便景区对订购门票的游客进行统计，做好充分准备，提升工作及服务效率。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wly/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>特设视频攻略，推荐目的地最值得去的景点，让游客以最快的时间浏览；推荐当地最有特色、必吃的美食，让游客享受舌尖上的美味；提供景点附近旅店资讯，让游客有宾至如归的感觉；提供最清晰的交通出行方案，让游客不再陌生的城市里迷失。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wly/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>游客在旅途中有任何问题随时可以询问平台中的专属顾问，反馈意见，并且得到及时的回复。让游客的出行更加简单顺心，让更多的背包客、自驾族获得更精彩的旅行体验，让更多的游客在路上遇见那个未知的自己。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wly/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wly/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统旅游行业</h3>
                                  <dl>
                                      <dt><em></em>预订渠道</dt>
                                      <dd>节假日订购门票、酒店困难</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>现状推广</dt>
                                      <dd>旅游现状供过于求，同行竞争日益激烈</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>品牌宣传</dt>
                                      <dd>传统宣传，效果不佳，运营成本高</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>经营方式</dt>
                                      <dd>景点设施维护成本高，淡季经营惨淡</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消费方式</dt>
                                      <dd>游客消费动力不足，景区售卖商品受时间空间限制</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微景区</h3>
                                  <dl>
                                      <dt><em></em>预订渠道</dt>
                                      <dd>微信线上预订购票，打通支付闭环，提升游客体验</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>现状推广</dt>
                                      <dd>360度全景展示景区，吸引游客，提升景区的知名度</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>品牌宣传</dt>
                                      <dd>景区完全自建运营渠道，降低运营成本与运营风</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>经营方式</dt>
                                      <dd>不同季节、不同节假日都有不同的价格标准，吸引粉丝，增加收入</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消费方式</dt>
                                      <dd>景区特色商城售卖商品不受时间空间限制</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wly/index_13.jpg"/>
                                         <strong>景区智能体验</strong>
                                         <span>塑造旅游景区专业形<br/>象，加速自身推广</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wly/index_15.jpg"/>
                                         <strong>景区平台建设</strong>
                                         <span>节省宣传成本<br/>提高竞争力</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wly/index_17.jpg"/>
                                         <strong>数据化运营</strong>
                                         <span>精准定位潜在客户<br/>吸引不同类型客户</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wly/index_19.jpg"/>
                                         <strong>社会营销</strong>
                                         <span>有效占领移动互联网<br/>入口，拓展营销渠道</span>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                      </div> 


                      <div class="pc_item"> 
                          <h2>合作客户</h2>
                          <div class="customerlist">
                               <ul class="clearfix">
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wly/index_26.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wly/index_28.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wly/index_30.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wly/index_32.jpg"/>
                                       </a>
                                   </li>
                               </ul>
                          </div>
                      </div>
                      
                      <a href="http://duofriend.com/user/toregister.do" class="base_abtn imMakeAd" target="_blank">立即注册使用</a>

                 </div>
             </div>
         </div>
     </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>







