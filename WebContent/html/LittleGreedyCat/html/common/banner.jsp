<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="xc-head">
	<div class="xc-top">
		<div class="xc-top-title">
			<img src="../img/logo.png" />
		</div>
		<a href="/" class="xc-top-station">返回主站</a>
		<div class="xc-top-menu"> 
			<a href="index.jsp" data-num="1">首页</a> 
			<a href="productcore.jsp" data-num="2">产品核心</a>
			<a href="appcenter.jsp" data-num="3">应用中心</a> 
			<a href="/html/LittleGreedyCat/html/car-s.jsp" data-num="4">硬件</a>
			<a href="/html/agency/html/index.jsp">申请代理</a>
		</div>
		<div class="xc-top-service">
			<a href="http://www.duofriend.com/html/instructions.jsp">使用手册</a>
			<a href="http://duofriend.com/user/toregister.do">免费体验</a> 
			<a href="http://canyin.duofriend.com" class="xc-top-service-login">登录</a> 				
		</div>
	</div>
	<img src="../img/banner.png" class="xc-banner"/>
	<div class="xc-choice">
		<div class="xc-choice-box-one" onmouseover="gtShow(1,this)">
			<p class="xc-choice-box-title">预定</p>
		</div>
		<div class="xc-choice-box-two" onmouseover="gtShow(2,this)">
			<p class="xc-choice-box-title">排队</p>
		</div>
		<div class="xc-choice-box-three" onmouseover="gtShow(3,this)">
			<p class="xc-choice-box-title">点餐</p>
		</div>
		<div class="xc-choice-box-four" onmouseover="gtShow(4,this)">
			<p class="xc-choice-box-title">外卖</p>
		</div>
		<div class="xc-choice-box-five" onmouseover="gtShow(5,this)">
			<p class="xc-choice-box-title">智能前台</p>
		</div>
		<div class="xc-choice-box-six" onmouseover="gtShow(6,this)">
			<p class="xc-choice-box-title">优惠券</p>
		</div>
		<div class="xc-choice-box-seven" onmouseover="gtShow(7,this)">
			<p class="xc-choice-box-title">积分</p>
		</div>
		<div class="xc-choice-box-eight" onmouseover="gtShow(8,this)">
			<p class="xc-choice-box-title">收银</p>
		</div>
	</div>
