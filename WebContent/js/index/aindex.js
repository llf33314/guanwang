var it;
$(function(){
    gtShow(7,$("#a-swiper7"));
    $("#a-swiper7 > a").attr("style","color:#2d8efe;");
	$('.closeimg').on('click', function() {
		$('.popup_dialog_confirm').hide();
	});
	$('.payWay img').on('click', function() {

		if (!$(this).hasClass('checkedPay')) {
			$(this).addClass('checkedPay');
			$(this).siblings().removeClass('checkedPay');
		}
	});
	$('#paybox').find('.popup_dialog_bd select').on('change', function(){
		$('#pay_box_price').html($('#paybox').find('.popup_dialog_bd select').find('option[value="'+$(this).val()+'"]').attr('meal-price'));
	});
	$('#paybox > div.popup_dialog > div.popup_dialog_ft > div').on('click', function() {
		var a = {};
		a.mealid = $('#paybox').find('.popup_dialog_bd select').val();
		a.name = $('#payname').val();
		a.tel = $('#payphone').val();
		a.paytype = $('#paybox .payWay').find('.checkedPay').attr('pay-data');
		a.price = $('#pay_box_price').html();
		/*console.log(a);*/
		
		if(a.name == '') { 
			$('#paytip').html('请输入个人姓名！');
        	$('#paytip').show();
		    return false; 
		}else{
			$('#paytip').hide();
		}
		/*var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
		if(!myreg.test(a.tel)) { */
		if(a.tel == '') {
			/*$('#paytip').html('请输入有效的手机号码！');*/
			$('#paytip').html('请输入手机号码！');
        	$('#paytip').show();
		    return false;
		}else{
			$('#paytip').hide();
		}
		a.source = "电脑";
		var v = WSFUNCTION.doPostReturnFull("/webOrder/html/add", a);
		if(v != null && v.status == 1){
			/*if(v.type == 0){*/
				$("#qrcodeview").find("img").attr("src", "/webOrder/html/getUrltoQRcode/"+v.data+"/"+v.time+".do");
				$("#paybox").hide();
				$("#shipay").html($("#pay_box_price").html());
				$("#qrcodeview").show();
				it = setInterval('isPaySuccess('+v.data+')', 600);
				/*location.href = '/html/successPay.jsp';*/
			/*}else if(v.type == 1){
				location.href = '/webOrder/html/'+v.data+'/aliPay';
			}*/
		}else{
			alert("提交失败");
		}
		
		$('#payname').blur(function(){
			if($('#payname').val() == '') { 
				$('#paytip').html('请输入个人姓名！');
	        	$('#paytip').show();
			    return false; 
			}else{
				$('#paytip').hide();
			}
		});
		
		$('#payphone').blur(function(){
			if($('#payphone').val() == '') { 
				$('#paytip').html('请输入手机号码！');
	        	$('#paytip').show();
			    return false; 
			}else{
				$('#paytip').hide();
			}
		});
	});
	
	initArt();
//	homeRotation();
	mealSet();
//	webjs.index();
//	initCheckIn();
	
	$('body').show();
});

function homeRotation(){
	WSFUNCTION.doPostCallback({
		url: "/homeRotation/html/list", 
		param: {}, 
		func: function(v){
			var html = '';
			for(var i=0;i<v.length;i++){
				var aurl = 'javascript:void(0);';
				if(v[i].url != '' && v[i].url != null) aurl = v[i].url;
				if(i == 0) html += '<li style="height: 470px; background-image: url('+v[i].imgurl
						+');"><a href="'+aurl+'"><img src="'+v[i].imgurl+'" style="display:none"></a></li>';
				else html += '<li><a href="'+aurl+'"><img lazy_src="'+v[i].imgurl+'"></a></li>';
			}
			$('#banner ul').html(html);
		}
	});
}

