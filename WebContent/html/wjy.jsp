<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微教育</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wjy/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wjy">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2"><em class="sys_icon"></em>微装修</a></li>
                     <li><a href="wyl.jsp" class="lnav3"><em class="sys_icon"></em>微医疗</a></li>
                     <li><a href="wjd.jsp" class="lnav4"><em class="sys_icon"></em>微酒店</a></li>
                     <li><a href="wly.jsp" class="lnav5"><em class="sys_icon"></em>微景区</a></li>
                     <li><a href="wjy.jsp" class="lnav6 selected"><em class="sys_icon"></em>微教育</a></li>
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
                     <h1>微教育</h1>
                     <p class="subtitle">打通家长、学生、老师三方互动通道<span>完善教育O2O重要连接环节于您的餐饮O2O模式</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">查询分数</a></li>
                                  <li><a href="javascript:;">家庭报告书</a></li>
                                  <li><a href="javascript:;">在线报名</a></li>
                                  <li><a href="javascript:;">老师答疑</a></li>
                                  <li><a href="javascript:;">发布作业</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjy/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>公开程度人性化管理，自动查询方便快捷，帮助教育机构连接成绩查询模块，为家长和学生提供查询分数入口，可第一时间知晓成绩。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjy/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>绑定家长信息，学校通知、班级通知、班级动态、家庭报告书家长只需通过微教育便可一手掌握，家长足不出户就可以了解孩子在校的情况</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjy/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>可让学生在手机上选定所需要的课程，留下联系方式便可预定课程，不仅为学生提供了便利，也为之后的统计分析提供了数据支持。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjy/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>通过微教育设置家长、学生、教室线上互动入口，破时间地域限制，填充碎片化教育，课内课外知识共享，可以进行在线答疑、话题讨论、讲座互动等活动。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wjy/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>老师通过登录作业管理系统，可在线发布课堂作业，学生登录作业管理系统进行作业查看。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wjy/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wjy/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统教育行业</h3>
                                  <dl>
                                      <dt><em></em>教育模式</dt>
                                      <dd>传统教育方式功能分散，没有针对性</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>推广宣传</dt>
                                      <dd>教育机构推广费用高，效果低</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>教育资源</dt>
                                      <dd>用户时间碎片化，传统面授教育无法满足学生教育需求</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>家校沟通</dt>
                                      <dd>家校沟通模式封闭，基本都是利用短信和书面文件完成</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>报名方式</dt>
                                      <dd>需到现场才能进行报名，步骤繁琐，耗费人力、时间</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微教育</h3>
                                  <dl>
                                      <dt><em></em>教育模式</dt>
                                      <dd>线上线下资源共享，引导用户一键到达服务</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>推广宣传</dt>
                                      <dd>接入微信平台，作为教育行业品牌自媒体，用户即是广告最佳宣传者</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>教育资源</dt>
                                      <dd>打破地域时间限制，整合资源优化，填充碎片化教育</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>家校沟通</dt>
                                      <dd>打通家长、学生、老师三方互动通道，完善教育O2O重要连接环节</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>报名方式</dt>
                                      <dd>提供教育培训机构更为便捷的移动端报名服务，在线报名、课程预约线上一键操作</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjy/index_13.jpg"/>
                                         <strong>平台化</strong>
                                         <span>教育服务多样化<br/>资源共享化</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjy/index_15.jpg"/>
                                         <strong>社交化</strong>
                                         <span>网络互动教学<br/>及时答疑解惑</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjy/index_17.jpg"/>
                                         <strong>信息化</strong>
                                         <span>学生及时通知<br/>家校沟通更便捷</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wjy/index_19.jpg"/>
                                         <strong>多元化</strong>
                                         <span>教育方式多元化<br/>学习更高效</span>
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
                                           <img src="${imageUrl}/wcontent/wjy/index_26.jpg"/>
                                           <strong>爱乐童幼儿园</strong>
                                           <span>爱童乐幼儿园是一所全日制国有民办幼儿园。园内办学方向明确、管理思路清晰。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wjy/index_28.jpg"/>
                                           <strong>丝卡美发职业培训学校</strong>
                                           <span>汕头市丝卡美发职业培训学校是具有权威和规模的国际性美发连锁机构，培训技术和经验是多年不断创新发展和检验的结果。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wjy/index_30.jpg"/>
                                           <strong>达德教育</strong>
                                           <span>达德教育集团 于1993年创立，致力于发展基础教育、职业教育、高等继续教育和企业培训等现代教育体系。</span>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wjy/index_32.jpg"/>
                                           <strong>揭阳第三中学</strong>
                                           <span>揭阳第三中学是揭阳市人民政府批准成立的全日制高级中学。在上级领导的高度重视和大力支持下，学校于2009年3月动工兴建。</span>
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