</div>
</div>
<script>
	$(function() {
		if (access_num != 0){
			$('.xc-choice').remove();
		}
		
		if(access_num == 4){
			console.log(access_num);
			console.log(access_num_hard)
			$('.xc-banner').remove();
			$('.xc-top-service').append('<a href="javascript:void(0);" onclick="showClick(2);">购买</a>');
			var xc_html = '<div class="xc-img-nav">'
                +'<a href="/html/LittleGreedyCat/html/car-s.jsp" data-num-hard="0" >e-500系列</a>'
				+'<a href="/html/LittleGreedyCat/html/car.jsp" data-num-hard="1" >e-300系列</a>'
				+'<a href="/html/LittleGreedyCat/html/car1.jsp" data-num-hard="2" >e-200系列</a>'
				+'<a href="/html/LittleGreedyCat/html/car2.jsp" data-num-hard="3" >e-180系列</a>'
				+'<a href="/html/hardware/html/index.jsp">更多硬件</a>'
				+'</div><div style="width:100%;overflow: hidden;"><div class="wrap-1200 ad001 ">';
			if(access_num_hard == 0){
				xc_html += '<img src="../img/hardware/pic0.png" id="cat1" class="mated1 infinite fadeInLeftBig"/>';
			}else if(access_num_hard == 1){
				xc_html += '<img src="../img/hardware/pic1.png" id="cat1" class="mated1 infinite fadeInLeftBig"/>';
            }else if(access_num_hard == 2){
                    xc_html += '<img src="../img/hardware/pic4.png" id="cat1" class="mated1 infinite fadeInLeftBig"/>';
			}else {
				xc_html += '<img src="../img/hardware/pic3.png" id="cat1" class="mated1 infinite fadeInLeftBig"/>';
			}
			xc_html += '<div class="ad-txt">'
				+'<div class="ad-txt-part1 mated2 infinite fadeInUpBig" style="opacity: 0;" id="cat2">';
			if(access_num_hard == 0){
				xc_html += '<h1>随需而变，专业之选</h1>'
					+'<ul class="clearfix">'
					+'<li><img src="../img/hardware/pic2.png">高清电容多点触摸屏 </li>'
					+'<li><img src="../img/hardware/pic2.png">内置小票打印机  </li>'
					+'<li><img src="../img/hardware/pic2.png">康小厨ERP系统</li>'
					+'<li><img src="../img/hardware/pic2.png">支持双屏异显 </li>'
					+'<li><img src="../img/hardware/pic2.png">内置扫码摄像头  </li>'
                    +'<li><img src="../img/hardware/pic2.png">Android 5.1.1</li>';
			}else if(access_num_hard == 1){
                xc_html += '<h1>高效合一，信赖之选</h1>'
                    +'<ul class="clearfix">'
                    +'<li><img src="../img/hardware/pic2.png">电容触摸屏 </li>'
                    +'<li><img src="../img/hardware/pic2.png">内置小票打印机 </li>'
                    +'<li><img src="../img/hardware/pic2.png">康小厨ERP系统</li>'
                    +'<li><img src="../img/hardware/pic2.png">支持双屏显示</li>'
                    +'<li><img src="../img/hardware/pic2.png">内置扫码摄像头 </li>';
            }else if(access_num_hard == 2){
                xc_html += '<h1>小巧时尚，一身百为</h1>'
                    +'<ul class="clearfix">'
                    +'<li><img src="../img/hardware/pic2.png">电容触摸屏</li>'
                    +'<li><img src="../img/hardware/pic2.png">支持双屏显示</li>'
                    +'<li><img src="../img/hardware/pic2.png">Android5.1</li>'
                    +'<li><img src="../img/hardware/pic2.png">多接口拓展</li>'
                    +'<li><img src="../img/hardware/pic2.png">康小厨ERP系统</li>';
			}else{
				xc_html += '<h1>小巧时尚，一身百为</h1>'
					+'<ul class="clearfix">'
					+'<li><img src="../img/hardware/pic2.png">电容触摸屏</li>'
					+'<li><img src="../img/hardware/pic2.png">LED显示器</li>'
					+'<li><img src="../img/hardware/pic2.png">Android5.1</li>'
					+'<li><img src="../img/hardware/pic2.png">多接口拓展</li>'
					+'<li><img src="../img/hardware/pic2.png">康小厨ERP系统</li>';
			}
			xc_html += '</ul></div><div class="ad-txt-part2 mated3 infinite fadeInUpBig" style="opacity: 0;" id="cat3">';
			if(access_num_hard == 0){
				xc_html += '￥3580';
			}else if(access_num_hard == 1){
				xc_html += '￥2860';
            }else if(access_num_hard == 2){
                xc_html += '￥1850';
			}else{
				xc_html += '￥1280';
			}
			xc_html += '<a href="javascript:void(0);" onclick="showClick(2);">购买&nbsp;&gt;</a></div>'
				+'<ul class="clearfix ad-txt-part3 animated fadeInRight">'
				+'<li class="animated" style="opacity: 0;" id="cat4">微信点餐</li>'
				+'<li class="animated" style="opacity: 0;" id="cat5">扫码点菜</li>'
				+'<li class="animated" style="opacity: 0;" id="cat6">外卖接入</li>'
				+'<li class="animated" style="opacity: 0;" id="cat7">简单易用</li>'
				+'<li class="animated" style="opacity: 0;" id="cat8">安卓系统</li>'
				+'</u></div></div></div>';
			$('.xc-head').append(xc_html);
			$('.xc-img-nav a[data-num-hard="' + access_num_hard + '"]').addClass('selected');
		}else{
			$('.xc-top-service').append('<a href="/html/LittleGreedyCat/html/littlecatpay.jsp" data-num="4">购买</a>');
		}
		
		if (access_num == 2) {
			$('.xc-banner').remove();
	    	$('.xc-head').css({'position': 'fixed', 'z-index': '2', 'background': 'none'});
		}
		$('a[data-num="' + access_num + '"]').addClass('sp');

		$('body').show();
	});
	
	function gtShow(id, t) {
		$('.xc-choice-hidden').find('#id' + id).show().siblings('div')
				.hide();
	}
	
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
