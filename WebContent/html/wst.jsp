<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微食堂(饭票)</title>
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<%@include file="/html/common/css.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":401});
})
</script>
<style type="text/css">
.wcontent .pc_item .tabbox .bd .imgbox{width: 520px;} 
.wcontent .pc_item .tabbox .bd .txtbox{width: 400px;} 
.wcontent .item_pk{height: auto;margin: 20px 0 0 0;} 
.wcontent .iconlist {margin:80px 0 100px 0;}
.wcontent .pc_item .tabbox{margin-bottom: 40px}
</style>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/wcontent/wmr/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wst">
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
                     <li><a href="wqx.jsp" class="lnav12"><em class="sys_icon"></em>微汽修</a></li>
                     <li><a href="wgc.jsp" class="lnav13"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14 selected"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微食堂(饭票)</h1>
                     <p class="subtitle">高效管理员工餐饮<span>轻松饮食</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">菜品展示</a></li>
                                  <li><a href="javascript:;">定点订餐</a></li>
                                  <li><a href="javascript:;">余额充值</a></li>
                                  <li><a href="javascript:;">按量采购</a></li>
                                  <li><a href="javascript:;">现场核销</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/mrhy/wcy_03.png"/></div>
                                      <div class="fr txtbox">
                                          <span>早餐、中餐、晚餐与宵夜，商家可按需求选择。商家可以上传菜品图片，编写菜品名称与内容，有助于员工查看每周菜单，清楚了解到各个时段菜品的分布内容，吸引员工订餐。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/mrhy/wcy_04.png"/></div>
                                      <div class="fr txtbox">
                                          <span>支持设置四种市别的订餐时间与用餐时间，实行定点订餐，保障员工在规定时间里进行订餐与用餐，让商家轻松管理食堂预订与用餐时间。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/mrhy/wcy_05.png"/></div>
                                      <div class="fr txtbox">
                                          <span>支持商家为员工饭票卡进行余额充值、购买饭票与补助的功能，有助于商家对用餐员工的管理，有利于提高饭票卡使用率。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/mrhy/wcy_06.png"/></div>
                                      <div class="fr txtbox">
                                          <span>商家可以通过手机查看订餐人数，进行按量采购，有利于商家控制食堂采购成本。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/mrhy/wcy_08.png"/></div>
                                      <div class="fl txtbox">
                                          <span>支持商家现场核销，通过输入取餐号码或扫描即可现场核销，提升食堂工作进度。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>产品详情</h2>
                         <div style="text-align: center;padding: 50px 0 80px 0;">
                              <a href="javascript:WSFUNCTION.videoFrame('http://v.qq.com/iframe/player.html?vid=c03666zb0ob&tiny=0&auto=0');"><img src="${imageUrl}/wcontent/mrhy/wcy-vedio.jpg"></a>
                         </div>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/mrhy/wcy_07.png" class="itembh">
                              
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <img src="${imageUrl}/wcontent/mrhy/wcy_11.png"/>
                                     <strong>菜品展示</strong>
                                     <span>激发订餐欲望<br/>提高食堂消费</span>
                                 </li>
                                 <li>
                                     <img src="${imageUrl}/wcontent/mrhy/wcy_13.png"/>
                                     <strong>定点订餐</strong>
                                     <span>轻松管理食堂工作时间<br/>方便员工按点自助订餐</span>
                                 </li>
                                 <li>
                                     <img src="${imageUrl}/wcontent/mrhy/wcy_15.png"/>
                                     <strong>余额充值</strong>
                                     <span>节约人力与财力成本<br/>提升员工用餐体验</span>
                                 </li>
                                 <li>
                                     <img src="${imageUrl}/wcontent/mrhy/wcy_17.png"/>
                                     <strong>按量采购</strong>
                                     <span>查看订餐数量<br/>有效控制采购成本 </span>
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







