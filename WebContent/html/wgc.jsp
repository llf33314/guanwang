<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>微工厂</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
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
             <li><a href="#"><img src="${imageUrl}/wcontent/wgc/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containt wcontent wgc">
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
                     <li><a href="wgc.jsp" class="lnav13 selected"><em class="sys_icon"></em>微工厂</a></li>
                     <li><a href="wst.jsp" class="lnav14"><em class="sys_icon"></em>微食堂(饭票)</a></li>
                 </ul>
             </div>
             <div class="mside">
                 <div class="p_title">
                     <em class="sys_icon"></em>
                     <h1>微工厂</h1>
                     <p class="subtitle">依托电商模式改造传统工厂订发货体系<span>打造工厂移动互联网新平台</span></p>
                 </div>
                 <div class="p_content">

                     <div class="pc_item">
                         <h2>产品功能</h2>
                         <div class="tabbox">
                             <ul class="clearfix bh li5">
                                  <li class="selected"><a href="javascript:;">产品展示</a></li>
                                  <li><a href="javascript:;">产品定制</a></li>
                                  <li><a href="javascript:;">批发商城</a></li>
                                  <li><a href="javascript:;">订单预约</a></li>
                                  <li><a href="javascript:;">代理合作</a></li>
                             </ul>
                             <div class="bd">
                                 <div class="clearfix cont selected">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wgc/index_05.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>提供产品图片的存储和展示服务，可以方便地分类创建产品展示相册，轻松地发布需要展示的产品照片，让客户通过图片更加便捷直观地了解企业及产品。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wgc/index_051.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>根据客户的特殊要求专门制作，让客户通过提交产品定制诉求、产品定制完成时间等一系列操作，满足客户个性化定制需求。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wgc/index_052.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>客户预付款后即可查看工厂订单合同，合同以微信号与简称以及真实姓名记录；合同样式乙方为微信头像与昵称；客户签订合同（或预付签定合同后）将生成的合同自动生成提供客户下载。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wgc/index_053.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>用户通过微信公众号即可进行订单预约，节省用户的时间，方便于用户。工厂可灵活根据单量安排工作，避免堆单。用户体验度更佳。</span>
                                      </div>
                                 </div>
                                 <div class="cont">
                                      <div class="fl imgbox"><img src="${imageUrl}/wcontent/wgc/index_054.jpg"/></div>
                                      <div class="fl txtbox">
                                          <span>随着信息化的高速发展，同行间的激烈竞争，为了更好地维护工厂的利益，样品加密功能可将工厂的样品信息、设计图纸等机密数据进行加密保护，使工厂信息管理更加规范化。</span>
                                      </div>
                                 </div>
                             </div>
                         </div>
                      </div>  

                      <div class="pc_item"> 
                         <h2>我们能帮您解决哪些问题？</h2>
                         <div class="pr item_pk">
                              <img src="${imageUrl}/wcontent/wgc/index_09.jpg" class="itembh">
                              <img src="${imageUrl}/wcontent/wgc/pk.png" class="pa itempk">
                              <div class="pa ip_cont ipc_l">
                                  <h3>传统工厂行业</h3>
                                  <dl>
                                      <dt><em></em>处理跟进</dt>
                                      <dd>订发货效率太低</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>实时统计</dt>
                                      <dd>业务员抄单费周折</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>渠道队伍</dt>
                                      <dd>渠道少，拓展困难</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>交易模式</dt>
                                      <dd>款项结算线下交易流程繁琐，受时间空间限制</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>人力成本</dt>
                                      <dd>人力成本高，同时还要承担库存压力</dd>
                                  </dl>
                              </div>
                              <div class="pa ip_cont ipc_r">
                                  <h3>微工厂</h3>
                                  <dl>
                                      <dt><em></em>处理跟进</dt>
                                      <dd>网购式流程，迅速处理跟进</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>实时统计</dt>
                                      <dd>网络自动录单，数据实时统计</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>渠道队伍</dt>
                                      <dd>电商模式，省力构建渠道队伍</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>交易模式</dt>
                                      <dd>订单线上支付，加速资金周转</dd>
                                  </dl>
                                  <dl>
                                      <dt><em></em>人力成本</dt>
                                      <dd>将原有粗放的经营进行数据化管理，优化库存，节省人力</dd>
                                  </dl>
                              </div>
                         </div>

                         <div class="iconlist">
                             <ul class="clearfix li4">
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wgc/index_13.jpg"/>
                                         <strong>平台化</strong>
                                         <span>改造传统订发货体系<br/>搭建工厂行业新平台</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wgc/index_15.jpg"/>
                                         <strong>专业化</strong>
                                         <span>报价体系灵活调整<br/>线上交易自动生成</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wgc/index_17.jpg"/>
                                         <strong>个性化</strong>
                                         <span>打通线上产品定制渠道<br/>满足客户个性化需求</span>
                                     </a>
                                 </li>
                                 <li>
                                     <a href="#">
                                         <img src="${imageUrl}/wcontent/wgc/index_19.jpg"/>
                                         <strong>信息化</strong>
                                         <span>货物情况自助查询<br/>订单状态实时追踪</span>
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
                                           <img src="${imageUrl}/wcontent/wgc/index_26.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wgc/index_28.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wgc/index_30.jpg"/>
                                       </a>
                                   </li>
                                   <li>
                                       <a href="#">
                                           <img src="${imageUrl}/wcontent/wgc/index_32.jpg"/>
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







