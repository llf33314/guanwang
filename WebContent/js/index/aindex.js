var it;
var index_url = "";
$(function(){
    gtShow(1,$("#a-swiper1"));
    // $("#a-swiper7 > a").attr("style","color:#2d8efe;");
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
//	webjs.index();
//	initCheckIn();

    $('body').show();
});
var  closeTime = 0 ;
//写cookies
function setCookie(objName, objValue, objHours){
    var str = objName + "=" + escape(objValue);
    if (objHours > 0) {//为0时不设定过期时间，浏览器关闭时cookie自动消失
        var date = new Date();
        var ms = objHours * 3600 * 1000;
        date.setTime(date.getTime() + ms);
        str += "; expires=" + date.toGMTString();
    }
    document.cookie = str;
}

//读取cookies
function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");

    if(arr=document.cookie.match(reg))

        return (arr[2]);
    else
        return null;
}

//删除cookies
function delCookie(name)
{
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval=getCookie(name);
    if(cval!=null)
        document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}
function homeRotation(){
    if (!getCookie("website_cookies")){
        WSFUNCTION.doPostCallback({
            url: "/homeRotation/html/findShowImage",
            param: {},
            func: function(v){
                for(var i=0;i<v.length;i++){
                    // if(v[i].url != '' && v[i].url != null) aurl = v[i].url;
                    // if(i == 0) html += '<li style="height: 470px; background-image: url('+v[i].imgurl
                    // 		+');"><a href="'+aurl+'"><img src="'+v[i].imgurl+'" style="display:none"></a></li>';
                    // else html += '<li><a href="'+aurl+'"><img lazy_src="'+v[i].imgurl+'"></a></li>';
                    $("#addImages").attr("src",v[i].img_url);
                    index_url = v[i].url;
                    closeTime = v[i].showtime;
                    $("#closeAdBarner").show();
                    setCookie('website_cookies','quangege',0)
                    window.setTimeout(closeAdBarner,closeTime*1000);
                }
            }
        });
    }
}
var closeAdBarner = function(){
    document.querySelectorAll('#closeAdBarner')[0].style.display = 'none'
}
function guangGao() {
    window.open(index_url);
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

    $('#meal_set').html('<div class="item-wrap">'
        +'<div class="item-wrap-main">'
        +'<div class="icon-wrap"><span>基础版</span></div>'
        +'<div class="top-wrap"><div class="price"><span>1家门店</span></div>'
        +'<div class="desc"><span>基础版<i>*</i></span>全程人工协助</div>'
        +'<a href="javascript:pay(1);" class="base_abtn">立即购买</a>'
        +'</div><div class="cont-wrap"><ul class="clearfix">'
        +'<div class="show">'
        +'<div class="show1"><span>公众号</span></div>'
        +'<div class="show2" style="display: none;"><p>协助商家开通公众号，提供海量免费的公众号制作工具，帮助商家打造专业的公众号平台</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>收银</span></div>'
        +'<div class="show2" style="display: none;"><p>提供线上线下收银解决方案，支持微信、支付宝、会员卡、挂账、优惠券抵扣、魔盒等多种支付方式</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>会员</span></div>'
        +'<div class="show2" style="display: none;"><p>零成本创建自己的会员管理体系，会员卡、储值、积分、粉币等数据实时互通，门店网店全部通用</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>微商城（营销版）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含基础商城、积分商城两大功能模块，轻松满足移动电商的零售需求</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>进销存</span></div>'
        +'<div class="show2" style="display: none;"><p>智慧进销存解决方案，全程扫码作业，线上线下库存实时同步，为商家解决库存问题</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>优惠券</span></div>'
        +'<div class="show2" style="display: none;"><p>商家可创建折扣券、代金券、满减券、礼品券等多种类型的优惠券，支持二维码、链接领取或分享</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>推广工具（5款）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供微官网、微场景、微名片等5款基础工具，多维度提升商家推广的效率</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>营销应用（6款）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供微签到、微留言、微预约、微投票、微公告等6款营销应用，解决商家日常营销需求</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>ERP智慧行业（1家门店）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供全行业解决方案柜台PC版，商家可依据行业自行选择，支持商家创建1家独立门店</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>来电眼（不含硬件）</span></div>'
        +'<div class="show2" style="display: none;"><p>系统自动识别来电者是散客还是会员，帮助商家抓住每一个客户</p></div>'
        +'</div>'
        +'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
        +'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
        +'<div class="item-wrap">'
        +'<div class="item-wrap-main">'
        +'<div class="icon-wrap"><span>标准版</span></div>'
        +'<div class="top-wrap"><div class="price"><span>2家门店</span></div>'
        +'<div class="desc"><span>标准版<i>*</i></span>全程人工协助</div>'
        +'<a href="javascript:pay(2);" class="base_abtn">立即购买</a>'
        +'</div><div class="cont-wrap"><ul class="clearfix">'
        +'<div class="show">'
        +'<div class="show1"><span>微商城（营销版+商城小程序）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含基础商城、积分商城以及微商城小程序三大模块，并提供团购、秒杀、分销等3款拓展应用</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>进销存（线上商城数据同步）</span></div>'
        +'<div class="show2" style="display: none;"><p>智慧进销存解决方案，线上商城与线下门店库存实时同步，为商家解决库存问题</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>多粉钱包</span></div>'
        +'<div class="show2" style="display: none;"><p>即第三方支付平台，让没有公众号的商家也能使用二维码支付，轻松收银</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>优惠券（支持线上投放）</span></div>'
        +'<div class="show2" style="display: none;"><p>商家可创建优惠券并投放到公众号、小程序、手机浏览器等多种线上渠道，促销引流</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>行业版应用</span></div>'
        +'<div class="show2" style="display: none;"><p>全方位的线上营销解决方案，包含20多个行业的行业版应用，帮助商家连接互联网，实现互联网+</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>推广工具（7款）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供微官网、微场景、微名片、优惠券等7款应用，多维度提升商家推广的效率</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>营销应用（12款）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含微签到、微留言、微预约、微投票、微社区等12款应用，解决不同商家的个性化需求</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>互动游戏（8款）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供幸运九宫格、摇手气、砸金蛋、拆礼盒等8款互动游戏，帮助商家制造热点，吸引新会员</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>ERP智慧行业（2家门店）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含全行业解决方案柜台PC版、小程序端（粉丝+店员+老板端），商家可依据行业自行选择</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>来电眼（不含硬件）</span></div>'
        +'<div class="show2" style="display: none;"><p>系统自动识别来电者是散客还是会员，帮助商家抓住每一个客户</p></div>'
        +'</div>'
        +'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
        +'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
        +'<div class="item-wrap">'
        +'<div class="item-wrap-main">'
        +'<div class="icon-wrap"><span>升级版</span></div>'
        +'<div class="top-wrap"><div class="price"><span>5家门店</span></div>'
        /*+'<div class="xjb">性价比最高</div>'*/
        +'<div class="desc"><span>升级版<i>*</i></span>全程人工协助</div>'
        +'<a href="javascript:void(0);" onClick="showClick(2)" class="base_abtn">立即咨询</a>'
        +'</div><div class="cont-wrap"><ul class="clearfix">'
        +'<div class="show">'
        +'<div class="show1"><span>小程序（通用版）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供各行业通用版小程序，让没有公众号的商家也能用，帮助商家抢占流量先机</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>商家联盟（盟员版）</span></div>'
        +'<div class="show2" style="display: none;"><p>异业商家联盟互联网解决方案，盟员版用户可选择加入优秀的联盟组织，联盟内优惠互通，客户互荐</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>微商城（营销版+商城小程序）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含基础商城、积分商城以及微商城小程序三大模块，提供团购、秒杀、分销、预售等6款拓展应用</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>进销存（线上线下同步+小程序）</span></div>'
        +'<div class="show2" style="display: none;"><p>智慧进销存解决方案，门店网店库存实时同步，配备店员端小程序，全方位解决库存问题</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>优惠券（线上多渠道投放）</span></div>'
        +'<div class="show2" style="display: none;"><p>商家可在微商城、小程序、ERP等多渠道投放优惠券，并且支持单张或多张组合礼包等2种投放方式</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>营销应用（16款）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含微签到、微留言、微预约、微投票、微社区等16款应用，解决不同商家的个性化需求</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>优惠券商城（仅派券）</span></div>'
        +'<div class="show2" style="display: none;"><p>商家可在优惠券商城在线发布自己的优惠券，让更多的用户领到你的优惠券</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>ERP智慧行业（5家门店）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含柜台PC版、公众号H5端和小程序（粉丝+店员+老板端），商家可自行选择行业，创建5家门店</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>粉巢系统（独立域名）</span></div>'
        +'<div class="show2" style="display: none;"><p>实现微信、手机浏览器、小程序、PC网站、手机网站等多端数据实时同步，支持个性化独立域名</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>大数据</span></div>'
        +'<div class="show2" style="display: none;"><p>营业数据实时统计，大数据自动分析顾客消费行为、习惯，帮助商家快速制定营销方案</p></div>'
        +'</div>'
        +'</ul></div><div class="amore"><a href="/html/combo/html/index.jsp" class="more">查看详情</a><div class="freeTry">'
        +'<a href="http://duofriend.com/user/toregister.do">免费体验</a></div></div></div></div>'
        +'<div class="item-wrap">'
        +'<div class="item-wrap-main">'
        +'<div class="icon-wrap"><span>高级版</span></div>'
        +'<div class="top-wrap"><div class="price"><span>8家门店</span></div>'
        +'<div class="desc"><span>高级版<i>*</i></span>全程人工协助</div>'
        +'<a href="javascript:void(0);" onClick="showClick(2)" class="base_abtn">立即咨询</a>'
        +'</div><div class="cont-wrap"><ul class="clearfix">'
        +'<div class="show">'
        +'<div class="show1"><span>小程序（通用版）</span></div>'
        +'<div class="show2" style="display: none;"><p>提供各行业通用版小程序，让没有公众号的商家也能用，帮助商家抢占流量先机</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>商家联盟（盟员版）</span></div>'
        +'<div class="show2" style="display: none;"><p>异业商家联盟互联网解决方案，盟员版用户可选择加入优秀的联盟组织，联盟内优惠互通，客户互荐</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>微商城（旗舰版+商城小程序）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含基础商城、积分商城以及微商城小程序三大模块，提供团购、秒杀、分销、预售等7款拓展应用</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>进销存（线上线下同步+小程序）</span></div>'
        +'<div class="show2" style="display: none;"><p>智慧进销存解决方案，门店网店库存实时同步，配备店员端小程序，全方位解决库存问题</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>推广工具（15款）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含微官网、微场景、微名片、优惠券等15款应用，多维度提升商家推广的效率</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>营销应用（18款）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含微签到、微留言、微预约、微投票、微社区等18款应用，解决不同商家的个性化需求</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>优惠券商城（运营商版）</span></div>'
        +'<div class="show2" style="display: none;"><p>自媒体、大V等商家可以搭建自己的优惠券商城，自己做运营商，实现粉丝资源的转化</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>ERP智慧行业（8家门店）</span></div>'
        +'<div class="show2" style="display: none;"><p>包含柜台PC版、公众号H5端和小程序（粉丝+店员+老板端），商家可自行选择行业，创建8家门店</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>粉巢系统（独立域名+PC建站）</span></div>'
        +'<div class="show2" style="display: none;"><p>实现多端口数据实时同步，提供个性化独立域名、SEO优化以及PC网站建站支持</p></div>'
        +'</div>'
        +'<div class="show">'
        +'<div class="show1"><span>大数据</span></div>'
        +'<div class="show2" style="display: none;"><p>营业数据实时统计，大数据自动分析顾客消费行为、习惯，帮助商家快速制定营销方案</p></div>'
        +'</div>'
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
            $(".article_dynamic1").html(b);
            $(".article_dynamic2").html(a);
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

/*$(document).ready(function(){
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
 });*/

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
