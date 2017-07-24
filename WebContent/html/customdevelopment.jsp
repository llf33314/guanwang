<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>多粉定制开发</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
<%@include file="/html/common/cmm_css.jsp" %>
<%@include file="/html/common/js.jsp" %>
<script type="text/javascript">
$(function(){
    $("#banner").slideLx({"height":405});
})
</script>
</head>

<body>
<div class="wrap">
    <%@include file="/html/common/clearfix.jsp" %>

     <div id="banner" class="focusad">
         <ul>
             <li><a href="#"><img src="${imageUrl}/diy/banner.jpg"></a></li>
         </ul>
     </div>

     <div class="containter mobileAd smartycommon diy">
          <div class="wrap1000">
                <div class="descript">
                      <div class="acticle">
                          <strong class="atitle">多粉定制开发</strong>
                      </div>
                      <div class="acont">多粉定制开发服务，专业的技术、开发团队支持满足客户的个性化需求深入到每个营销环节，让您的微信平台更具特色，这是一个能让您展现创意的平台。定制您专属的微信公众平台，让您的微信公众平台与众不同！</div>
                      <ul class="clearfix itemlist">
                           <li>
                              <img src="${imageUrl}/diy/index_03.jpg"/>
                              <strong>专属定制</strong>
                              <span>Exclusive custom</span>
                           </li>
                           <li>
                              <img src="${imageUrl}/diy/index_05.jpg"/>
                              <strong>功能开发</strong>
                              <span>Functional exploitation</span>
                           </li>
                           <li>
                              <img src="${imageUrl}/diy/index_07.jpg"/>
                              <strong>技术服务</strong>
                              <span>Technical service</span>
                           </li>
                           <li>
                              <img src="${imageUrl}/diy/index_09.jpg"/>
                              <strong>专业协作</strong>
                              <span>Professional collaboration</span>
                           </li>

                           <li>
                              <img src="${imageUrl}/diy/index_16.jpg"/>
                              <strong>品质保障</strong>
                              <span>Quality guarantee</span>
                           </li>
                           <li>
                              <img src="${imageUrl}/diy/index_18.jpg"/>
                              <strong>开发认证</strong>
                              <span>Development certification</span>
                           </li>
                           <li>
                              <img src="${imageUrl}/diy/index_20.jpg"/>
                              <strong>移动策略</strong>
                              <span>Mobile strategy</span>
                           </li>
                           <li>
                              <img src="${imageUrl}/diy/index_22.jpg"/>
                              <strong>金牌服务</strong>
                              <span>Gold service</span>
                           </li>
                      </ul>
                      <div class="ah1">“定您所想”—  不一样的精彩</div>
                      <div class="acont">专业针对不同行业不同企业定制符合您的个性化需求，达到平台最大化，体验最优化，生产管理做到精益求精，为您创造更多的效益。</div>
                      <div class="clearfix diylist">
                          <img src="${imageUrl}/diy/pic.jpg" class="fl" />
                          <ul class="dlmain">
                               <li>
                                  <img src="${imageUrl}/diy/index_28.jpg"/>
                                  <strong>功能定制</strong>
                                  <span>根据您的实际需求定制您所想要的功能，以实现功能体验完全贴近用户的微信公众平台。</span>
                               </li>
                               <li>
                                  <img src="${imageUrl}/diy/index_32.jpg"/>
                                  <strong>设计定制</strong>
                                  <span>根据行业特征结合您的需求，定制设计独特的个性化界面，更能体现企业的专有性。</span>
                               </li>
                               <li class="lastli">
                                  <img src="${imageUrl}/diy/index_35.jpg"/>
                                  <strong>技术服务</strong>
                                  <span>基于微信平台的一切开发服务</span>
                               </li>
                          </ul>
                      </div>
                </div>

                <div class="descript">
                      <div class="acticle">
                          <strong class="atitle">定制流程</strong>
                      </div>
                      <div class="acont">多粉定制开发有一套严格且完善的定制流程，保障每一个项目进行顺利通畅，针对行业更深层次的微信公众号需求进行高端的微信定制和开发，满足企业个性化需求为您提供一整套的定制服务。</div>
                      <img src="${imageUrl}/diy/index_38.jpg" />
                </div>
          </div>



          <div class="wrap1000">
               <a href="javascript:;" onclick="showClick(2);" class="base_abtn imMakeAd">我要定制</a>
               <div class="item_title item_title1">
                  <h2>他们都在使用</h2>
               </div> 

               <div class="shoplist">
                  <ul class="clearfix">
                      <li><img src="${imageUrl}/diy/index_42.jpg"></li>
                      <li><img src="${imageUrl}/diy/index_44.jpg"></li>
                      <li><img src="${imageUrl}/diy/index_46.jpg"></li>
                      <li class="lastitem"><img src="${imageUrl}/diy/index_48.jpg"></li>
                      
                      <li><img src="${imageUrl}/diy/index_54.jpg"></li>
                      <li><img src="${imageUrl}/diy/index_56.jpg"></li>
                      <li><img src="${imageUrl}/diy/index_59.jpg"></li>
                      <li class="lastitem"><img src="${imageUrl}/diy/index_61.jpg"></li>

                      <li><img src="${imageUrl}/diy/index_66.jpg"></li>
                      <li><img src="${imageUrl}/diy/index_69.jpg"></li>
                      <li><img src="${imageUrl}/diy/index_67.jpg"></li>
                      <li class="lastitem"><img src="${imageUrl}/diy/index_68.jpg"></li>

                  </ul> 
               </div>

          </div>

    </div>


    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->

</div>
</body>
<script type="text/javascript">
var qqNum = "2853873362";
function showClick(mei){
	$.ajax({
 			type: 'POST',
 			url: "/article/html/getExtendqq",
 			async : false, 
 			data: {mei:mei},
 			success: function(data){
 				var d = eval('('+data+')');
 				/* console.log(d); */
 				if(d.status != 0){
 					qqNum = d.qqNum;
 				}
				window.open("http://wpa.qq.com/msgrd?v=3&uin=" + qqNum + "&site=qq&menu=yes");	
 			},
 			error: function(){
 				window.open("http://wpa.qq.com/msgrd?v=3&uin=" + qqNum + "&site=qq&menu=yes");	
 			}
 		});
	
};
</script>
</html>



