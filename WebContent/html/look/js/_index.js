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
		a.source = "电脑-样子";
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
	
	mealSet();
});

function mealSet(){
	var v = WSFUNCTION.doPostReturnFull("/mealSet/html/list", {});
	var data = v.data, dataType = v.dataType, h = '', s = '', count = 0;
	for(var i=(dataType.length-1);i>-1;i--){
		if(dataType[i].typename == '高级版') 
			s += '<option style="color:#0182de" value="'+dataType[i].id+'" meal-price="'+dataType[i].setprice+'">'+dataType[i].typename+'(推荐)</option>';
		else s += '<option value="'+dataType[i].id+'" meal-price="'+dataType[i].setprice+'">'+dataType[i].typename+'</option>';
	}
	$('#paybox').find('.popup_dialog_bd select').html(s);

}

function pay(id){
	$('#paybox').find('.popup_dialog_bd select').find('option').removeProp('selected');
	$('#paybox').find('.popup_dialog_bd select').find('option[value="'+id+'"]').prop('selected', 'selected');
	$('#pay_box_price').html($('#paybox').find('.popup_dialog_bd select').find('option[value="'+id+'"]').attr('meal-price'));
	console.log(id);
	$('#paybox').show();
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


