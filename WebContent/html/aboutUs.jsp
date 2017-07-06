<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>关于我们</title>
    <%@include file="/html/common/css.jsp" %>
    <link rel="stylesheet" href="/html/css/wcontent.css"/>
    <%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
    $(function () {
        $("#banner").slideLx({"height": 409});
        $("#tg_content").slideLi({"width":243,"arrow":true,"autoplay":false,"speek":300,"showItem":3});
    });
    </script>
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>


    <div class="aboutus_container">
        <!--中间内容-->

        <div>
            <ul class="aboutus_title">
                <a href="aboutUs.jsp"><li style="background:#c8e6ca ">多粉简介</li></a>
                <a href="honor.jsp"><li>所获荣誉</li></a>
                <a href="invide.jsp"><li>加入我们</li></a>
                <a href="contract.jsp"><li>联系我们</li></a>
            </ul>
        </div>


        <!--中间内容--> 
    </div>
    
    <div id="banner" class="focusad">
         <ul>
             <li><a href="javascript:;"><img src="${imageUrl}/weixin/about2_02.jpg"/></a></li>
         </ul>
     </div>

    <div class="wrap960 aboutus1028">
          <div class="part">
              <h2>企业介绍</h2>
              <div class="au0 clearfix">
                   <div class="video">
                       <a href="javascript:WSFUNCTION.videoFrame('http://v.qq.com/iframe/player.html?vid=s03562s6cry&tiny=0&auto=0');"  target="_blank" class="vimg" id="vimg"></a>
                       <!-- <div class="videobox">
                           <iframe id="videoframe" frameborder="0" width="640" height="498" src="http://v.qq.com/iframe/player.html?vid=s03562s6cry&tiny=0&auto=0" allowfullscreen></iframe>
                           <a href="javascript:;" class="gt_close"><img src="/html/images/common/close.png"></a>
                        </div> -->
                   </div>
                   <p>多粉隶属于广东谷通科技有限公司，总部位于广东省惠州市，注册资金一千万元， 三家下属子公司和二十三家分公司，公司总人数上千人。多粉在广东省深圳市和惠州市均设有独立研发中心，技术研发人员过百人。</p>
                   <p>多粉是国内一流的移动互联网创意营销平台，为商家提供基于互联网和移动互联网信息技术的互动营销产品及整体行业ERP解决方案的信息技术服务企业。</p>
                   <p>作为国内领先的微信第三方开发商和服务商，商家通过多粉可以轻松管理自己的微信公众号，使用各类实用有效的微信互动营销功能，助力商家提升企业形象、维护客户关系、提升产品销量。</p>
              </div>
              <div class="au1">
                  <ul class="clearfix">
                      <li>
                         <img src="${imageUrl}/weixin/about2_13.jpg">
                         <strong>我们的展望</strong>
                         <span>做新时期的移动互联网企业</span>
                      </li>
                      <li>
                         <img src="${imageUrl}/weixin/about2_15.jpg">
                         <strong>我们的理念</strong>
                         <span>完美，创新，极致</span>
                      </li>
                      <li>
                         <img src="${imageUrl}/weixin/about2_17.jpg">
                         <strong>我们的使命</strong>
                         <span>连接粉丝 连接世界</span>
                      </li>
                  </ul>
              </div>
              <div class="au2">
                  <ul>
                     <li>
                         <strong>价值观</strong>
                         <p>世界其实很小，以进取博奕的行动感动自己，改变世界。 这个“世界”是我们心中的那个世界，改变一切要先改变自己开始，从心出发，积极进取博奕的精神创造一个又一个的奇迹。</p>
                     </li>
                     <li>
                         <strong>企业文化</strong>
                         <p>分享发展，让一切成果与我们的员工，用户，商业伙伴，投资者分享。多粉不仅是商家的聚粉平台也是粉丝的分享平台，更是员工的事业平台。现有创始人及股东承诺为吸引更多优秀的人才，商业伙伴，机构投资者将根据公司的发展不断稀释现有股权来回报员工，用户，商业伙伴与投资者，一起参与这场移动互联网的分享盛宴。</p>
                     </li>
                  </ul>
              </div> 
          </div>
          
          <div class="part">
              <h2>发展历程</h2>
              <img src="${imageUrl}/weixin/djc.jpg"/>
          </div>

          <div class="part">
              <h2>办公环境</h2>
              <div class="bghj clearfix">
                  <img src="${imageUrl}/weixin/about2_27.jpg"/>
                  <img src="${imageUrl}/weixin/about2_29.jpg"/>
                  <img src="${imageUrl}/weixin/about2_33.jpg"/>
                  <img src="${imageUrl}/weixin/about2_35.jpg"/>
              </div>
          </div>

          <div class="part">
              <h2>公司活动</h2>
              <div id="tg_content">
               <div class="tgc_list">
                   <ul class="clearfix">
                       <li>
                          <section class="tgcimg"><img src="${imageUrl}/weixin/about2.1_02.jpg" alt=""></section>
                          <p class="tgctxt">多粉好声音</p>
                       </li>
                       <li>
                          <section class="tgcimg"><img src="${imageUrl}/weixin/about2.1_04.jpg" alt=""></section>
                          <p class="tgctxt">多粉篮球比赛</p>
                       </li>
                       <li>
                          <section class="tgcimg"><img src="${imageUrl}/weixin/about2.1_05.jpg" alt=""></section>
                          <p class="tgctxt">商家现场互动</p>
                       </li>
                       <li>
                          <section class="tgcimg"><img src="${imageUrl}/weixin/about2.1_06.jpg" alt=""></section>
                          <p class="tgctxt">沙龙培训</p>
                       </li>
                       <li>
                          <section class="tgcimg"><img src="${imageUrl}/weixin/about2.1_05.jpg" alt=""></section>
                          <p class="tgctxt">商家现场互动</p>
                       </li>
                       <li>
                          <section class="tgcimg"><img src="${imageUrl}/weixin/about2.1_06.jpg" alt=""></section>
                          <p class="tgctxt">沙龙培训</p>
                       </li> 
                   </ul>
                </div>
                <a href="javascript:;" class="sys_cion leftarrow"><img class="product-arrow"  src="${imageUrl}/product/cpzx_10.png" alt=""></a>
                <a href="javascript:;" class="sys_cion rightarrow"><img  class="product-arrow"  src="${imageUrl}/product/cpzx_13.png" alt=""></a>
            </div>
          </div>

     </div>

    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>

    <script>
    $(function () {
	    $('.li-pic-abous').mouseenter(function () {
		    var img1 = $(this).find('.aboutUsimg-1');
		    var img2 = $(this).find('.aboutUsimg-2');
		    img1.hide();
		    img2.show();
	    });
	    $('.li-pic-abous').mouseleave(function () {
		    var img1 = $(this).find('.aboutUsimg-1');
		    var img2 = $(this).find('.aboutUsimg-2');
		    img1.show()
		    img2.hide();
	    });
	    
	    officeImgInti();
	    companyImgInti();
	    
	    $("#vimg").click(function(){
            $(this).next(".videobox").show();
            $('#videoframe').attr('src', 'http://v.qq.com/iframe/player.html?vid=s03562s6cry&tiny=0&auto=0');
            
	    });

        $(".video").find(".gt_close").click(function(){
            $(".videobox").hide();

            $('#videoframe').attr('src', '');
        })
    });
    
    function officeImgInti(){ 
    	$.ajax({
			url: "/duofenIntr/html/list", 
			type: "POST",
			async: false,
			data: {imgtype: 0},
			success: function(data){
				var d = eval("("+data+")");
				if(d.status == 1){
					var h = "";
					for(var i=0;i<d.data.length;i++){
						h += '<img src="'+d.data[i].imgurl+'"/>';
					}
					$(".bghj").html(h);
				}else{
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			},
			error: function(){
				WSFUNCTION.msgBox("信息", "网络繁忙!");
			}
		});
    }
    
    function companyImgInti(){
    	$.ajax({
			url: "/duofenIntr/html/list", 
			type: "POST",
			async: false,
			data: {imgtype: 1},
			success: function(data){
				var d = eval("("+data+")");
				if(d.status == 1){
					var h = "";
					for(var i=0;i<d.data.length;i++){
						h += '<li><section class="tgcimg"><img src="'+d.data[i].imgurl+'" alt=""></section><p class="tgctxt">'+d.data[i].remark+'</p></li>';
					}
					$(".tgc_list ul").html(h);
          $("#tg_content").slideLi({"width":243,"arrow":true,"autoplay":false,"speek":300,"showItem":3});
				}else{
					WSFUNCTION.msgBox("信息", "网络繁忙!");
				}
			},
			error: function(){
				WSFUNCTION.msgBox("信息", "网络繁忙!");
			}
		});
    }
    
    

   /*  $('#mod_player').on('click',function(){
    	 $('#mod_player').empty();
        		});i
 */

    </script>
</body>
</html>

