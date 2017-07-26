<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微汽修</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wqx/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wqx">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2"><em class="sys_icon"></em>微装修</a></li>
                     <li><a href="wyl.jsp" class="lnav3"><em class="sys_icon"></em>微医疗</a></li>
                     <li><a href="wjd.jsp" class="lnav4"><em class="sys_icon"></em>微酒店</a></li>
                     <li><a href="wly.jsp" class="lnav5"><em class="sys_icon"></em>微景区</a></li>
                     <li><a href="wjy.jsp" class="lnav6"><em class="sys_icon"></em>微教育</a></li>
                     <li><a href="wmr.jsp" class="lnav7"><em class="sys_icon"></em>微美容(美发)</a></li>
                     <li><a href="wwy.jsp" class="lnav8"><em class="sys_icon"></em>微物业</a></li>
                     <li><a href="wfc.jsp" class="lnav9"><em class="sys_icon"></em>微房产</a></li>
                     <li><a href="wzw.jsp" class="lnav10"><em class="sys_icon"></em>微政务</a></li>
                     <li><a href="wxx.jsp" class="lnav11"><em class="sys_icon"></em>微休闲</a></li>
                     <li><a href="wqx.jsp" class="lnav12 selected"><em class="sys_icon"></em>微汽修</a></li>
                     <li><a href="wgc.jsp" class="lnav13"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微汽修</h1>
                     <p class="subtitle">打造智能互联汽车维修产业新常态 <span>车主关怀应有尽有</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">预约维修</a></li>
                                  <li><a href="javascript:;">车险续保</a></li>
                                  <li><a href="javascript:;">爱车商城</a></li>
                                  <li><a href="javascript:;">一键拖车</a></li>
                                  <li><a href="javascript:;">社区论坛</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wqx/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>客户可通过微信在线预约报修、保养等事项，无需线下耗费时间，汽修店收到客户预定信息之后，及时联系，安排服务，增加客户体验感。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wqx/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>为了让客户更好地体验和使用，方便生活，客户可以选择在线微信支付进行，一键车险续保，不用再辛苦去柜台排队办理，省时，省心。拉近企业与客户之间的微距离。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wqx/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>将维修服务和保养产品分类展示在商城出售，多粉安全支付为其保驾护航，而用户可在爱车商城首页搜索所需商品，节约浏览时间，并可直接一键购物，实现在线购买。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wqx/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>客户发生紧急情况，可通过LBS定位，实现一键拨号拖车功能，无需线下耗费时间咨询办理繁琐的拖车程序，省时省力，进一步提高效率，同时便捷的方式提高了用户的体验度。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wqx/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>为客户提供点赞、打赏、评论等多种互动功能，客户可以将汽修服务体验的心得、经验与他人分享，汽修企业也可以在此论坛中展示汽修图片，增加客户好感和互动性。通过论坛或客服形式，方便客户反馈意见，并且得到及时回复。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wqx/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wqx/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统汽修行业</h3>
                                  <dl>
                                      <dt><em></em>经营成本</dt>
                                      <dd>诸多汽车维修企业处于盈亏边缘，经营成本日益增高</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>维修流程</dt>
                                      <dd>传统维修保养流程繁琐，时间成本高</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>线上互动</dt>
                                      <dd>维修行业是相对封闭的移动终端，数据的开放性是其致命缺陷</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>推广宣传</dt>
                                      <dd>小型汽修店无自己的品牌，难以形成口碑传播</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员体系</dt>
                                      <dd>老顾客无法稳定，客户流失现象普遍</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微汽修</h3>
                                  <dl>
                                      <dt><em></em>经营成本</dt>
                                      <dd>接入微信公众平台，将服务转化为产品，节约成本，提高服务质量</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>维修流程</dt>
                                      <dd>微信一键预约，无需长时间排队，提交成功后，流程清晰列出</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>线上互动</dt>
                                      <dd>利用微信平台与用户形成一定粘性的线上互动，打造汽车维修行业新市场</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>推广宣传</dt>
                                      <dd>通过客户案例、汽修场景、客户描述等展示，体现商家实力</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员体系</dt>
                                      <dd>车主会员系统提供完善的售后服务</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wqx/index_13.jpg"/>
                                         <strong>维修展示</strong>
                                         <span>展示维修流程<br/>顾客放心消费</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wqx/index_15.jpg"/>
                                         <strong>LBS定位</strong>
                                         <span>定位门店位置<br/>引导消费者到店</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wqx/index_17.jpg"/>
                                         <strong>预约维修</strong>
                                         <span>提升消费体验<br/>增加销售机会</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wqx/index_19.jpg"/>
                                         <strong>在线商城</strong>
                                         <span>增加客户互动<br/>刺激成交量</span>
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
                                           <img src="${imageUrl}/wcontent/wqx/index_26.jpg"/>
                                           <strong>爱车谷汽车美容</strong>
                                           <span>爱车谷汽车美容服务部专业从事汽车美容、车身表面创伤修复、汽车改装等服务，自成立以来，深得广大市民的厚爱和支持，美容维修服务质量不断上升。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wqx/index_28.jpg"/>
                                           <strong>揭阳市展泰汽车维修服务</strong>
                                           <span>揭阳市展泰汽车维修服务有限公司位于揭阳市榕城区建阳路金城龙庭二期西侧玛吉斯轮胎店，主要经营范围有汽车维修、汽车美容、汽车快修、代办保险、年审、代缴违章、过户等等服务。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wqx/index_30.jpg"/>
                                           <strong>安通二手汽车销售</strong>
                                           <span>化州市安通二手汽车销售有限公司是化州唯一一间注册独立销售的二手汽车公司，也是茂名、化州地区唯一一间拥有800平方米的二手汽车独立展厅。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wqx/index_32.jpg"/>
                                           <strong>大兵小将汽车维修服务有限公司</strong>
                                           <span>深圳市大兵小将汽车维修服务有限公司成立于2015年5月18日，凭借多年专业汽车美容养护经验和诚实守信尽职尽责的服务态度，赢得广大消费者的信赖。</span>
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







