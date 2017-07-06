<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微美容</title>
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
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

     <div class="containt wcontent wmr">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2"><em class="sys_icon"></em>微装修</a></li>
                     <li><a href="wyl.jsp" class="lnav3"><em class="sys_icon"></em>微医疗</a></li>
                     <li><a href="wjd.jsp" class="lnav4"><em class="sys_icon"></em>微酒店</a></li>
                     <li><a href="wly.jsp" class="lnav5"><em class="sys_icon"></em>微景区</a></li>
                     <li><a href="wjy.jsp" class="lnav6"><em class="sys_icon"></em>微教育</a></li>
                     <li><a href="wmr.jsp" class="lnav7 selected"><em class="sys_icon"></em>微美容(美发)</a></li>
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
                     <h1>微美容(美发)</h1>
                     <p class="subtitle">专业打造指尖上的美丽<span>为客户提供全方位服务</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li4">
                                  <li class="selected"><a href="javascript:;">实时预约</a></li>
                                  <li><a href="javascript:;">关联会员卡</a></li>
                                  <li><a href="javascript:;">在线商城</a></li>
                                  <li><a href="javascript:;">技师管理</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wmr/1/mrhy_05.png"/></div>
                                      <div class="fr txtbox">
                                          <span>粉丝可以进行实时预约服务，粉丝关注商家，即可查看服务项目、时间安排及技师服务时间，粉丝可按需求进行选择。为商家省时省力，提高商家的服务效率。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wmr/1/mrhy_051.png"/></div>
                                      <div class="fr txtbox">
                                          <span>支持设置关联会员卡，粉丝可以查看积分、商家活动详情与领取优惠券，保障粉丝对商家的忠诚度，提高粉丝粘性，形成二次营销。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wmr/1/mrhy_052.png"/></div>
                                      <div class="fr txtbox">
                                          <span>支持设置在线商城、优惠买单、开启活动价应用、商家产品展示。吸引粉丝关注，刺激粉丝消费。有利于商家留住老粉丝，吸引新粉丝，形成粉丝沉淀。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wmr/1/mrhy_053.png"/></div>
                                      <div class="fr txtbox">
                                          <span>技师拥有个人操作页面，输入账号与密码便能查看与操作，包括上钟管理、下钟管理时间，了解近期的工作内容与商家信息。保障商家对技师工作的管理与调配，有利于商家与技师之间的分工合作，提高工作效率。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>产品详情</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wmr/1/mrhy_07.png" class="itembh">
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <img src="${imageUrl}/wcontent/wmr/1/mrhy_08.png"/>
                                     <strong>实时预约</strong>
                                     <span>提升粉丝体验<br/>增加销售机会</span>
                                 </li>
                                 <li>
                                     <img src="${imageUrl}/wcontent/wmr/1/mrhy_09.png"/>
                                     <strong>关联会员卡</strong>
                                     <span>提高粉丝粘度<br/>进行二次营销</span>
                                 </li>
                                 <li>
                                     <img src="${imageUrl}/wcontent/wmr/1/mrhy_10.png"/>
                                     <strong>商城优惠</strong>
                                     <span>产品展示销售<br/>优惠活动刺激消费</span>
                                 </li>
                                 <li>
                                     <img src="${imageUrl}/wcontent/wmr/1/mrhy_11.png"/>
                                     <strong>技师管理</strong>
                                     <span>技师超酷自主管理<br/>商家与技师分工合作</span>
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







