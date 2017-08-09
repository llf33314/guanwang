<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微装修</title>

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
             <li><a href="#"><img src="${imageUrl}/wcontent/wcy/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wzx">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2 selected"><em class="sys_icon"></em>微装修</a></li>
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
                     <h1>微装修</h1>
                     <p class="subtitle">告别落后装修营销模式<span>进入微装修O2O时代</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">装修预约</a></li>
                                  <li><a href="javascript:;">装修社区</a></li>
                                  <li><a href="javascript:;">360全景展示</a></li>
                                  <li><a href="javascript:;">以老带新</a></li>
                                  <li><a href="javascript:;">工程维护</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzx/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>装修类型、装修风格、资金预算、装修材料等等可微信预约一键选择，操作简单，响应快，后台及短信即时通知客户预约信息，打通装修行业线上预约入口。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzx/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>将用户聚集到一起形成的粉丝交流社区，企业品牌的宣传阵地。在装修社区中，用户可以按天签到、发表、评论和分享话题，商家可以通装修社区解答粉丝难题，与粉丝进行交流互动，拉近粉丝距离。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzx/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>360全景装修案例展示，采用高清画面制作，3D视觉效果，下、左右，空间的交替、转换随心操控，点、线、面构成的三维空间，足不出户就可欣赏着全方位的细节。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzx/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>自主设置需求、奖励、规则，利用老带新奖励机制，充分挖掘社交关系网，实现个性推荐与精准营销。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzx/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>打通装修行业线上售后服务窗口，提供房屋维修、翻新改造、墙面基层管理等工程维护，可线上下单,更有一键呼叫上门服务。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wzx/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wzx/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统装修行业</h3>
                                  <dl>
                                      <dt><em></em>案例展示</dt>
                                      <dd>缺少全面的装修案例展示，往往采用2D平面案例图，难以打动客户</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>营销方式</dt>
                                      <dd>业主第一次装修过后难有二次营销机会</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>联系服务</dt>
                                      <dd>客户资料不全，管理不规范，无法形成有效的统计</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员系统</dt>
                                      <dd>客户需到店提出装修诉求，流程繁琐体验差</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>活动推广</dt>
                                      <dd>活动营销，推广成本过高</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微装修</h3>
                                  <dl>
                                      <dt><em></em>案例展示</dt>
                                      <dd>采用360全景装修案例展示，可以全景空间里进行切换，给客户身临其境的视觉体验</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>营销方式</dt>
                                      <dd>拥有完整的老带新机制，充分整合利用客户资源，带来销售机会</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>联系服务</dt>
                                      <dd>打通线上会员体系，时刻了解客户需求，客户资料统一管理</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>会员系统</dt>
                                      <dd>提供线上预约服务，高效处理客户需求</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>活动推广</dt>
                                      <dd>借助微装修互动、吸粉、展现系统，能够快速高效全面推广</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzx/index_13.jpg"/>
                                         <strong>线上预约</strong>
                                         <span>简化预约流程<br/>提升消费体验</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzx/index_15.jpg"/>
                                         <strong>以老带新</strong>
                                         <span>增加销售机会<br/>实现精准营销</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzx/index_17.jpg"/>
                                         <strong>全景展示</strong>
                                         <span>提升消费体验<br/>展现商家形象</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzx/index_19.jpg"/>
                                         <strong>会员体系</strong>
                                         <span>线上线下会员结合<br/>让口碑传的更快</span>
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
                                           <img src="${imageUrl}/wcontent/wzx/index_26.jpg"/>
                                           <strong>惠健建陶</strong>
                                           <span>创建于1993年10月，拥有二十多年老字号的品牌，总面积达3600平方米、拥有大型停车场、可容纳300辆车停放</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wzx/index_28.jpg"/>
                                           <strong>一鸣色宝</strong>
                                           <span>深圳市一鸣化工有限公司成立于2000年。是一家生产研发高级颜料、助剂、色浆的专业公司，在全国部分地区设有分支机构。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wzx/index_30.jpg"/>
                                           <strong>祥泰公司</strong>
                                           <span>祥泰幕墙装饰材料公司位于惠州大道小金口段1030号，成立于1998年，主要经销代理美源铝材，销售高档推拉门、五金配件及不锈钢防盗网。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wzx/index_32.jpg"/>
                                           <strong>A家家具</strong>
                                           <span>A家家居，中国家居行业领军品牌，隶属洋臣木业（家具）集团，为全球超过300万家庭提供健康、舒适、环保的客厅和卧房家居产品。</span>
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







