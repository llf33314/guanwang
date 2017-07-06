<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微酒店</title>
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":401});
});
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/wcontent/wjd/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wjd">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2"><em class="sys_icon"></em>微装修</a></li>
                     <li><a href="wyl.jsp" class="lnav3"><em class="sys_icon"></em>微医疗</a></li>
                     <li><a href="wjd.jsp" class="lnav4 selected"><em class="sys_icon"></em>微酒店</a></li>
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
                     <h1>微酒店</h1>
                     <p class="subtitle">开酒店行业一站式定制方案<span>酒店环境、选房看房、在线预约、微信支付一条龙搞定</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">微信订房</a></li>
                                  <li><a href="javascript:;">房间展示</a></li>
                                  <li><a href="javascript:;">餐饮预订</a></li>
                                  <li><a href="javascript:;">会员管理</a></li>
                                  <li><a href="javascript:;">一键退房</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjd/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>分店选择、入住时间选择、入住人数、房间类型选择等统统可微信预订，房间预订对接酒店内部管理系统，系统自动实现分配客房。</span>
                                      </div>
                                 </div>
                                 <div class="clearfix cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjd/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>利用精美图片或360全景图等，对房间进行充分展示，给客户最直观地视觉体验，观看360全景时，客户可以通过滑动屏幕放大缩小，任意观看房子的各个角度，真实的感受入住房间的环境和设施。</span>
                                      </div>
                                 </div>
                                 
                                 <div class="clearfix cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjd/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>提供在线订餐服务，支持在线付款与货到付款。除提供酒店本身的餐饮外，酒店还可与附近的餐饮商家合作，给客户提供更多样的选择空间</span>
                                      </div>
                                 </div>
                                 <div class="clearfix cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjd/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>分店选择、入住时间选择、入住人数、房间类型选择等统统可微信预订，房间预订对接酒店内部管理系统，系统自动实现分配客房。</span>
                                      </div>
                                 </div>
                                 <div class="clearfix cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjd/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>免去前台排队退房步骤，公众号一键点击退房，还可选择是否开放票等详细服务。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wjd/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wjd/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统酒店行业</h3>
                                  <dl>
                                      <dt><em></em>办理流程</dt>
                                      <dd>用户入住、退房办理流程繁杂排队等候时间长</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>房间展示</dt>
                                      <dd>缺少房间展示，难以吸引客户</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>联系服务</dt>
                                      <dd>联系前台或服务员渠道单一</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员系统</dt>
                                      <dd>实体会员卡制作成本高，携带麻烦，用户积分查询不便</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>价格调整</dt>
                                      <dd>房价变动频繁，即时通知及操作复杂</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微酒店</h3>
                                  <dl>
                                      <dt><em></em>办理流程</dt>
                                      <dd>用户只需通过微信即可实现房价预定与支付房费</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>房间展示</dt>
                                      <dd>多形式展现房间实景，借助多粉360全景可最真实体验房间环境</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>联系服务</dt>
                                      <dd>线上一键点击呼叫客服，实时对话</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员系统</dt>
                                      <dd>将线下会员与线上管理无缝整合，随时可进行查询消费情况、兑换积等功能</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>价格调整</dt>
                                      <dd>后台可随时调整每天房价和周末价</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjd/index_13.jpg"/>
                                         <strong>房型展示</strong>
                                         <span>触发消费欲望<br/>提升商家形象</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjd/index_15.jpg"/>
                                         <strong>在线订房</strong>
                                         <span>增加销售机会<br/>提升客户体验</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjd/index_17.jpg"/>
                                         <strong>在线退房</strong>
                                         <span>提升消费体验<br/>节省酒店人工成本</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjd/index_19.jpg"/>
                                         <strong>会员管理</strong>
                                         <span>分析消费习惯<br/>提高会员粘度</span>
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
                                           <img src="${imageUrl}/wcontent/wjd/index_26.jpg"/>
                                           <strong>惠东东滨酒家</strong>
                                           <span>创建于1993年10月，拥有二十多年老字号的品牌，总面积达3600平方米、拥有大型停车场、可容纳300辆车停放</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wjd/index_28.jpg"/>
                                           <strong>图家酒店</strong>
                                           <span>酒店环境幽雅，安静舒适，服务周到，独立阳台，品牌家私家电，24小时热水，免费WIFI、网络电视</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wjd/index_30.jpg"/>
                                           <strong>zmax潮漫酒店</strong>
                                           <span>ZMAX潮漫酒店，将打造成为"城中最FUN的智能&社交酒店"，一个各种潮人开Party的首选之地</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wjd/index_32.jpg"/>
                                           <strong>华城大酒店</strong>
                                           <span>吴川华城大酒店座落于吴川市市中心人民西路，与市区海港大道、解放路及325国道相连，交通十分便利</span>
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







