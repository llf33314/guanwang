<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉--连接粉丝、连接世界，提供微信营销的第三方开发平台！</title>
    <link rel="Shortcut Icon" href="/images/bitbug.ico" type="image/x-icon">
<meta name="keywords" content="微营销,微信营销,微信代运营,微信定制开发,微信营销软件,微信推广平台,微信营销平台,微信代运营套餐,智慧酒店"/> 
<meta name="description" content="多粉，国内最专业的微信第三方服务平台，专注于：微场景、微官网、微投票、微餐饮、微会员、微商城、微活动、微预约、微分销、微信开锁等微信功能开发及微信代运营服务，助力企业全面开启微营销！"/>
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
	$(function(){webjs.index()})
</script>
</head>

<body>
<div class="wrap index">
     <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li style="height: 406px; background-image: url(${imageUrl}/tuiguan/banner.jpg);"><a href="/html/promotion.jsp"><img src="${imageUrl}/tuiguan/banner.jpg" style="display:none"></a></li>
             <li><a href="/html/java.jsp"><img lazy_src="${imageUrl}/banner1.jpg"></a></li>
             <li><a href="javascript:;"><img lazy_src="${imageUrl}/banner3.jpg"></a></li>
         </ul>
     </div>

     <div class="notice">
          <div class="wrap1200">
               <span class="fl t"><em class="sys_cion"></em>最新公告</span>
               <div class="msg" id="notice_msg">
                   <ul class="pr">
                       <li><p><span></span></p></li>
                   </ul>
               </div>
               <div class="sj_msg"></div>
          </div>
     </div>

     <div class="containter">
         <div class="iconNav wrap1200">
              <ul class="clearfix">
                 <li onclick="$.cookie('clearfix_selected', '产品中心', {path:'/'});">
                 	<a href="/html/weixinapp.jsp"><em class="sys_cion1 sc1"></em><span>小程序定制</span></a>
                 </li>
                 <li onclick="$.cookie('clearfix_selected', '客户案例', {path:'/'});">
                 	<a href="/html/case_center.jsp"><em class="sys_cion1 sc2"></em><span>客户案例</span></a>
                 </li>
                 <li onclick="$.cookie('clearfix_selected', '解决方案', {path:'/'});">
                 	<a href="/html/wcy.jsp"><em class="sys_cion1 sc3"></em><span>行业方案</span></a>
                 </li>
                 <li onclick="$.cookie('clearfix_selected', '关于多粉', {path:'/'});">
                 	<a href="/html/product-trends/product-video.jsp"><em class="sys_cion1 sc4"></em><span>多粉学院</span></a>
                 </li>
                 <li>
                 	<a href="/html/instructions.jsp"><em class="sys_cion1 sc5"></em><span>使用指南</span></a>
                 </li>
              </ul>
         </div>


         <div class="product_center">
              <div class="wrap1200">
                  <div class="item_title">
                      <h2>产品中心</h2>
                      <span>Product Center</span>
                      <a href="/html/product.jsp" class="more">了解更多</a>
                  </div>                                                                                 

                  <div class="item_main">
                      <div class="tg_content">
                           <div id="tg_content">
                               <div class="tgc_list">
                                   <ul class="clearfix">
                                       <li>
                                           <div class="sys_cion1 sc1"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>关注</strong>
                                                   <span>Fans</span>
                                               </div>
                                               <div class="tgc_abtn tgca1 clearfix">
                                                   <a href="/html/product-center/wifi.jsp"><span class="sys_cion sca3"></span>WIFI关注</a>
                                                   <a href="/html/product-center/favorable.jsp"><span class="sys_cion sca2"></span>优惠券</a>
                                                   <a href="/html/product-center/shark.jsp"><span class="sys_cion sca4"></span>摇一摇周边</a>
                                                   <a href="/html/product-center/ticket.jsp"><span class="sys_cion sca1"></span>卡包/券</a>
                                                   <a href="/html/product-center/help.jsp"><span class="sys_cion sca5"></span>微助力</a>
                                                   <a href="/html/product-center/signin.jsp"><span class="sys_cion sca6"></span>微签到</a>
                                                   <a href="/html/product-center/attendtion.jsp"><span class="sys_cion sca7"></span>支付自动关注</a>
                                                   <a href="/html/product-center/flow.jsp"><span class="sys_cion sca8"></span>关注送流量</a>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <div class="sys_cion1 sc2"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>推广</strong>
                                                   <span>Promotion</span>
                                               </div>
                                               <div class="tgc_abtn tgca2 clearfix">
                                                   <a href="/html/product-center/home.jsp"><span class="sys_cion sca1"></span>微官网</a>
                                                   <a href="/html/product-center/chongjing.jsp"><span class="sys_cion sca2"></span>微场景</a>
                                                   <a href="/html/product-center/photo.jsp"><span class="sys_cion sca3"></span>微相册</a>
                                                   <a href="/html/product-center/card.jsp"><span class="sys_cion sca4"></span>微名片</a>
                                                   <a href="/html/product-center/mass%20texting%20.jsp"><span class="sys_cion sca5"></span>高级群发</a>
                                                   <a href="/html/product-center/360.jsp"><span class="sys_cion sca6"></span>360全景</a>
                                                   <a href="/html/product-center/distribution.jsp"><span class="sys_cion sca7"></span>微分销</a>
                                                   <a href="/html/product-center/welcome.jsp"><span class="sys_cion sca8"></span>欢迎页</a>
                                                   <a href="/html/product-center/3d.jsp"><img src="${imageUrl}/product-center/3d-icon.png"/>3D全景</a>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <div class="sys_cion1 sc3"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>互动</strong>
                                                   <span>Interation</span>
                                               </div>
                                               <div class="tgc_abtn tgca3 clearfix">
                                                   <a href="/html/product-center/red.jsp"><span class="sys_cion sca1"></span>让红包飞</a>
                                                   <a href="/html/product-center/turetable.jsp"><span class="sys_cion sca2"></span>大转盘</a>
                                                   <a href="/html/product-center/guaguale.jsp"><span class="sys_cion sca3"></span>刮刮乐</a>
                                                   <a href="/html/product-center/egg.jsp"><span class="sys_cion sca4"></span>砸金蛋</a>
                                                   <a href="/html/product-center/one.jsp"><span class="sys_cion sca5"></span>一元夺宝</a>
                                                   <a href="/html/product-center/vote.jsp"><span class="sys_cion sca6"></span>微投票</a>
                                                   <a href="/html/product-center/message.jsp"><span class="sys_cion sca7"></span>留言板</a>
                                                   <a href="/html/product-center/social.jsp"><span class="sys_cion sca8"></span>微社区</a>
                                                   <a href="/html/product-center/serve.jsp"><span class="sys_cion sca9"></span>微服务</a>
                                                   <a href="/html/product-center/wexin.jsp"><span class="sys_cion sca10"></span>微信墙</a>
                                                   <a href="/html/product-center/invote.jsp"><span class="sys_cion sca11"></span>高级邀请</a>
                                                   <a href="/html/product-center/notice.jsp"><span class="sys_cion sca12"></span>微公告</a>
                                                   <a href="/html/product-center/moneyCrazy.jsp"><span class="sys_cion sca13"></span>疯狂数钱</a>
                                                   <a href="/html/product-center/buyTicket.jsp"><span class="sys_cion sca14"></span>微购票</a>
                                                   <a href="/html/product-center/evaluate.jsp"><img src="${imageUrl}/product-center/evaluate-icon.png"/>评价系统</a>
                                                   <a href="/html/product-center/online.jsp"><img src="${imageUrl}/product-center/online_icon.png"/>在线报名</a>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <div class="sys_cion1 sc4"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>转化</strong>
                                                   <span>Conversion</span>
                                               </div>
                                               <div class="tgc_abtn tgca4 clearfix">
                                                   <a href="/html/product-center/subscribe.jsp"><span class="sys_cion sca2"></span>微预约</a>
                                                   <a href="/html/product-center/vip.jsp"><span class="sys_cion sca1"></span>微会员</a>
                                                   <a href="/html/product-center/shop.jsp"><span class="sys_cion sca3"></span>微商城</a>
                                                   <a href="/html/product-center/group.jsp"><span class="sys_cion sca4"></span>微团购</a>
                                                   <a href="/html/product-center/survey.jsp"><span class="sys_cion sca5"></span>微调研</a>
                                                   <a href="/html/product-center/fast-store.jsp"><span class="sys_cion sca6"></span>多粉快店</a>
                                                   <a href="/html/product-center/pay.jsp"><span class="sys_cion sca7"></span>多粉支付</a>
                                                   <a href="/html/product-center/super_subscribe.jsp"><img src="${imageUrl}/product-center/subscribe-icon.png"/>高级预约</a>
                                                   <a href="/html/product-center/giftPay.jsp"><img src="${imageUrl}/product-center/politeness_icon.png"/>支付有礼</a>
                                                   <a href="/html/product-center/buyDeal.jsp"><img src="${imageUrl}/product-center/buyDeal_icon.png"/>优惠买单</a>
                                               </div>
                                          </div>
                                       </li>

                                       <li>
                                           <div class="sys_cion1 sc5"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>行业</strong>
                                                   <span>Industry</span>
                                               </div>
                                               <div class="tgc_abtn tgca5 clearfix">
                                                   <a href="/html/wcy.jsp"><span class="sys_cion sca1"></span>微餐饮</a>
                                                   <a href="/html/wjd.jsp"><span class="sys_cion sca2"></span>微酒店</a>
                                                   <a href="/html/wzx.jsp"><span class="sys_cion sca3"></span>微装修</a>
                                                   <a href="/html/wjy.jsp"><span class="sys_cion sca4"></span>微教育</a>
                                                   <a href="/html/wmr.jsp"><span class="sys_cion sca5"></span>微美容</a>
                                                   <a href="/html/wqx.jsp"><span class="sys_cion sca6"></span>微汽修</a>
                                                   <a href="/html/wwy.jsp"><span class="sys_cion sca7"></span>微物业</a>
                                                   <a href="/html/wly.jsp"><span class="sys_cion sca8"></span>微景区</a>
                                                   <a href="/html/wyl.jsp"><span class="sys_cion sca9"></span>微医疗</a>
                                                   <a href="/html/wfc.jsp"><span class="sys_cion sca10"></span>微房产</a>
                                                   <a href="/html/wzw.jsp"><span class="sys_cion sca11"></span>微政务</a>
                                                   <a href="/html/wxx.jsp"><span class="sys_cion sca12"></span>微休闲</a>
                                                   <a href="/html/wgc.jsp"><span class="sys_cion sca13"></span>微工厂</a>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <div class="sys_cion1 sc6"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>游戏</strong>
                                                   <span>Game</span>
                                               </div>
                                               <div class="tgc_abtn tgca6 clearfix">
                                                   <a href="/html/product-center/win.jsp"><span class="sys_cion sca1"></span>一战到底</a>
                                                   <a href="/html/product-center/ball.jsp"><span class="sys_cion sca2"></span>点球大战</a>
                                                   <a href="/html/product-center/bird.jsp"><span class="sys_cion sca3"></span>鹊桥相会</a>
                                                   <a href="/html/product-center/mid-autumn.jsp"><span class="sys_cion sca4"></span>中秋送礼</a>
                                                   <a href="/html/product-center/crazy.jsp"><span class="sys_cion sca5"></span>疯狂划算</a>
                                                   <a href="/html/product-center/warmman.jsp"><span class="sys_cion sca6"></span>暖男躲避战</a>
                                                   <a href="/html/product-center/christmas.jsp"><span class="sys_cion sca7"></span>圣诞活动</a>
                                                   <a href="/html/product-center/flag.jsp"><img src="${imageUrl}/product-center/flag_icon.png"/>升国旗</a>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <div class="sys_cion1 sc7"></div>
                                           <div class="tgc_item">
                                               <div class="common_tit tgc_tit">
                                                   <strong>管理</strong>
                                                   <span>Management</span>
                                               </div>
                                               <div class="tgc_abtn tgca7 clearfix">
                                                   <a href="/html/product-center/waiter.jsp"><span class="sys_cion sca1"></span>微客服</a>
                                                   <a href="/html/product-center/check.jsp"><span class="sys_cion sca2"></span>外勤管理</a>
                                                   <a href="/html/product-center/sytem.jsp"><span class="sys_cion sca3"></span>门店系统</a>
                                                   <a href="/html/product-center/fans.jsp"><span class="sys_cion sca4"></span>粉丝管理</a>
                                                   <a href="/html/product-center/datec-center.jsp"><span class="sys_cion sca5"></span>数据统计</a>
                                                   <a href="/html/product-center/channel.jsp"><span class="sys_cion sca6"></span>微渠道</a>
                                                   <a href="/html/product-center/editor.jsp"><span class="sys_cion sca7"></span>高级编辑器</a>
                                                   <a href="/html/product-center/weiPay.jsp"><span class="sys_cion sca8"></span>微支付统计</a>
                                                   <a href="/html/product-center/limit.jsp"><span class="sys_cion sca9"></span>权限查看</a>
                                               </div>
                                           </div>
                                       </li>
                                   </ul>
                              </div>
                          </div>
                          <div class="pro_service clearfix">
                               <div class="myserver">
                                     <div class="common_tit tgc_tit">
                                           <strong>我们的服务 </strong>
                                           <span>Service</span>
                                     </div>
                                     <p class="desc">从公众号注册申请到搭建完善，商家无需再为复杂繁琐的流程和制作而苦恼。在首次制作的时候，多粉专业的运营团队将全程为您提供一站式微信公众号制作服务，量身打造最适合您的微信公众号。</p>
                                     <div class="pr other clearfix">
                                         <span class="sys_cion1"></span>
                                         <em class="em1">平台搭建</em>
                                         <em class="em2">文案编辑</em>
                                         <em class="em3">设计场景</em>
                                         <em class="em4">内容完善</em>
                                         <em class="em5">官网打造</em>
                                         <em class="em6">消息推送</em>
                                         <ul class="fl">
                                             <li><span></span>注册、认证、基本信息提交</li>
                                             <li><span></span>内容编辑、优化、完善</li>
                                             <li><span></span>定制属于商家的框架</li>
                                             <li><span></span>打造属于商家的个性网站</li>
                                             <li><span></span>专业美工团队、设计商户微场景展示</li>
                                             <li><span></span>每月定期推送图文消息</li>
                                         </ul>
                                     </div>
                               </div>
                               <div class="banner" id="hzbanner">
                                   <div class="common_tit tgc_tit"><strong>合作伙伴</strong></div>
                                   <div class="brandlist">
                                       <ul class="clearfix"><li class="clearfix">
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_13.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_15.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_17.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_19.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_21.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_35.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_37.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_39.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_41.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_43.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_57.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img src="${imageUrl}/brand/brand0_59.jpg"/></a></div>
                                           </li>
                                           <li class="clearfix">
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_13.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_15.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_17.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_19.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_21.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_35.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_37.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_39.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_41.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_43.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_57.jpg"/></a></div>
                                              <div class="brand_item"><a href="#"><img lazy_src="${imageUrl}/brand/brand1_59.jpg"/></a></div>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                               <div class="bline"></div>
                          </div>
                      </div>
                  </div>
              </div>
         </div>

         <div class="common_solution hy_solution">
              <div class="wrap1200">
                  <div class="item_title">
                      <h2>行业解决方案</h2>
                      <span>Solution</span>
                  </div>  
                  <p class="desc"><a href="/html/wcy.jsp" class="more">了解更多</a>通过平台提供的展示、推广、互动等功能，全面覆盖各个商业领域的移动社交营销需求，帮助企业更有效的进行销售、推广工作，有效
                     增加销售渠道、提高粉丝关注量。</p>
                  <div class="clearfix case">
                        <div class="fl itembox server_support">
                            <div class="t"><h2>服务支持</h2></div>
                            <div class="clearfix sys_icon_m m">
                                 <a href="/html/wcy.jsp"><em class="sys_cion sc1"></em>微餐饮</a>
                                 <a href="/html/wjd.jsp"><em class="sys_cion sc2"></em>微酒店</a>
                                 <a href="/html/wfc.jsp"><em class="sys_cion sc3"></em>微房产</a>
                                 <a href="/html/wqx.jsp"><em class="sys_cion sc4"></em>微汽修</a>
                                 <a href="/html/wmr.jsp"><em class="sys_cion sc5"></em>微美容</a>
                                 <a href="/html/wgc.jsp"><em class="sys_cion sc55"></em>微工厂</a>
                                 <a href="/html/wly.jsp"><em class="sys_cion sc6"></em>微景区</a>
                                 <a href="/html/wjy.jsp"><em class="sys_cion sc7"></em>微教育</a>
                                 <a href="/html/wwy.jsp"><em class="sys_cion sc8"></em>微物业</a>
                                 <a href="/html/wzw.jsp"><em class="sys_cion sc9"></em>微政务</a>
                                 <a href="/html/wxx.jsp"><em class="sys_cion sc10"></em>微休闲</a>
                                 <a href="/html/wyl.jsp"><em class="sys_cion sc11"></em>微医疗</a>
                            </div>
                        </div>
                        <div class="fr itembox user_project">
                             <div class="t"><h2>客户案例</h2></div>
                             <div class="brand_icon_m m">
                                 <ul class="clearfix" id="case1">
                                 </ul>
                             </div>
                        </div>
                  </div>
              </div>  
          </div>

          <div class="common_solution weixin_solution">
              <div class="wrap1200">
                  <div class="item_title">
                      <h2>智慧微信解决方案</h2>
                      <span>Solution</span>
                  </div>  
                  <div class="clearfix myad_t">
                      <a href="javascript:;" class="mat1 selected"></a>
                      <a href="javascript:;" class="mat2"></a>
                      <a href="javascript:;" class="mat3"></a>
                  </div>
                  <div class="clearfix case">
                        <div class="div_ul clearfix">
                            <!-- div_li start -->
                            <div class="div_li clearfix selected">
                                <div class="fl itembox server_support">
                                    <div class="t"><h2>智慧餐饮</h2></div>
                                    <div class="clearfix sys_icon_m sys_icon_m1 m">
                                         <a href="javascript:;"><em class="sys_cion sc1"></em>远程排队</a>
                                         <a href="javascript:;"><em class="sys_cion sc2"></em>在线订座</a>
                                         <a href="javascript:;"><em class="sys_cion sc3"></em>预约订餐</a>
                                         <a href="javascript:;"><em class="sys_cion sc4"></em>智能支付</a>
                                         <a href="javascript:;"><em class="sys_cion sc5"></em>微官网</a>
                                         <a href="javascript:;"><em class="sys_cion sc6"></em>会员中心</a>
                                         <a href="javascript:;"><em class="sys_cion sc7"></em>粉丝互动</a>
                                         <a href="javascript:;"><em class="sys_cion sc8"></em>LBS</a>
                                    </div>
                                    <p class="smarty_cy">
                                         <em class="sys_cion1"></em>
                                         <strong>多粉 智慧餐饮</strong>提供包含订餐、订房、点菜、支付、预约排号等功能服务，将线下店铺和线上营销无缝对接，
                                         帮助餐厅快速提升订单，提高用户体验。
                                    </p>
                                </div>
                                <div class="fr itembox user_project">
                                     <div class="t"><h2>客户案例</h2></div>
                                     <div class="brand_icon_m m">
                                         <ul class="clearfix" id="case2">
          
                                         </ul>
                                     </div>
                                </div>
                            </div>
                            <!-- div_li start -->
                            <div class="div_li clearfix">
                                <div class="fl itembox server_support">
                                    <div class="t"><h2>智慧酒店</h2></div>
                                    <div class="clearfix sys_icon_m sys_icon_m2 m">
                                         <a href="javascript:;"><em class="sys_cion sc1"></em>智能订房</a>
                                         <a href="javascript:;"><em class="sys_cion sc2"></em>微信开发</a>
                                         <a href="javascript:;"><em class="sys_cion sc3"></em>微信支付</a>
                                         <a href="javascript:;"><em class="sys_cion sc4"></em>一键退房</a>
                                         <a href="javascript:;"><em class="sys_cion sc5"></em>粉丝管理</a>
                                         <a href="javascript:;"><em class="sys_cion sc6"></em>会员中心</a>
                                         <a href="javascript:;"><em class="sys_cion sc7"></em>粉丝互动</a>
                                         <a href="javascript:;"><em class="sys_cion sc8"></em>品牌展示</a>
                                    </div>
                                    <p class="smarty_cy">
                                         <em class="sys_cion1 schotel"></em>
                                         <strong>多粉 智慧酒店</strong>由微信公众号+微信支付为基础构建，帮助酒店快速生成强大的酒店预订系统。从微信订酒店到
                                         微信开锁入住、微信退房等，客人通过酒店公众号即可一键实现。
                                    </p>
                                </div>
                                <div class="fr itembox user_project">
                                     <div class="t"><h2>客户案例</h2></div>
                                     <div class="brand_icon_m m">
                                         <ul class="clearfix" id="case3">
     
                                        </ul> 
                                     </div>
                                </div>
                            </div>
                            <!-- div_li start -->
                            <div class="div_li clearfix">
                                <div class="fl itembox server_support">
                                    <div class="t"><h2>智慧城市</h2></div>
                                    <div class="clearfix sys_icon_m sys_icon_m3 m">
                                         <a href="javascript:;"><em class="sys_cion sc1"></em>定制开发</a>
                                         <a href="javascript:;"><em class="sys_cion sc2"></em>智能支付</a>
                                         <a href="javascript:;"><em class="sys_cion sc3"></em>移动终端</a>
                                         <a href="javascript:;"><em class="sys_cion sc4"></em>电子政务</a>
                                         <a href="javascript:;"><em class="sys_cion sc5"></em>数字民生</a>
                                         <a href="javascript:;"><em class="sys_cion sc6"></em>信息化</a>
                                         <a href="javascript:;"><em class="sys_cion sc7"></em>管理</a>
                                         <a href="javascript:;"><em class="sys_cion sc8"></em>服务</a>
                                    </div>
                                    <p class="smarty_cy">
                                         <em class="sys_cion1 sccity"></em>
                                         <strong>多粉 智慧城市</strong>多粉智慧城市就是运用信息和通信技术手段感测、分析、整合城市运行核心系统的各项关键信息，
                                         从而对包括民生、环保、公共安全、城市服务、工商业活动在内的各种需求做出智能相应。
                                    </p>
                                </div>
                                <div class="fr itembox user_project">
                                     <div class="t"><h2>客户案例</h2></div>
                                     <div class="brand_icon_m m">
                                         <ul class="clearfix" id="case4">
 
                                          </ul>
                                     </div>
                                </div>
                            </div>
                          

                        </div>
                  </div>
              </div>  
          </div>

          <div class="common_solution wshop_solution">
              <div class="wrap1200">
                  <div class="item_title">
                      <h2>微电商解决方案</h2>
                      <span>Solution</span>
                  </div>  
                  <p class="desc"><a href="/html/weshop.jsp" class="more">了解更多</a>针对微信公众号提供适用于每个行业的微商城平台，包括了如店铺、订单管理、商品、物流管理等电商功能，帮助
                  企业快速的在微信搭建起自己的微电商销售体系，实现线上线下一体化服务模式，快速展开销售。</p>
                  <div class="clearfix case">
                        <div class="fl clearfix itembox server_support ss1">
                            <div class="t">
                                <em class="sys_cion1 sc1"></em>
                                <h2>快店</h2>
                            </div>
                            <div class="clearfix sys_icon_m m">
                                 <a href="javascript:;"><em class="sys_cion sc1"></em>个人店铺</a>
                                 <a href="javascript:;"><em class="sys_cion sc2"></em>订单处理</a>
                                 <a href="javascript:;"><em class="sys_cion sc3"></em>优惠券</a>
                                 <a href="javascript:;"><em class="sys_cion sc4"></em>营销</a>
                                 <a href="javascript:;"><em class="sys_cion sc5"></em>货物查询</a>
                                 <a href="javascript:;"><em class="sys_cion sc6"></em>线上线下</a>
                                 <a href="javascript:;"><em class="sys_cion sc7"></em>会员系统</a>
                                 <a href="javascript:;"><em class="sys_cion sc8"></em>交易系统</a>
                            </div>
                            <p class="desc">用户体验最好的快速微信开店平台，基于微信公众平台打造的原生电商模式，为各行各业的商家提供微信商城搭建服务，
                            提供店铺、商品、订单、管理等功能，解决商家在移动销售难题。</p>
                        </div>
                        <div class="fr clearfix itembox server_support ss2">
                            <div class="t">
                                <em class="sys_cion1 sc2"></em>
                                <h2>多粉钱包</h2>
                            </div>
                            <div class="clearfix sys_icon_m m">
                                 <a href="javascript:;"><em class="sys_cion sc1"></em>余额查询</a>
                                 <a href="javascript:;"><em class="sys_cion sc2"></em>收入记录</a>
                                 <a href="javascript:;"><em class="sys_cion sc3"></em>金额提现</a>
                                 <a href="javascript:;"><em class="sys_cion sc4"></em>钱包明细</a>
                                 <a href="javascript:;"><em class="sys_cion sc5"></em>快速到帐</a>
                                 <a href="javascript:;"><em class="sys_cion sc6"></em>支付管理</a>
                                 <a href="javascript:;"><em class="sys_cion sc7"></em>短信通知</a>
                                 <a href="javascript:;"><em class="sys_cion sc8"></em>安全</a>
                            </div>
                            <p class="desc">多粉钱包致力于提供“简单、安全、快速”的商城交易解决方案，可以查看在多粉平台上获得的累计收入，
                            也可以查看待确认金额、账户余额以及金额提现。</p>
                        </div>
                  </div>
              </div>  
          </div>

          <div class="myad animate_ad" style="background:url(${imageUrl}/myad.jpg) no-repeat center top">
             <div class="wrap1200">
                 <div class="t100">
                    0
                 </div>
                 <div class="t150">
                    0
                 </div>
                 <div class="t724">
                    <span>0</span>*<span>0</span>
                 </div>
                 <div class="t1">服务案例</div>
                 <div class="t2">客户逐年增长率</div>
                 <div class="t3">24小时客户服务</div>
             </div>
          </div>
          
          <div class="morechoise">
              <div class="wrap1200">
                  <div class="item_title">
                      <h2>更多的选择给你更大的可能</h2>
                      <span>多粉平台完整的微信定制开发解决方案，以更多的选择满足你业务全面的需求</span>
                  </div>  
                  <div class="item_main">
                       <ul class="clearfix">
                           <li>
                              <div class="common_tit tgc_tit">
                                   <strong>微信移动广告</strong>
                                   <span>Advertisement</span>
                               </div>
                               <div class="sys_cion1 sc1"></div>
                               <p>提供包括微信公众广告、朋友圈广告等多渠道广告精准投放服务</p>
                           </li>
                           <li>
                              <div class="common_tit tgc_tit">
                                   <strong>Java技术平台</strong>
                                   <span>Platform</span>
                               </div>
                               <div class="sys_cion1 sc2"></div>
                               <p>全国领先使用JAVA进行开发的微信开发服务平台</p>
                           </li>
                           <li>
                              <div class="common_tit tgc_tit">
                                   <strong>微信移动办公</strong>
                                   <span>Office</span>
                               </div>
                               <div class="sys_cion1 sc3"></div>
                               <p>为企业提供外勤人员实时动态管理，解决企业外勤人员管理难题</p>
                           </li>
                           <li>
                              <div class="common_tit tgc_tit">
                                   <strong>代运营</strong>
                                   <span>Operate</span>
                               </div>
                               <div class="sys_cion1 sc4"></div>
                               <p>一对一为企业量身定制微信公众号运营解决方案</p>
                           </li>
                        </ul>
                  </div>
              </div>  
          </div>

          <div class="news wrap1200 clearfix">
              <div class="news_main">
                 <div class="common_tit tgc_tit clearfix">
                      <strong class="fl">热门动态</strong>
                      <span class="fl">News</span>
                  </div>  
                  <div class="tabbox">
                      <div class="bh">
                          <ul class="clearfix">
                              <li class="selected">公司新闻</li>
                              <li>产品更新</li>
                              <li>行业动态</li>
                          </ul>
                      </div>
                      <div class="bd">
                          <div class="cont selected">
                              <ul class="clearfix" id="article_new">
                              </ul>
                              <a href="/html/product-trends/product-news.jsp" class="more">查看全部</a>
                          </div>
                          <div class="cont">
                              <ul class="clearfix" id="article_product">
                              </ul>
                              <a href="/html/product-trends/product-news.jsp?type=1" class="more">查看全部</a>
                          </div>
                          <div class="cont">
                              <ul class="clearfix" id="article_dynamic">
                              </ul>
                              <a href="/html/product-trends/product-news.jsp?type=0" class="more">查看全部</a>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="vedio_main">
                   <div class="common_tit tgc_tit clearfix">
                      <strong class="fl">沙龙</strong>
                      <span class="fl">Salon</span>
                      <p>互动、交流、学习、专注为客户分享更精彩<br/>的营销策略</p>
                  </div>
                  <div class="vedio"><a href="/html/product-trends/product-video.jsp"><img src="${imageUrl}/index_59.jpg"/></a></div>
              </div>
          </div> 
     </div>

    


     <%@include file="/html/common/footer.jsp" %>
