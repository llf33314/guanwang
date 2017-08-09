<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>餐饮微信营销系统_微信在线订餐、排队、点餐、外卖系统_多粉</title>

<meta name="description"
          content="多粉为餐饮行业提供全套微信公众号营销服务。微餐饮可实现微信在线点餐、订座，预约排队，外卖订餐等功能。为餐饮商户提供更加全面的微信解决方案。"/>
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wcy/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wcy">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1 selected"><em class="sys_icon"></em>微餐饮</a></li>
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
                     <li><a href="wqx.jsp" class="lnav12"><em class="sys_icon"></em>微汽修</a></li>
                     <li><a href="wgc.jsp" class="lnav13"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微餐饮</h1>
                     <p class="subtitle">开启属于您的餐饮O2O模式<span>微信在线点餐、在线订座，专为餐饮行业定制</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">微信订餐</a></li>
                                  <li><a href="javascript:;">微信外卖</a></li>
                                  <li><a href="javascript:;">菜品管理</a></li>
                                  <li><a href="javascript:;">订餐管理</a></li>
                                  <li><a href="javascript:;">门店管理</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wcy/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>通过微餐饮，粉丝可以通过微信完成如点餐、订座，一键拨打商户电话及门店导航操作。微餐饮还与微会员、微活动充分整合，为餐饮商户提供更加全面的微信解决方案。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wcy/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>专业外卖点餐订餐系统，订单信息即时短信通知，通过短信分发的链接进入订单管理后台。查看订单到确认订单过程只需一部手机即可搞定，轻松实现店铺去电脑化。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wcy/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>微餐饮支持对菜品的分类管理，便于粉丝挑选，并支持原价、优惠价同时显示，让粉丝看到更多实惠的菜品简介、高清图片展示，极具诱惑力。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wcy/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>订单管理可查询粉丝提交的订单记录，并可以根据姓名电话等条件进行搜索，查看订单菜品明细，微餐饮还特别提供了对订单状态的跟踪，让您轻松了解每一笔订单的价值。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wcy/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>微餐饮支持多门店集成管理，各门店都拥有自己独立的管理后台，可对本店菜品、餐台、订单等信息进行管理。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wcy/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wcy/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统餐饮行业</h3>
                                  <dl>
                                      <dt><em></em>运营成本</dt>
                                      <dd>传统的人力占据企业总成本高，效率低</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>点餐形式</dt>
                                      <dd>餐牌数量有限，无法顾及每位顾客所需</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>订单通知</dt>
                                      <dd>订单顺序紊乱，通知慢，易出现漏单，错单</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>沟通服务</dt>
                                      <dd>服务人员有限，下单上菜未能及时与顾客沟通</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>支付方式</dt>
                                      <dd>现金刷卡买单模式单一，繁琐耗时</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微餐饮</h3>
                                  <dl>
                                      <dt><em></em>运营成本</dt>
                                      <dd>微信自助服务，运营效率高，省时省力，降低成本</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>点餐形式</dt>
                                      <dd>支持二维码点餐，客户自主操作，并能实现订单合并</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>订单通知</dt>
                                      <dd>客户下单后，商家即时收到订单消息，及时处理</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>沟通服务</dt>
                                      <dd>引导客户使用微信，高效处理客户需求</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>支付方式</dt>
                                      <dd>支持在线支付，扫码支付等多种方式</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wcy/index_13.jpg"/>
                                         <strong>平台化</strong>
                                         <span>改造传统订发货体系<br/>搭建工厂行业新平台</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wcy/index_15.jpg"/>
                                         <strong>专业化</strong>
                                         <span>报价体系灵活调整<br/>线上交易自动生成</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wcy/index_17.jpg"/>
                                         <strong>个性化</strong>
                                         <span>打通线上产品定制渠道<br/>满足客户个性化需求</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wcy/index_19.jpg"/>
                                         <strong>信息化</strong>
                                         <span>货物情况自助查询<br/>订单状态实时追踪</span>
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
                                           <img src="${imageUrl}/wcontent/wcy/index_26.jpg"/>
                                           <strong>中山客家酒楼</strong>
                                           <span>中山客家酒楼的命名由来，是孙中山祖先入粤定居长乐县，客家紫金父老乡亲对伟人的怀念，特起名“中山客家酒楼”。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wcy/index_28.jpg"/>
                                           <strong>荣华烧鹅</strong>
                                           <span>从业四年来，荣华烧鹅注重为顾客创造舒适的就餐环境和美味的烧鹅烧腊，好评不断。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wcy/index_30.jpg"/>
                                           <strong>上品鸡煲</strong>
                                           <span>上品鸡煲是一家以美味鸡煲为主的深圳本土连锁品牌，目前有加盟店6家。我们以土鸡为原材料，现杀现做，加入独家秘制酱料。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wcy/index_32.jpg"/>
                                           <strong>南华礼饼</strong>
                                           <span>南华礼饼成立与1998年，是坪地历史最为悠久的面包店之一。南华礼饼以天然健康为理念，致力于为大众提供天然无害无添加剂的产品。</span>
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