function mealSet(){
    var v = WSFUNCTION.doPostReturnFull("/mealSet/html/list", {});
    var data = v.data, dataType = v.dataType, h = '', s = '', count = 0;
    for(var i=(dataType.length-1);i>-1;i--){
		/*if(count < 4){
		 var innerCount = 0;
		 var xjb = '';
		 if('高级版' == dataType[i].typename) xjb = '<div class="xjb">性价比最高</div>';
		 h += '<div class="item-wrap"><div class="item-wrap-main">'
		 +'<div class="icon-wrap"><span>'+dataType[i].typename+'</span></div>'
		 +'<div class="top-wrap">'
		 +'<div class="price"><span>￥'+dataType[i].setprice+'</span>/年</div>'
		 +xjb
		 +'<div class="desc"><span>'+dataType[i].typename+'<i>*</i></span>全程人工协助</div>'
		 +'<a href="javascript:pay('+dataType[i].id+');" class="base_abtn">立即购买</a>'
		 +'</div>'
		 +'<div class="cont-wrap">'
		 +'<ul class="clearfix">';
		 for(var j=(data.length-1);j>-1;j--){
		 if(data[j].setid == dataType[i].id){
		 if(data[j].setis == 1){
		 h += '<li title="'+data[j].setname+'"><span>'+data[j].setname+'</span></li>';
		 innerCount++;
		 }
		 }
		 }
		 h += '</ul>'
		 +'</div>'
		 +'<div class="amore"><a href="/html/newCombo.jsp" class="more">查看详情</a><div class="freeTry">'
		 +'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div>'
		 +'</div></div>';
		 count++;
		 }*/
        if(dataType[i].typename == '高级版')
            s += '<option style="color:#0182de" value="'+dataType[i].id+'" meal-price="'+dataType[i].setprice+'">'+dataType[i].typename+'(推荐)</option>';
        else s += '<option value="'+dataType[i].id+'" meal-price="'+dataType[i].setprice+'">'+dataType[i].typename+'</option>';
    }

	$('#meal_set').html('<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>基础版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥570</span>/年</div>'
			+'<div class="desc"><span>基础版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(1);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>零成本创建自己的会员管理体系，同时还可以结合优惠券、支付有礼、幸运大转盘等互动营销产品开展会员营销活动，提高会员粘性</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>公众号管理</span></div>'
			+'<div class="show2" style="display: none;"><p>提供微官网、微官网、微场景、微客服、微名片、留言板、语音消息回复等产品，为企业打造精美又容易管理的线上交流推广平台</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>H5 互动游戏 3 套</span></div>'
			+'<div class="show2" style="display: none;"><p>可在多粉旗下全系列互动游戏中任选3套，结合自身营销活动需求，开展各种促销或回馈等活动，制造热点，吸引新会员、激活老会员</p></div>'
			+'</div>'
			+'</ul></div><div class="amore"><a href="/html/newCombo.jsp" class="more">查看详情</a><div class="freeTry">'
			+'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
			+'<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>升级版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥1380</span>/年</div>'
			+'<div class="desc"><span>升级版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(2);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div class="show1"><span>行业版应用</span></div>'
			+'<div class="show2" style="display: none;"><p>20多个行业的行业版应用，提供全方位的线上营销解决方案，帮助企业连接互联网；同时还提供相应UC版行业应用，让没有公众号的企业也可使用</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>零成本创建自己的会员管理体系，同时还可以结合优惠券、支付有礼、幸运大转盘等互动营销产品开展会员营销活动，提高会员粘性</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>优惠券</span></div>'
			+'<div class="show2" style="display: none;"><p>可在微信及手机浏览器上打开使用，让无公众号的企业也可以使用优惠券功能；可通过图文推送、短信链接、互动游戏等多种渠道进行投放；支持分享及转赠他人</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>收银台</span></div>'
			+'<div class="show2" style="display: none;"><p>接入微信、支付宝、银联等主流支付方式，同时支持会员卡支付、挂账支付、优惠券抵扣、现金支付等，一站式解决各种支付场景需求</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>免费派券渠道</span></div>'
			+'<div class="show2" style="display: none;"><p>为企业提供免费的优惠券线上投放平台，以高效低成本的方式将优惠券送达到最广阔的顾客群体中，将线上流量转化为消费</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>免费的收银硬件支持</span></div>'
			+'<div class="show2" style="display: none;"><p>免费提供POS机以及多粉魔盒等智能收银硬件，全行业适用，完美兼容多粉旗下全系列支付工具</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>商家联盟（盟员版）</span></div>'
			+'<div class="show2" style="display: none;"><p>异业商家联盟互联网解决方案，盟员版用户可选择加入优秀的联盟组织；联盟内优惠互通，客户互荐，带来更多的商机</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>推广工具</span></div>'
			+'<div class="show2" style="display: none;"><p>通过微预约、微投票、微社区、微渠道、在线报名、高级邀请、高级预约、微相册、扫码签到、推广海报、微下载、摇一摇、多粉打印机等海量工具，快速吸引关注、扩大品牌知名度</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>公众号管理</span></div>'
			+'<div class="show2" style="display: none;"><p>提供微官网、微官网、微场景、微客服、微名片、留言板、语音消息回复等产品，为企业打造精美又容易管理的线上交流推广平台</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>存销宝（单店单账号）</span></div>'
			+'<div class="show2" style="display: none;"><p>全流程扫码出库、入库；门店与网店库存实时同步，库存告急自动预警；多规格商品实行属性标签化管理，杂而有序；灵活的调拨机制，就近调配，快速缓解库存紧缺</p></div>'
			+'</div>'
			+'</ul></div><div class="amore"><a href="/html/newCombo.jsp" class="more">查看详情</a><div class="freeTry">'
			+'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
			+'<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>高级版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥2580</span>/年</div>'
			+'<div class="xjb">性价比最高</div>'
			+'<div class="desc"><span>高级版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(3);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div class="show1"><span>分销系统</span></div>'
			+'<div class="show2" style="display: none;"><p>二级分销系统，企业可在自己的微商城中同步搭建，商品数据互联互通；让消费者在购买的同时，参与商品分销、推广和分润，实现全民营销</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>粉巢系统</span></div>'
			+'<div class="show2" style="display: none;"><p>实现PC网站、手机网站、微信、APP、小程序、支付宝的跨平台数据互通，帮助企业全渠道吸引流量</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>微信小程序</span></div>'
			+'<div class="show2" style="display: none;"><p>提供行业专属的小程序，企业可依据所属行业自行选择；即选即用，无需另行定制开发，无需等待；同时还可以与对应的SaaS模式ERP配套使用，数据无缝对接</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>存销宝（2店多账号）</span></div>'
			+'<div class="show2" style="display: none;"><p>全流程扫码出库、入库；门店与网店库存实时同步，库存告急自动预警；多规格商品实行属性标签化管理，杂而有序；灵活的调拨机制，就近调配，快速缓解库存紧缺</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>SaaS模式ERP（2店）</span></div>'
			+'<div class="show2" style="display: none;"><p>全行业智慧解决方案，企业可按自身所属行业自行选择；支持创建2家独立分店，与此同时实现多门店数据的统一管理</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>零成本创建自己的会员管理体系，同时还可以结合优惠券、支付有礼、幸运大转盘等互动营销产品开展会员营销活动，提高会员粘性</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>收银台</span></div>'
			+'<div class="show2" style="display: none;"><p>接入微信、支付宝、银联等主流支付方式，同时支持会员卡支付、挂账支付、优惠券抵扣、现金支付等，一站式解决各种支付场景需求</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>免费派券渠道</span></div>'
			+'<div class="show2" style="display: none;"><p>为企业提供免费的优惠券线上投放平台，以高效低成本的方式将优惠券送达到最广阔的顾客群体中，将线上流量转化为消费</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>免费的收银硬件支持</span></div>'
			+'<div class="show2" style="display: none;"><p>免费提供POS机以及多粉魔盒等智能收银硬件，全行业适用，完美兼容多粉旗下全系列支付工具</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>商家联盟（盟员版）</span></div>'
			+'<div class="show2" style="display: none;"><p>异业商家联盟互联网解决方案，盟员版用户可选择加入优秀的联盟组织；联盟内优惠互通，客户互荐，带来更多的商机</p></div>'
			+'</div>'
			+'</ul></div><div class="amore"><a href="/html/newCombo.jsp" class="more">查看详情</a><div class="freeTry">'
			+'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
			+'<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>至尊版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥4980</span>/年</div>'
			+'<div class="desc"><span>至尊版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(4);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div class="show1"><span>分销系统</span></div>'
			+'<div class="show2" style="display: none;"><p>二级分销系统，企业可在自己的微商城中同步搭建，商品数据互联互通；让消费者在购买的同时，参与商品分销、推广和分润，实现全民营销</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>粉巢系统（个性域名）</span></div>'
			+'<div class="show2" style="display: none;"><p>实现PC网站、手机网站、微信、APP、小程序、支付宝的跨平台数据互通，帮助企业全渠道吸引流量，支持个性化绑定域名</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>微信小程序</span></div>'
			+'<div class="show2" style="display: none;"><p>提供行业专属的小程序，企业可依据所属行业自行选择；即选即用，无需另行定制开发，无需等待；同时还可以与对应的SaaS模式ERP配套使用，数据无缝对接</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>存销宝（5店多账号）</span></div>'
			+'<div class="show2" style="display: none;"><p>全流程扫码出库、入库；门店与网店库存实时同步，库存告急自动预警；多规格商品实行属性标签化管理，杂而有序；灵活的调拨机制，就近调配，快速缓解库存紧缺</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>SaaS模式ERP（5店）</span></div>'
			+'<div class="show2" style="display: none;"><p>全行业智慧解决方案，企业可按自身所属行业自行选择；支持创建5家独立分店，与此同时实现多门店数据的统一管理</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>零成本创建自己的会员管理体系，同时还可以结合优惠券、支付有礼、幸运大转盘等互动营销产品开展会员营销活动，提高会员粘性</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>收银台</span></div>'
			+'<div class="show2" style="display: none;"><p>接入微信、支付宝、银联等主流支付方式，同时支持会员卡支付、挂账支付、优惠券抵扣、现金支付等，一站式解决各种支付场景需求</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>免费派券渠道</span></div>'
			+'<div class="show2" style="display: none;"><p>为企业提供免费的优惠券线上投放平台，以高效低成本的方式将优惠券送达到最广阔的顾客群体中，将线上流量转化为消费</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>免费的收银硬件支持</span></div>'
			+'<div class="show2" style="display: none;"><p>免费提供POS机以及多粉魔盒等智能收银硬件，全行业适用，完美兼容多粉旗下全系列支付工具</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>商家联盟（盟员版）</span></div>'
			+'<div class="show2" style="display: none;"><p>异业商家联盟互联网解决方案，盟主版用户可自主创建联盟，邀请优秀企业加入联盟；制定统一的规则，统筹管理全联盟</p></div>'
			+'</div>'
			+'</ul></div><div class="amore"><a href="/html/newCombo.jsp" class="more">查看详情</a><div class="freeTry">'
			+'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>');
      $('#paybox').find('.popup_dialog_bd select').html(s);

	   (function(){
	       $(".package-wrap").find(".item-wrap").eq(2).addClass("height-selected").addClass("selected").find(".item-wrap-main").css({"box-shadow":"0 0 20px rgb(134, 199, 249)"});
	       $(".package-wrap").find(".item-wrap").eq(2).css({"text-align" : "left"})
	       $(".package-wrap").find(".item-wrap").each(function(){
	            var len = $(this).find(".cont-wrap").find("li").size(),
	                morelen = len - 6;
	            if(morelen > 0)
	            {
	                $(this).attr("data-height",807 + morelen * 29);
	            }
	            else
	            {
	                $(this).attr("data-height",807);
	            }
	       })
	  }).call(this);

	   $('.show').on('mouseenter', function() {
			$(this).find('.show1').show();
			$(this).find('.show2').show();
		}).on('mouseleave', function() {
			$(this).find('.show1').show();
			$(this).find('.show2').hide();
		})
	  var iwTime = Date.now();
	  $(".package-wrap").on("mousemove",".item-wrap",function(){
	  	   var _this = $(this);
	       if(_this.hasClass("selected")) return false;
	       if(Date.now() - iwTime < 300) return false;
	       iwTime = Date.now();

	       _this.find(".item-wrap-main").css({
	           "height":parseInt(_this.attr("data-height"))
	       });
            _this.css({"text-align":"center"})
	       _this.addClass("height-selected").siblings().removeClass("height-selected").find(".item-wrap-main").css({
	           "height":607
	       }).find(".cont-wrap").find("ul").css({
	           "height":485
	       });

	       _this.find(".cont-wrap").find("ul").css({"height":"auto"});

	       setTimeout(function(){
	           _this.find(".item-wrap-main").css({"box-shadow":"0 0 20px rgb(134, 199, 249)"}).parent().siblings().find(".item-wrap-main").css({"box-shadow":"none"});
	           $(".package-wrap .item-wrap,.package-wrap .item-wrap-main").css({"transition":"all 0.2s linear"});
	           _this.find(".cont-wrap").css({"opacity":0.1,});
	           _this.addClass("selected").siblings().removeClass("selected");
	           setTimeout(function(){
	               $(".package-wrap").find(".cont-wrap").css("opacity",1);
	           },100);
	           setTimeout(function(){
	               $(".package-wrap .item-wrap,.package-wrap .item-wrap-main").css({"transition":"none"});
	           },200); 

	       },10);
	  })

}

