<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微医疗</title>

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
             <li><a href="#"><img src="${imageUrl}/wcontent/wyl/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wyl">
         <div class="wrap1200 clearfix">
             <div class="lside">
                 <ul class="lnav">
                     <li><a href="wcy.jsp" class="lnav1"><em class="sys_icon"></em>微餐饮</a></li>
                     <li><a href="wzx.jsp" class="lnav2"><em class="sys_icon"></em>微装修</a></li>
                     <li><a href="wyl.jsp" class="lnav3 selected"><em class="sys_icon"></em>微医疗</a></li>
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
                     <h1>微医疗</h1>
                     <p class="subtitle">预约挂号、医生在线、<span>医院实景展示、专家资质查询一应俱全</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">在线挂号</a></li>
                                  <li><a href="javascript:;">医生在线</a></li>
                                  <li><a href="javascript:;">科室信息</a></li>
                                  <li><a href="javascript:;">床位预约</a></li>
                                  <li><a href="javascript:;">报告检查</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wyl/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>确定需要上门看诊后，患者只需打开医院微信公众平台，智能选择病患部位，可进入相应科室，选择专家，时段，预约挂号；支付挂号费用，完成挂号，无须去医院排队。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wyl/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>在线咨询医生，根据患者的病情提供专业性建议，提升就医指引服务，节省患者时间。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wyl/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>展示各个科室名称、所属分组、科室简介等信息。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wyl/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>进入床位预约，选择床位类型以及相关备注信息，提交预约，就能实现移动在线床位预约。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wyl/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>不用去医院就能在线查询报告，省事省力，随时随地进行结果查询；问诊列表轻松查看，相同问题无须再费时咨询。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wyl/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wyl/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统医疗行业</h3>
                                  <dl>
                                      <dt><em></em>挂号候诊</dt>
                                      <dd>医院号源无处查，挂号排队难 </dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>诊疗流程</dt>
                                      <dd>看诊缴费、取报告诊疗流程繁琐</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消息通知</dt>
                                      <dd>医院、专家停诊等临时消息无法得知 </dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>沟通服务</dt>
                                      <dd>医患沟通时间短</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>布局指引</dt>
                                      <dd>科目诊室太多，看诊过程得不到有效指引</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微医疗</h3>
                                  <dl>
                                      <dt><em></em>挂号候诊</dt>
                                      <dd>微信挂号，候诊提醒 </dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>诊疗流程</dt>
                                      <dd>微信线上支付，电子报告线上实时送达查看</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>消息通知</dt>
                                      <dd>科室信息一键查看，微信即时通知推送 </dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>沟通服务</dt>
                                      <dd>在线咨询医生，提升就医指引服务</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>布局指引</dt>
                                      <dd>微信展示医院科室布局，门诊就医流程图</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wyl/index_13.jpg"/>
                                         <strong>提高医患互动</strong>
                                         <span>在线咨询医生<br/>看病无需到医院</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wyl/index_15.jpg"/>
                                         <strong>提高服务质量</strong>
                                         <span>就医流程微信化<br/>通知提醒人性化</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wyl/index_17.jpg"/>
                                         <strong>提高就医体验</strong>
                                         <span>检查报告无纸化<br/>缴费环节移动化</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wyl/index_19.jpg"/>
                                         <strong>减少人工成本</strong>
                                         <span>线上线下相结合<br/>患者看病自主化</span>
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
                                           <img src="${imageUrl}/wcontent/wyl/index_26.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wyl/index_28.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wyl/index_30.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wyl/index_32.jpg"/>
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







