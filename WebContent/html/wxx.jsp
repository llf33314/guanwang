<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微休闲</title>
    <link rel="Shortcut Icon" href="/images/alogo.png" type="image/x-icon">
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wxx/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wxx">
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
                     <li><a href="wxx.jsp" class="lnav11 selected"><em class="sys_icon"></em>微休闲</a></li>
                     <li><a href="wqx.jsp" class="lnav12"><em class="sys_icon"></em>微汽修</a></li>
                     <li><a href="wgc.jsp" class="lnav13"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微休闲</h1>
                     <p class="subtitle">不一样的娱乐方式，不一样的生活情趣，<span>一切休闲娱乐活动尽在掌中</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">在线订房</a></li>
                                  <li><a href="javascript:;">会员系统</a></li>
                                  <li><a href="javascript:;">线上商城</a></li>
                                  <li><a href="javascript:;">互动游戏</a></li>
                                  <li><a href="javascript:;">投票比拼</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wxx/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>可以设置自定义在线订房，在线预约等，设置后商家手机可以收到订单提醒，并且附带订单管理链接，点击链接可以及时处理订单。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wxx/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>通过在微信公众号内植入会员卡，帮助商家建立新一代的移动会员管理系统，让粉丝成为商家的会员。清晰记录企业用户的消费行为并进行数据分析；还可以根据用户特征进行精细分类，从而实现各种模式的精准营销。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wxx/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>搭建微信商城的平台,提供店铺、商品、订单、物流、消息和客户的管理模块,同时还提供丰富的营销应用和活动插件。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wxx/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>一键创建朋友圈互动小游戏活动，多类型游戏模板任你挑选，还可根据不同需求定制最适合商家的个性化小游戏，有效实现粉丝互动、精准宣传营销。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wxx/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>商家可以自主设定投票时间，视频、音频、文字、图片等同时发布，支持图片作品九宫格上传，画面对比清晰度更胜一筹。灵活的广告投放，自有品牌，赞助商，均可在活动规则中呈现，用户投票后可埋彩蛋，设惊喜优惠券等。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wxx/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wxx/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统休闲娱乐</h3>
                                  <dl>
                                      <dt><em></em>品牌宣传</dt>
                                      <dd>缺乏品牌宣传推广渠道</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>预约模式</dt>
                                      <dd>进店排队等候，电话预订，传统且消耗时间</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消费模式</dt>
                                      <dd>缺少线上消费，一般只能面向到店的老顾客</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员系统</dt>
                                      <dd>老顾客无法稳定，客户流失现象普遍</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>营销模式</dt>
                                      <dd>缺乏完整的二次营销体系</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微休闲</h3>
                                  <dl>
                                      <dt><em></em>品牌宣传</dt>
                                      <dd>搭建公众号自媒体平台进行品牌宣传</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>预约模式</dt>
                                      <dd>通过微信即可一键预约，方便快捷</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消费模式</dt>
                                      <dd>在线产品商城让顾客随时进行消费</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员系统</dt>
                                      <dd>拥有完善的会员系统，提升顾客身份体验，提高忠诚度</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>营销模式</dt>
                                      <dd>借助微休闲营销游戏互动、吸粉、展现等系统，迅速进行二次营销</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wxx/index_13.jpg"/>
                                         <strong>营销游戏</strong>
                                         <span>增加粉丝互动<br/>扩大品牌宣传</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wxx/index_15.jpg"/>
                                         <strong>用户推广</strong>
                                         <span>锁定精准粉丝<br/>打造口碑营销</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wxx/index_17.jpg"/>
                                         <strong>在线预约</strong>
                                         <span>提升顾客体验<br/>增加销售机会</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wxx/index_19.jpg"/>
                                         <strong>会员体系</strong>
                                         <span>提升客户黏度<br/>进行二次营销</span>
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
                                           <img src="${imageUrl}/wcontent/wxx/index_26.jpg"/>
                                           <strong>巴黎春天</strong>
                                           <span>营业面积大、规模宏伟，由著名设计师精心雕琢，集现代艺术与温馨华丽的设计为一体，内部娱乐设施一应俱全。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wxx/index_28.jpg"/>
                                           <strong>海鸥驿站</strong>
                                           <span>度假村设有大型停车场、野炊场、烧烤场、CS野战基地、仿真坦克试驾基地、主题酒吧、DIY窖鸡场、超市、荔枝果园、农夫菜园、游艇等配套设施。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wxx/index_30.jpg"/>
                                           <strong>绿岛村</strong>
                                           <span>绿岛村把“以人为本、诚心相待”为管理理念。先规范化，再走人性化。绿岛村不单单重视饮品制作的技能，更注重每一位员工人格、素质的提升。 </span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wxx/index_32.jpg"/>
                                           <strong>泰然超市</strong>
                                           <span>泰然超市公司成立于2005年，是兴宁地区超市零售批发知名企业，一家专注于超市零售，批发，网上销售，线上线下一体化综合企业。</span>
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