function pay(id){
	$('#paybox').find('.popup_dialog_bd select').find('option').removeProp('selected');
	$('#paybox').find('.popup_dialog_bd select').find('option[value="'+id+'"]').prop('selected', 'selected');
	var hh =$('#paybox').find('.popup_dialog_bd select').find('option[value="'+id+'"]').attr('meal-price');
    console.log(hh);
    $("#pay_box_price").html(hh);
    $('#paybox').show();
}

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
						if(_a < 2){
							a += "<li><span>"
								+"【最新】</span><a href='/html/articlePage/article_"+v[i].id+".jsp' id='a-sy-news-a'>"+v[i].title+"</a></li>";
							_a++;
						}
						break;

                    case 1:
						if(_b < 2){
							b += "<li><span>"
								+"【最新】</span><a href='/html/articlePage/article_"+v[i].id+".jsp' id='a-sy-news-a'>"+v[i].title+"</a></li>";
							_b++;
						}
						break;
					case 2:
						if(_c <2){
							c += "<li><span>"
								+"【最新】</span><a href='/html/articlePage/article_"+v[i].id+".jsp' id='a-sy-news-a'>"+v[i].title+"</a></li>";
							_c++;
						}
						break;
				}
				if (_a == 2 && _b == 2 && _c == 2){
					break;
				}
			}
			$(".article_dynamic1").html(a);
			$(".article_dynamic2").html(b);
			$(".article_dynamic3").html(c);
		}
	});
}