</div>
</body>
<script type="text/javascript">
	$(function(){
		//intiProductCenter();
		initArt();
		initCase();
		initCheckIn();
	});
		
	function initArt(){
		WSFUNCTION.doPostCallback({
			url: "/article/html/list", 
			param: {home:1}, 
			func: function(v){
				var a = "", b = "", c = "", d = "", 
					_a = 0, _b = 0, _c = 0;
				for(var i=0;i<v.length;i++){
					var time = new Date(v[i].createtime.time);
					switch (v[i].article_type) {
						case 0:
							if(_a < 8){
								a += "<li><span>"+(time.getMonth()+1)+"-"+time.getDate()
									+"</span><a href='/html/articlePage/article_"+v[i].id+".jsp'>"+v[i].title+"</a></li>";
								_a++;
							}
							break;
						case 1:
							if(_b < 8){
								b += "<li><span>"+(time.getMonth()+1)+"-"+time.getDate()
									+"</span><a href='/html/articlePage/article_"+v[i].id+".jsp'>"+v[i].title+"</a></li>";
								_b++;
							}
							break;
						case 2:
							if(_c < 8){
								c += "<li><span>"+(time.getMonth()+1)+"-"+time.getDate()
									+"</span><a href='/html/articlePage/article_"+v[i].id+".jsp'>"+v[i].title+"</a></li>";
								_c++;
							}
							break;
						case 4:
							d += "<li><p><span></span>"+v[i].title+"</p></li>";
							break;
					}
				}
				$("#article_dynamic").html(a);
				$("#article_product").html(b);
				$("#article_new").html(c);
				$("#notice_msg ul").html(d);
			}
		});
	}
	
	function initCase(){
		var v = WSFUNCTION.doPostReturnFull("/case/html/list", {});
		var a = "", b = "", c = "", d = "", 
			_a = 0, _b = 0, _c = 0, _d = 0, 
			a_a = customer_case[0].name, b_b = customer_case[1].name, c_c = customer_case[2].name, d_d = customer_case[3].name;
		for(var i=0;i<v.data.length;i++){
			if(v.data[i].case_code == a_a){
				if(_a < 8){
					a += "<li><a href='javascript:void(0);'><em>"
						+"<img src='"+v.rootUrl+v.data[i].detail_main_img+"'></em>"+v.data[i].detail_name+"</a><div class='ewm'>"
						+"<img src='"+v.rootUrl+v.data[i].detail_other_img+"'></div></li>";
					_a++;
				}
			}else if(v.data[i].case_code == b_b){
				if(_b < 6){
					b += "<li><a href='javascript:void(0);'><em>"
						+"<img src='"+v.rootUrl+v.data[i].detail_main_img+"'></em>"+v.data[i].detail_name+"</a><div class='ewm'>"
						+"<img src='"+v.rootUrl+v.data[i].detail_other_img+"'></div></li>";
					_b++;
				}
			}else if(v.data[i].case_code == c_c){
				if(_c < 6){
					c += "<li><a href='javascript:void(0);'><em>"
						+"<img src='"+v.rootUrl+v.data[i].detail_main_img+"'></em>"+v.data[i].detail_name+"</a><div class='ewm'>"
						+"<img src='"+v.rootUrl+v.data[i].detail_other_img+"'></div></li>";
					_c++;
				}
			}else if(v.data[i].case_code == d_d){
				if(_d < 6){
					d += "<li><a href='javascript:void(0);'><em>"
						+"<img src='"+v.rootUrl+v.data[i].detail_main_img+"'></em>"+v.data[i].detail_name+"</a><div class='ewm'>"
						+"<img src='"+v.rootUrl+v.data[i].detail_other_img+"'></div></li>";
					_d++;
				}
			}
		}
		$("#case1").html(a);
		$("#case2").html(b);
		$("#case3").html(c);
		$("#case4").html(d);
	}
	
	function initCheckIn(){
		$(".sj_msg").html("已有 <span>"+busCount.total+"</span> 商家入驻，今日入驻 <span>"+busCount.daysCount+"</span> 位");
		
		/* WSFUNCTION.doPostCallback({
			url: "/busCheckIn/html/list", 
			param: {page: 1, pageSize: 1}, 
			func: function(v){
				$(".sj_msg").html("已有 <span>"+v[0].sum+"</span> 商家入驻，今日入驻 <span>"+v[0].busCheckIn+"</span> 位");
			}
		}); */
	}
	
	function intiProductCenter(){
		var pt = WSFUNCTION.doPostReturnFull("/productCenter/html/typelist", {}).data;
		var p = WSFUNCTION.doPostReturnFull("/productCenter/html/list", {}).data;
		console.dir(pt);
		console.dir(p);
		var a = "";
		for(var i=0;i<pt.length;i++){
			a += '<li><div class="sys_cion1 sc1" style="background-image: url('+pt[i].typeimg+');background-repeat: no-repeat;"></div><div class="tgc_item">'
				+'<div class="common_tit tgc_tit"><strong>'+pt[i].pctypename+'</strong><span>'+pt[i].englishname+'</span></div>'
				+'<div class="tgc_abtn tgca1 clearfix" style="height: 96px; overflow: hidden;">';
			for(var j=(p.length-1);j>-1;j--){
				a += '<a href="/html/product-center/product_'+p[j].id+'.jsp">'
					+'<span class="sys_cion sca3" style="background-image: url('+p[j].logourl+');"></span>'+p[j].pcname+'</a>';
			}
			a += '</div></div></li>';
		}
		$('#tg_content > div.tgc_list > ul').html(a);
	}
	
</script>
</html>
