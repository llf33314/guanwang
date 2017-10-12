
	function gtShow(id, t) {
		$('.a-in-swiper-box').find('#id' + id).show().siblings('div')
				.hide();
		$("#a-swiper1 > a").removeAttr("style");
        $("#a-swiper2 > a").removeAttr("style");
        $(t).find("a").attr("style","color:#fff;background-image: url(../images/oper3.png);background-repeat: no-repeat; background-position: center;height: 80px;");
	if(id==2){
		$(".gt-a-top").attr("style","position: absolute;");
	}else {
        $(".gt-a-top").removeAttr("style")
	}
}