function initCheckIn(){
	$(".sj_msg").html("已有 <span>"+busCount.total+"</span> 商家入驻，今日入驻 <span>"+busCount.daysCount+"</span> 位");
}

function isPaySuccess(id){
	$.ajax({
		type: "POST",
		async: true,
        url: "/webOrder/html/isPaySuccess",
        data: {orderid: id},
        dataType: "text",
        success: function(data){
        	var result = eval('('+data+')');
        	/*console.dir(result);*/
        	if(result.data == 1){
        		window.clearInterval(it);
        		/*location.href = '/html/successPay.jsp';*/
        		location.href = '/webOrder/html/'+id+'/paySuccess';
        	}
        }
   	});
}

function clearIt(){
	window.clearInterval(it);
}

$(document).ready(function(){
	  $("#a-show").mouseenter(function(){
	  $("#a-show2").show();
	  });
	  $("#a-show").mouseleave(function(){
	  $("#a-show2").hide();
	  });
	});
	$(document).ready(function(){
		  $("#b-show").mouseenter(function(){
		  $("#b-show2").show();
		  });
		  $("#b-show").mouseleave(function(){
		  $("#b-show2").hide();
		  });
		});
	$(document).ready(function(){
		  $("#c-show").mouseenter(function(){
		  $("#c-show2").show();
		  });
		  $("#c-show").mouseleave(function(){
		  $("#c-show2").hide();
		  });
		});
	
	function gtShow(id, t) {
		$('.a-swiper-box').find('#id' + id).show().siblings('div')
				.hide();
		$("#a-swiper1 > a").removeAttr("style");
        $("#a-swiper2 > a").removeAttr("style");
        $("#a-swiper3 > a").removeAttr("style");
        $("#a-swiper4 > a").removeAttr("style");
        $("#a-swiper5 > a").removeAttr("style");
        $("#a-swiper6 > a").removeAttr("style");
        $("#a-swiper7 > a").removeAttr("style");
        $(t).find("a").attr("style","color:#2d8efe;");



	}
