<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微政务</title>
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wzw/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wzw">
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
                     <li><a href="wzw.jsp" class="lnav10 selected"><em class="sys_icon"></em>微政务</a></li>
                     <li><a href="wxx.jsp" class="lnav11"><em class="sys_icon"></em>微休闲</a></li>
                     <li><a href="wqx.jsp" class="lnav12"><em class="sys_icon"></em>微汽修</a></li>
                     <li><a href="wgc.jsp" class="lnav13"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微政务</h1>
                     <p class="subtitle">“听”民声、“答”民疑、“解”民忧，<span>响应国家政务公开号召,展示国家公务机关形象</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">公开资讯</a></li>
                                  <li><a href="javascript:;">接待预约</a></li>
                                  <li><a href="javascript:;">便民之窗</a></li>
                                  <li><a href="javascript:;">党务风采</a></li>
                                  <li><a href="javascript:;">招聘信息</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzw/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>领导分工、组织机构、民政动态、办事指南，服务群众全
方位，公开透明的的办事风格，让群众更加相信政府。做
到执法公开，交流互动。了解民情，倾听民意、收集意见、
答疑解惑。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzw/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>提供一键预约服务，预约办事、报名，让排队办事一去不
复返，真正提供便民服务，同时政务行业的预约效率，同
时政务行业也可以获取办理事务客户的信息，方便统一管
理，共享移动互联时代的便利。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzw/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>为市民提供最新的政务咨询、办事指南，便民利民。会有
专业人士专门负责解答市民所询问相关的政务问题。接受
网上举报、投诉、建议等业务。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzw/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>领导分工、组织机构、民政动态、办事指南，服务群众全
方位，公开透明的的办事风格，让群众更加相信政府。做
到执法公开，交流互动。了解民情，倾听民意、收集意见、
答疑解惑。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wzw/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>发布权威省内政府及事业单位招聘信息,包括事业单位招聘
报名时间、招聘报名入口、招考条件。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wzw/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wzw/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统政务</h3>
                                  <dl>
                                      <dt><em></em>消息通知</dt>
                                      <dd>行业出台政策新闻无法第一时间告知受众</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>政务流程</dt>
                                      <dd>政务流程复杂且地方分散，市民办理业务手续繁琐</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>信息数据</dt>
                                      <dd>政府网站信息更新滞后，而且各个职能部门间的数据互不来往</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>发布信息</dt>
                                      <dd>记者的认知有限易导致新闻报道偏差造成负面影响</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>民众互动</dt>
                                      <dd>民众互动平台渠道有限</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微政务</h3>
                                  <dl>
                                      <dt><em></em>消息通知</dt>
                                      <dd>拥有公告板块，第一时间推送最新政策与消息。</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>政务流程</dt>
                                      <dd>提供流程的重组和优化提供全新线上业务办理的平台</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>信息数据</dt>
                                      <dd>依托微信大数据处理能力，完成对各部门信息数据的整合</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>发布信息</dt>
                                      <dd>通过微政务即时发布信息引导舆论导向</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>民众互动</dt>
                                      <dd>搭建便民窗口，亲民利民</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzw/index_13.jpg"/>
                                         <strong>塑造形象</strong>
                                         <span>开放式服务大厅<br/>一站式便民服务平台</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzw/index_15.jpg"/>
                                         <strong>搭建桥梁</strong>
                                         <span>让政务听百姓声音<br/>构建最直接的桥梁</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzw/index_17.jpg"/>
                                         <strong>树立权威</strong>
                                         <span>使“指尖上的政民<br/>对话”成为可能</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wzw/index_19.jpg"/>
                                         <strong>信息透明</strong>
                                         <span>拓宽公众监督渠道<br/>增加服务的透明度</span>
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
                                           <img src="${imageUrl}/wcontent/wzw/index_26.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wzw/index_28.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wzw/index_30.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wzw/index_32.jpg"/>
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







