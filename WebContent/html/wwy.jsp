<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微物业</title>
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wwy/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wwy">
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
                     <li><a href="wwy.jsp" class="lnav8 selected"><em class="sys_icon"></em>微物业</a></li>
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
                     <h1>微物业</h1>
                     <p class="subtitle">开启业主生活的微时代，<span>打造小区服务和物业管理的移动解决平台</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">在线展示</a></li>
                                  <li><a href="javascript:;">服务抢修</a></li>
                                  <li><a href="javascript:;">客人来访</a></li>
                                  <li><a href="javascript:;">小区论坛</a></li>
                                  <li><a href="javascript:;">微信门禁</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wwy/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>物业管理人员在后台导入小区所有用户的物业费信息（包含停车费、物业费、水电费等），业主只需绑定自己账号后，登录即可查询并实行在线缴纳。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wwy/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>物业管理在后台设置保修种类，例如下水道保修、电梯维修、电路保修等，可在微信上进行选择，填写报修内容并提交。紧急情况下可通过一键拨号，通知物业，进行抢修。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wwy/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>小区居民有客人来访，不需出门便能够第一时间知道，而且它还具有一键开门功能，当确定是朋友来访时便可以通过手机直接为其开门。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wwy/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>为小区业主提供的多种互动功能，物业可以方便的组织小区活动，业主也可以快速查找小区周边服务信息，为小区提供了专门的社区模块，快速建立小区业主的网上家园。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wwy/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>业主通过小区验证绑定成功后，录入业主信息存入数据库，业主进入小区大门时，只需拿去手机微信扫一扫大门二维码，即可解锁开门。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wwy/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wwy/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统物业行业</h3>
                                  <dl>
                                      <dt><em></em>缴费管理</dt>
                                      <dd>到管理处管理缴费，人力成本高，业主经常逾时缴费</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消息通知</dt>
                                      <dd>采取贴纸公告方式来通知小区业主，消息难以触达业主</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>沟通模式</dt>
                                      <dd>因沟通协调问题，业主与物业之间普遍存在矛盾</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>推广宣传</dt>
                                      <dd>物业高流水低利润，盈利结构单一</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>问题反馈</dt>
                                      <dd>报修维护渠道单一，效率慢，过程繁琐</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微物业</h3>
                                  <dl>
                                      <dt><em></em>缴费管理</dt>
                                      <dd>线上缴纳物业费，打破空间、时间限制，方便快捷</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消息通知</dt>
                                      <dd>线上随时推送小区通知，精确触达业主</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>沟通模式</dt>
                                      <dd>服务流程、服务质量随时与业主进行在线沟通，拉近双方距离</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>推广宣传</dt>
                                      <dd>通过微物业平台与广告商合作，通过发布推广广告增加盈利渠道</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>问题反馈</dt>
                                      <dd>业主足不出户可报修、反馈意见，需求内容一键直达</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wwy/index_13.jpg"/>
                                         <strong>微信缴费</strong>
                                         <span>微信支付物业费<br/>管理效率提高</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wwy/index_15.jpg"/>
                                         <strong>业主维护</strong>
                                         <span>微信与业主沟通<br/>上传下达通畅无阻</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wwy/index_17.jpg"/>
                                         <strong>消息推送</strong>
                                         <span>物业通知精准触达<br/>省去人工线下通知</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wwy/index_19.jpg"/>
                                         <strong>活动组织</strong>
                                         <span>利用小区论坛<br/>轻松组织小区活动</span>
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
                                           <img src="${imageUrl}/wcontent/wwy/index_26.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wwy/index_28.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wwy/index_30.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wwy/index_32.jpg"/>
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







