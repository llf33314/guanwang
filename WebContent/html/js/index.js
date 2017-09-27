var it;
$(function(){
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
	homeRotation();
	mealSet();
	webjs.index();
	initCheckIn();
	
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
                +'<div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
                +'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div>'
				+'</div></div>';
			count++;
		}*/
		if(dataType[i].typename == '高级版') 
			s += '<option style="color:#0182de" value="'+dataType[i].id+'" meal-price="'+dataType[i].setprice+'">'+dataType[i].typename+'(推荐)</option>';
		else s += '<option value="'+dataType[i].id+'" meal-price="'+dataType[i].setprice+'">'+dataType[i].typename+'</option>';
	}
	/*$('#meal_set').html(h);*/
	$('#meal_set').html('<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>基础版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥570</span>/年</div>'
			+'<div class="desc"><span>基础版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(1);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div class="show1"><span>公众号管理</span></div>'
			+'<div class="show2" style="display: none;"><p>设置菜单栏、群发推送、微官网、欢迎词、自动回复、留言板、欢迎页、个人中心、文字超链、语音消息回复、粉丝管理、微名片</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>H5 互动游戏 3 套</span></div>'
			+'<div class="show2" style="display: none;"><p>微签到、刮刮乐、砸金蛋</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>会员 300 名</p></div>'
			+'</div>'
			+'<div class="show"><span>微官网</span></div>'
			+'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
			+'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
			+'<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>升级版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥1380</span>/年</div>'
			+'<div class="desc"><span>升级版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(2);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div idclass="show1"><span>公众号管理</span></div>'
			+'<div class="show2" style="display: none;"><p>设置菜单栏、欢迎页、群发推送、微官网、欢迎词、自动回复、留言板、个人中心、文字超链、语音消息回复、粉丝管理、消息模板、微官网、微场景、优惠劵、免费派劵渠道、微名片</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>H5 互动游戏 5 套</span></div>'
			+'<div class="show2" style="display: none;"><p>刮刮乐、砸金蛋、抢元宝、抽奖大转盘、疯狂数钱</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>会员 1000 名</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>推广工具</span></div>'
			+'<div class="show2" style="display: none;"><p>门店管理(单店）、微预约（1 个）、投票（30 人）、微外勤、多粉打印机</p></div>'
			+'</div>'
			+'<div class="show"><span>支付工具</span></div>'
			+'<div class="show">'
			+'<div class="show1"><span>行业版应用</span></div>'
			+'<div class="show2" style="display: none;"><p>微餐饮（30 个商品）、微商城（30 个商品）</p></div>'
			+'</div>'			
			+'<div class="show"><span>智慧进销存</span></div>'
			+'<div class="show"><span>商家联盟（盟员版）</span></div>'
			+'<div class="show"><span>免费提供 POS 机</span></div>'
			+'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
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
			+'<div class="show1"><span>公众号管理</span></div>'
			+'<div class="show2" style="display: none;"><p>设置菜单栏、欢迎页、群发推送、微官网、欢迎词、自动回复、留言板、个人中心、文字超链、语音消息回复、粉丝管理、消息模板、微官网、微场景、优惠劵、免费派劵渠道、微客服、微名片</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>H5 互动游戏 10 套</span></div>'
			+'<div class="show2" style="display: none;"><p>摇手气、圣诞大礼包、一站到底、拆礼盒、摇钱树、好运翻翻看、元旦跨年跳跃、幸运九宫格、元宵点灯、一箭穿心、大海捞金、赛龙舟（互动游戏）</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>会员 5000 名</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>推广工具</span></div>'
			+'<div class="show2" style="display: none;"><p>门店管理（2店）、微预约（2 个）、投票（50 人）、微外勤、微社区、微公告、微购票（不超 3000 张）、高级邀请（50 人）、高级预约、微相册、扫码签到、推广海报、个人名片、文章评论、微下载、摇一摇、多粉打印机、在线报名、微渠道</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>支付工具</span></div>'
			+'<div class="show2" style="display: none;"><p>扫码收款（钱包支付）、优惠买单、扫码支付</p></div>'
			+'</div>'
			+'<div class="show"><span>粉巢系统</span></div>'
			+'<div class="show"><span>分销系统</span></div>'
			+'<div class="show">'
			+'<div class="show1"><span>行业版应用</span></div>'
			+'<div class="show2" style="display: none;"><p>微酒店/微房产/微饭堂/微旅游/微美容/微餐饮（100 个）/微商城（100 个）</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>微信小程序</span></div>'
			+'<div class="show2" style="display: none;"><p>多粉微食堂、康小厨智慧餐饮、康小厨餐饮系统</p></div>'
			+'</div>'
			+'<div class="show"><span>智慧进销存</span></div>'
			+'<div class="show">'
			+'<div class="show1"><span>SaaS ERP 连锁版（2店）</span></div>'
			+'<div class="show2" style="display: none;"><p>康小厨（智慧餐饮）、车小算（汽车美容与快修）、小红十（智慧社区医疗）</p></div>'
			+'</div>'
			+'<div class="show"><span>商家联盟（盟员版）</span></div>'
			+'<div class="show"><span>免费提供 POS 机</span></div>'
			+'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
			+'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
			+'<div class="item-wrap">'
			+'<div class="item-wrap-main">'
			+'<div class="icon-wrap"><span>至尊版</span></div>'
			+'<div class="top-wrap"><div class="price"><span>￥4980</span>/年</div>'
			+'<div class="desc"><span>至尊版<i>*</i></span>全程人工协助</div>'
			+'<a href="javascript:pay(4);" class="base_abtn">立即购买</a>'
			+'</div><div class="cont-wrap"><ul class="clearfix">'
			+'<div class="show">'
			+'<div class="show1"><span>公众号管理</span></div>'
			+'<div class="show2" style="display: none;"><p>设置菜单栏、欢迎页、群发推送、微官网、欢迎词、自动回复、留言板、个人中心、文字超链、语音消息回复、粉丝管理、消息模板、微官网、微场景、优惠劵、免费派劵渠道、微客服、权限查看、微名片</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>H5 互动游戏 15 套</span></div>'
			+'<div class="show2" style="display: none;"><p>关注有礼、摇手气、圣诞大礼包、一站到底、拆礼盒、摇钱树、大屏抽奖、元旦跨年跳跃、幸运九宫格、元宵点灯、大转盘、欢乐抢元宝、刮刮乐、一箭穿心、疯狂数钱、幸运大抽奖、大海捞金、赛龙舟（互动游戏）</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>会员系统</span></div>'
			+'<div class="show2" style="display: none;"><p>会员 10000 名</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>推广工具</span></div>'
			+'<div class="show2" style="display: none;"><p>门店管理（5店）、微预约（3 个）、投票（100 人）、微外勤、微社区、微公告、微购票（不超 10000 张）、高级邀请（200 人）、高级预约、微相册、扫码签到、推广海报、个人名片、文章评论、微下载、摇一摇、多粉打印机、360 全景、评价系统、微渠道、在线报名、3D720°全景</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>支付工具</span></div>'
			+'<div class="show2" style="display: none;"><p>扫码收款（钱包支付）、优惠买单、支付有礼、扫码支付</p></div>'
			+'</div>'
			+'<div class="show"><span>分销系统</span></div>'
			+'<div class="show">'
			+'<div class="show1"><span>行业版应用</span></div>'
			+'<div class="show2" style="display: none;"><p>微酒店/微房产/微饭堂/微旅游/微美容/微餐饮（300 个）/微商城（300 个）</p></div>'
			+'</div>'
			+'<div class="show">'
			+'<div class="show1"><span>微信小程序</span></div>'
			+'<div class="show2" style="display: none;"><p>多粉微食堂、康小厨智慧餐饮、康小厨餐饮系统</p></div>'
			+'</div>'
			+'<div class="show"><span>智慧进销存</span></div>'
			+'<div class="show">'
			+'<div class="show1"><span>商家联盟（盟员版）</span></div>'
			+'<div class="show2" style="display: none;"><p>30 名</p></div>'
			+'</div>'
			+'<div class="show"><span>粉巢系统（个性域名）</span></div>'
			+'<div class="show">'
			+'<div class="show1"><span>SaaS  ERP 连锁版（5店）</span></div>'
			+'<div class="show2" style="display: none;"><p>康小厨（智慧餐饮）、车小算（汽车美容与汽修）、小红十（智慧社区医疗）</p></div>'
			+'</div>'
			+'<div class="show"><span>免费提供 POS 机</span></div>'
			+'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
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
	                $(this).attr("data-height",880 + morelen * 29);
	            }
	            else
	            {
	                $(this).attr("data-height",880);
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
	           "height":700
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
	$('#pay_box_price').html($('#paybox').find('.popup_dialog_bd select').find('option[value="'+id+'"]').attr('meal-price'));
	console.log(id);
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


