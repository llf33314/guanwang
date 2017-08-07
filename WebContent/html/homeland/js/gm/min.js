
 var showOrCloseLayer = function(type){
      var paybox = document.querySelectorAll('.cont1');
      if(type == 'close'){
    	  paybox[0].style.display = 'none';
      }else{
    	  paybox[0].style.display = 'block';
      }
    }
 $('.payWay img').on('click', function() {

		if (!$(this).hasClass('checkedPay')) {
			$(this).addClass('checkedPay');
			$(this).siblings().removeClass('checkedPay');
		}
	});
 
 var showOrCloseLayertwo = function(type){
     var qrcodeview = document.querySelectorAll('.cont2');
     if(type == 'close'){
    	 qrcodeview[0].style.display = 'none';
     }else{
    	 qrcodeview[0].style.display = 'block';
     }
   }