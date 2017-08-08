<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>物业</title>
    <link rel="Shortcut Icon" href="/images/toplogo.ico" type="image/x-icon">
<%@include file="/html/common/css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":411});
    $("#focusad-01").slideLi({"height":439,"width":661,"arrow":true});
    $("#focusad-02").slideLi({"display":"roll","height":635,"width":339,"arrow":true});
})
</script>
</head>

<body>
<div class="wrap carxs">
	
	<%@include file="/html/common/clearfix.jsp" %>
	
     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/wuye/index_02.jpg"></a></li>
         </ul>
     </div>

     <div class="containter">
         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>多粉ERP物业是什么？</h2>
                  <p>一整套融合物业管理和便民服务的平台系统，硬件软件相结合，一点接入多点，即刻助您打造高频刚需的社区生活服务</p>
              </div>
              <div class="content-wrap clearfix wrap1200 auto-beauty-01">
                  <ul>
                      <li class="clearfix">
                         <img src="${imageUrl}/wuye/index_05.jpg" class="fl main-img">
                         <div class="fl label-txt">业主信息、身份审核<br/>房产管理、维修管理</div>
                         <img src="${imageUrl}/wuye/index_08.jpg" class="fl more-img">
                         <div class="fl descrip-txt"><p>线上数字化物业信息，构建物业资讯线上共享、物业维修随手查、物业缴费一键通的智能信息化平台，为物业公司带来管理效率和服务质量的提升<p></div>
                      </li>
                      <li class="clearfix">
                         <img src="${imageUrl}/wuye/index_12.jpg" class="fl main-img">
                         <div class="fl label-txt">业主信息、身份审核<br/>房产管理、维修管理</div>
                         <img src="${imageUrl}/wuye/index_08.jpg" class="fl more-img">
                         <div class="fl descrip-txt"><p>围绕业主各种家庭服务需求进行资源配置，服务更周到全面，同时节约大量人力成本和沟通成本<p></div>
                      </li>
                  </ul>
              </div>
         </div>

         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>揽胜家园ERP解决方案</h2>
              </div>
              <div class="content-wrap">
                  <div class="tabbox">
                       <ul class="bh">
                           <li class="selected">视频介绍</li>
                           <li>PC端</li>
                           <li>手机端</li>
                       </ul>
                       <div class="bd">
                           <div class="cont selected">
                               <a href="javascript:void(0);"><img src="${imageUrl}/wuye/index_09.jpg"></a>
                           </div>
                           <div class="cont">
                               <div class="roll-wrap">
                                    <div class="main-wrap" id="focusad-01">
                                         <div class="ov-wrap">
                                           <ul>
                                               <li><img src="${imageUrl}/wuye/pic1.jpg"></li>
                                               <li><img src="${imageUrl}/wuye/pic2.jpg"></li>
                                               <li><img src="${imageUrl}/wuye/pic3.jpg"></li>
                                           </ul>
                                         </div>
                                    </div>
                               </div>
                           </div>
                           <div class="cont">
                                <div class="switch-wrap">
                                    <div class="main-wrap" id="focusad-02">
                                         <div class="ov-wrap">
                                             <ul>
                                                 <li class="current">
                                                     <img src="${imageUrl}/wuye/p1.png">
                                                     <img src="${imageUrl}/wuye/share.png" class="shape">
                                                 </li>
                                                 <li>
                                                     <img src="${imageUrl}/wuye/p2.png">
                                                     <img src="${imageUrl}/wuye/share.png" class="shape">
                                                 </li>
                                                 <li>
                                                    <img src="${imageUrl}/wuye/p3.png">
                                                    <img src="${imageUrl}/wuye/share.png" class="shape">
                                                 </li>
                                             </ul>
                                         </div>
                                    </div>
                               </div>
                           </div>
                       </div>
                  </div>
              </div>
         </div>

         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>智慧物业ERP</h2>
              </div>
              <div class="content-wrap wrap1200">
                  <ul class="clearfix block-list-wrap-02">
                     <li>
                        <img src="${imageUrl}/wuye/index_14.jpg" class="block">
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_16.jpg" class="block">
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_18.jpg" class="block">
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_20.jpg" class="block">
                     </li>
                  </ul>
              </div>
         </div>

         <div class="part-wrap">
              <div class="title-wrap">
                  <h2>更多特色功能</h2>
              </div>
              <div class="content-wrap wrap1200">
                  <ul class="clearfix  block-list-wrap block-list-wrap-01 characteristic-function">
                     <li>
                        <img src="${imageUrl}/wuye/index_27.jpg" class="block">
                        <h3>社区公告</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_30.jpg" class="block">
                        <h3>智能维修/投诉</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_33.jpg" class="block">
                        <h3>智能缴费账单系统</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_36.jpg" class="block">
                        <h3>委托租房</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_42.jpg" class="block">
                        <h3>装修申请</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_44.jpg" class="block">
                        <h3>抄表查询</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_47.jpg" class="block">
                        <h3>业主之家</h3>
                     </li>
                     <li>
                        <img src="${imageUrl}/wuye/index_50.jpg" class="block">
                        <h3>便民服务</h3>
                     </li>
                  </ul>
              </div>
         </div>

         <div class="bzerwm-wrap">
              <img src="${imageUrl}/bzerwm.jpg" class="block">
              <p>扫一扫立即体验</p>
              <a href="http://duofriend.com/user/toregister.do" class="base_abtn imMakeAd">立即体验柜台版</a>
         </div>

         
     </div>

     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
</html>



