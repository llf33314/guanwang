<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微房产</title>
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wfc/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wfc">
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
                     <li><a href="wfc.jsp" class="lnav9 selected"><em class="sys_icon"></em>微房产</a></li>
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
                     <h1>微房产</h1>
                     <p class="subtitle">购房者的随身小秘书，<span>最全面、最贴心的房产销售专家</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">全景展示</a></li>
                                  <li><a href="javascript:;">预约看房</a></li>
                                  <li><a href="javascript:;">销售比拼</a></li>
                                  <li><a href="javascript:;">微现场</a></li>
                                  <li><a href="javascript:;">以老带新</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wfc/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>将房产信息、活动、服务等通过网页的形式展现，把楼盘美景展现到楼盘相册中。360度全景看房时可动态查看样板房的每个细节，帮助房地产企业全面展现楼盘的相关信息，楼盘内景图片、户型介绍、周边配套等一应俱全。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wfc/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>多粉微房产中可实现预约看房、拼团看房等功能，用户可通过微信直接预约看房，选择房型户型、上门时间等，售楼处随时查看预约信息，坐等用户主动上门；在线预约拼团看房，拉人团购买房越多越便宜，有效刺激用户消费，带动销售量。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wfc/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>建立房产销售人员评分考核机制，让粉丝对销售人员给予分数评定，收集粉丝反馈，根据统计对销售人员情况做出判断。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wfc/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>提供大型的现场微信互动工具，摇一摇赛跑、大屏互动、优惠券等营销工具，快速帮助商家进行促销活动，在一定需求期内，对消费者以让利形式进行促销。助力房企品牌推广、增强客户互动，刺激成交量。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wfc/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>基于微房产搭建的以老带新平台，整合社交人脉资源，快速高效挖掘潜在客户，通过奖励机制，让老客户也成为房企销售会员，促进房产成交量的提升。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wfc/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wfc/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统房产行业</h3>
                                  <dl>
                                      <dt><em></em>展示信息</dt>
                                      <dd>线下看房，费时费力</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>活动推广</dt>
                                      <dd>活动营销，广告推广成本过高</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>服务质量</dt>
                                      <dd>房产销售人员服务质量无法把控</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>意向客户</dt>
                                      <dd>看楼盘人数流动量大，难以把握意向客户</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>营销体系</dt>
                                      <dd>缺乏完整的二次营销体系</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微房产</h3>
                                  <dl>
                                      <dt><em></em>展示信息</dt>
                                      <dd>在线全方位展示，及时提供房产信息</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>活动推广</dt>
                                      <dd>借助微房产互动、吸粉、展现系统，能够快速高效全面推广。</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>服务质量</dt>
                                      <dd>提供有效的销售人员评分机制</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>意向客户</dt>
                                      <dd>公众号在线预约看房，让意向客户主动联系你</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>营销体系</dt>
                                      <dd>拥有完整的老带新机制，充分整合利用客户资源，带来销售机会</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wfc/index_13.jpg"/>
                                         <strong>线上预约</strong>
                                         <span>简化预约流程<br/>抓住精准用户</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wfc/index_15.jpg"/>
                                         <strong>以老带新</strong>
                                         <span>增加销售机会<br/>实现精准营销</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wfc/index_17.jpg"/>
                                         <strong>全景展示</strong>
                                         <span>提升消费体验<br/>展现商家形象</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wfc/index_19.jpg"/>
                                         <strong>房产营销</strong>
                                         <span>增加客户互动<br/>刺激成交量</span>
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
                                           <img src="${imageUrl}/wcontent/wfc/index_26.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wfc/index_28.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wfc/index_30.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wfc/index_32.jpg"/>
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







