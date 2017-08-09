<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>智慧城市</title>

<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":403});
})
</script>
</head>

<body>
<div class="wrap">
   <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/smartycity/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containter mobileAd smartyCity">
          <div class="wrap1000">
              <div class="item_title">
                  <h2>智慧城市</h2>
                  <div class="fbt"><em></em><span>City</span><em></em></div>
                  <p>多粉智慧城市通过微信智能链接，整合城市运行核<br/>心系统的各项关键信息，实现城市智慧式管理和运行</p>
              </div> 

              <div class="item_main item_main2">
                   <ul class="li3 clearfix">
                       <li>
                          <img src="${imageUrl}/smartycity/city_05.jpg"/>
                          <div class="tgc_tit">
                               <span>提供城市服务多种模板，基础服务<br/>个性选配，为市民提供更多便利</span>
                           </div>
                       </li>
                       <li>
                          <img src="${imageUrl}/smartycity/city_07.jpg"/>
                          <div class="tgc_tit">
                               <span>整合城市信息资源、建立电子<br/>政务、电子民生等信息化平台</span>
                           </div>
                       </li>
                       <li>
                          <img src="${imageUrl}/smartycity/city_09.jpg"/>
                          <div class="tgc_tit">                               
                          <span>据提供的信息与数据，实现与公众<br/>号相融合，共同构建智慧城市管理</span>
                           </div>
                       </li>
                   </ul>
              </div>  

   
              <div class="item_title">
                  <h2>智慧城市服务</h2>
              </div>  

             <div class="support clearfix">
                 <dl>
                    <dt><img src="${imageUrl}/smartycity/city_15.jpg"/>公众号建设</dt>
                    <dd>平台提供公众号创建及菜单配置等功能，并可根据选定的基础服务模板快速上线服务，特殊需求可由平台定制开发。</dd>
                 </dl>
                 <dl>
                    <dt><img src="${imageUrl}/smartycity/city_18.jpg"/>公众号运营</dt>
                    <dd>内容运营管理后台支持账号图文群发功能，用户统一管理，最新服务动态消息可一手传达。</dd>
                 </dl>
                 <dl>
                    <dt><img src="${imageUrl}/smartycity/city_23.jpg"/>数据分析</dt>
                    <dd>宏观、微观两个维度进行用户数据、服务使用情况、关键词等数据分析，定期形成反馈，供城市运行管理者及运营人员参考。</dd>
                 </dl>
                 <dl>
                    <dt><img src="${imageUrl}/smartycity/city_25.jpg"/>城市运行管理</dt>
                    <dd>依据微信公众号，打通政务民生平台链接，提供更全面城市服务功能，共同构建智慧城市管理。 </dd>
                 </dl>
             </div>

            

               <div class="descript Sdescript">
                 <div class="acticle">
                      <strong class="atitle">便民服务</strong>
                      <div class="item_main clearfix">
                           <ul class="clearfix">
                               <li class="clearfix">
                                  <a href="#">
                                  <img src="${imageUrl}/smartycity/city_29.jpg"/>
                                  <span class="tgc_tit tt1">
                                       <em></em>
                                       <strong>交管</strong>
                                       <span>解决警民信息交互难，办事缴费排队久，线下资源紧张等难题。</span>
                                   </span>
                                   <span class="itgc_tit tt1">
                                       <em></em>
                                       <strong>交管</strong>
                                       <span>信息查询、办理预约、<br/>在线缴罚、快速理赔。</span>
                                   </span>
                                   </a>
                               </li>
                               <li class="clearfix">
                                  <a href="#">
                                  <img src="${imageUrl}/smartycity/city_31.jpg"/>
                                  <span class="tgc_tit tt2">
                                       <em></em>
                                       <strong>政务</strong>
                                       <span>开启政府便民窗口，为政府信息公开和公共服务的扩展和延展提供载体。</span>
                                   </span>
                                   <span class="itgc_tit tt2">
                                       <em></em>
                                       <strong>政务</strong>
                                       <span>信息查询、办理预约、<br/>在线缴罚、快速理赔。</span>
                                   </span>
                                   </a>
                               </li>
                               <li class="clearfix">
                                  <a href="#">
                                  <img src="${imageUrl}/smartycity/city_33.jpg"/>
                                  <span class="tgc_tit tt3">
                                       <em></em>
                                       <strong>停车</strong>
                                       <span>实现停车位资源利用率的最大化、停车场利润的最大化和车主停车服务的最优化。</span>
                                   </span>
                                   <span class="itgc_tit tt3">
                                       <em></em>
                                       <strong>停车</strong>
                                       <span>自主缴费、车位查询、<br/>车位导航、车况查询。</span>
                                   </span>
                                   </a>
                               </li>
                               <li class="clearfix">
                                  <a href="#">
                                  <img src="${imageUrl}/smartycity/city_38.jpg"/>
                                  <span class="tgc_tit tt4">
                                       <em></em>
                                       <strong>票务</strong>
                                       <span>随时随地购票选座，微信卡包自动保存，电影档期实时更新，市民足部出户即可轻松购票。</span>
                                   </span>
                                   <span class="itgc_tit tt4">
                                       <em></em>
                                       <strong>票务</strong>
                                       <span>微信售票、在线选座、<br/>电子票据、电子验票。</span>
                                   </span>
                                   </a>
                               </li>
                               <li class="clearfix">
                                  <a href="#">
                                  <img src="${imageUrl}/smartycity/city_39.jpg"/>
                                  <span class="tgc_tit tt5">
                                       <em></em>
                                       <strong>交通</strong>
                                       <span>有效解决市民出行购票排队难题，降低售票窗口人工成本与压力，为市民出行提供便利。</span>
                                   </span>
                                   <span class="itgc_tit tt5">
                                       <em></em>
                                       <strong>交通</strong>
                                       <span>查询班次、在线购票、<br/>电子验票、路线查询。</span>
                                   </span>
                                   </a>
                               </li>
                               <li class="clearfix">
                                  <a href="#">
                                  <img src="${imageUrl}/smartycity/city_40.jpg"/>
                                  <span class="tgc_tit tt6">
                                       <em></em>
                                       <strong>民生</strong>
                                       <span>提供在线生活水店煤气缴费业务，解决抄表难、排队长、网点少三大难题。</span>
                                   </span>
                                   <span class="itgc_tit tt6">
                                       <em></em>
                                       <strong>民生</strong>
                                       <span>故障上报、缴纳费用、<br/>派单转接、在线客服。</span>
                                   </span>
                                   </a>
                               </li>
                            </ul>
                        </div>
                    </div>
                </div>





              <div class="tf_program">
                   <ul class="clearfix">
                       <li><img src="${imageUrl}/zeshop/zeshop_34.png"/><span>技术支持</span></li>
                       <li><img src="${imageUrl}/zeshop/zeshop_36.png"/><span>即时故障处理</span></li>
                       <li><img src="${imageUrl}/zeshop/zeshop_38.png"/><span>1V1大客户服务</span></li>
                       <li><img src="${imageUrl}/zeshop/zeshop_40.png"/><span>7×24小时服务</span></li>
                       <li class="lastli"><img src="${imageUrl}/zeshop/zeshop_42.png"/><span>定制开发</span></li>
                   </ul>
              </div> 



          </div>
      </div>



    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
</body>
</html>



