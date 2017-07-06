$(function(){
    
    $.fn.slideLx = function(opt) {
        var param = {
            display:"ut_slide",
            index: 0,
            speek: 500,
            timer: null ,
            inter: 5000,
            len: 2,
            autoplay:true,
            width: 0,
            height: 0,
            nav:true
        };
        var _this = $(this);
        $.extend(param, opt);

        var time = 0;


        function loadImg()
        {
            if (typeof _this.find("li").eq(param.index).find("img").attr("lazy_src") != 'undefined') 
            {
                var src = _this.find("li").eq(param.index).find("img").attr("lazy_src");
                _this.find("li").eq(param.index).css({"background-image":"url("+src+")"});
                _this.find("li").eq(param.index).find("img").removeAttr("lazy_src");
            }
        }
        
        function play() 
        {
            loadImg();
            switch(param.display)
            {
                case "fade":
                    _this.find("li").eq(param.index).stop().fadeIn(param.speek).siblings().fadeOut(param.speek);
                break;

                case "slide":
                    _this.find("ul").animate({"left":-1 * param.index * $(window).width()},500);
                break;

                case "ut_slide":
                    _this.find("li.thisitem").css('z-index',7).addClass('beforeitem').removeClass('thisitem');
                    _this.find("li").eq(param.index).css("z-index",8).addClass('thisitem');
                    var l = $(window).width()
                    if(parseInt(_this.find("li.thisitem").css("left").replace("px","")) > 0)
                    {
                         l = -1 * l;
                    }
                    _this.find("li.beforeitem").animate({"left":l},param.speek,function(){
                        $(this).removeClass('beforeitem');
                    });
                    _this.find("li.thisitem").animate({"left":0},param.speek);
                break;
            }
            _this.find(".fsnav").find("span").eq(param.index).addClass("current").siblings().removeClass("current");
        }

        function autoPlay()
        {
            play();
        }

    
        function interval() 
        {
            param.index++;
            if (param.index >= param.len) 
            {
                param.index = 0;
            }
            autoPlay();
        }

        function nav()
        {
            var _html = '<div class="fsnav">';
            _this.find("ul").find("li").each(function(i,e){
                if(i == 0)
                {
                   _html = _html + '<span class="current"></span>';
                }
                else
                {
                    _html = _html + '<span></span>';
                }
            });
            _html = _html + '</div>';
            _this.find("ul").after(_html);
        }

        function display()
        {
            switch(param.display)
            {
                case "fade":
                    _this.find("ul").css({"position":"relative","width":"auto"});
                    _this.find("ul").find("li").each(function(i){
                        var n = param.len - i;
                        $(this).css({"z-index":n,"position":"absolute","width":"100%"});
                    });
                break;

                case "slide":
                    _this.find("ul").css({"position":"relative","width":param.len * $(window).width()}).addClass('clearfix');
                    _this.find("ul").find("li").css({"float":"left","width":$(window).width()});
                break;

                case "ut_slide":
                    _this.find("ul").css({"position":"relative","width":"auto"});
                    _this.find("ul").find("li").each(function(i){
                        var n = param.len - i;
                        $(this).css({"z-index":n,"position":"absolute","width":"100%"});
                        if(i != 0)
                        {
                            $(this).css({"left":-1 * $(window).width()});
                        }
                        else
                        {
                            $(this).addClass('thisitem')
                        }
                    });
                break;
            }
        }
        
        function init() 
        {
            var src = _this.find("ul").find("li").eq(0).find("img").attr("src");

            _this.css({"height":param.height});

            param.len = _this.find("ul").find("li").length;
            _this.find("ul").find("li").eq(0).css({"background-image":"url("+src+")"});

            _this.find("ul").find("li").find("a").css({"height":param.height});
            _this.find("ul").find("li").find("a").find("img").hide();

            display();
 
            if(param.nav && param.len > 1) nav();

            
            if(param.autoplay && param.len > 1) param.timer = window.setInterval(interval, param.inter);

           if(param.len > 1){
               time = new Date().valueOf();

                _this.on("click",".fsnav span",function(){
                    var time1 = new Date().valueOf();
                    if(time1 - time < param.speek || $(this).index() == param.index) return false;
                    time = time1;
                    param.index = $(this).index();
                    play();
                });

                _this.hover(function(){
                    clearInterval(param.timer);
                },function(){
                    param.timer = window.setInterval(interval, param.inter);
                });
           }
            
        }
        init();

        $(window).resize(function(){
            
        });

        
    };



    $.fn.slideLi = function(opt) {
        var param = {
            display:"slide",
            index: 0,
            speek: 500,
            timer: null ,
            inter: 5000,
            len: 2,
            autoplay:true,
            width: 0,
            height: 0,
            arrow:false,
            nav:false,
            navStyle:0,
            showItem:0,
            callback: null,
            hitArrow:"r"
        };
        var _this = $(this);
        $.extend(param, opt);


        function loadImg()
        {
            _this.find("li").eq(param.index).find("img").each(function(){
                if (typeof $(this).attr("lazy_src") != 'undefined') 
                {
                    var src = $(this).attr("lazy_src");
                    $(this).attr({"src":src});
                    $(this).removeAttr("lazy_src");
                }
            });
            
        }
        
        function play() 
        {
            
            switch(param.display)
            {
                case "vmsg":
                    var value2 = -1 * param.height * param.index;
                    _this.find("ul").animate({"top": value2},param.speek);
                    if(param.len >= 200)
                    {
                        _this.find("ul").css("top",0);
                        param.index = 0;
                    }
                    else
                    {
                        if(param.index == param.len - 1)
                        {
                            _this.find("ul").append(_this.find("ul").html());
                            param.len = param.len * 2;
                        }
                    }
                    
                break;
                case "slide":
                    loadImg();
                    var value2 = -1 * param.width * param.index;
                    _this.find("ul").animate({"left": value2},param.speek);
                    _this.find(".fsnav").find("span").eq(param.index).addClass("current").siblings().removeClass("current");
                break;
                case "roll":
                    _this.find("ul").find("li").eq(param.index).addClass("current").siblings().removeClass("current");
                   
                    var zindex01=0,zindex02=0,zindex03=3;
                    if(param.hitArrow == "r")
                    {
                        zindex01=1;
                        zindex01=2;
                    }
                    else
                    {
                        zindex01=2;
                        zindex02=1;
                    }
                    switch(param.index){
                        case 0:
                            _this.find("ul").find("li").eq(0).css({"transform":"scale(1) translate(0,0)","z-index":zindex03});
                            _this.find("ul").find("li").eq(1).css({"transform":"scale(0.9) translate(225px,3px)","z-index":zindex01});
                            _this.find("ul").find("li").eq(2).css({"transform":"scale(0.9) translate(-225px,3px)","z-index":zindex02});
                        break;
                        case 1:
                            _this.find("ul").find("li").eq(0).css({"transform":"scale(0.9) translate(-225px,3px)","z-index":zindex01});
                            _this.find("ul").find("li").eq(1).css({"transform":"scale(1) translate(0,0)","z-index":zindex03});
                            _this.find("ul").find("li").eq(2).css({"transform":"scale(0.9) translate(225px,3px)","z-index":zindex02});
                        break;
                        case 2:
                            _this.find("ul").find("li").eq(0).css({"transform":"scale(0.9) translate(225px,3px)","z-index":zindex01});
                            _this.find("ul").find("li").eq(1).css({"transform":"scale(0.9) translate(-225px,3px)","z-index":zindex02});
                            _this.find("ul").find("li").eq(2).css({"transform":"scale(1) translate(0,0)","z-index":zindex03});
                        break;
                    }
                break;

            }
            
        }

        function autoPlay()
        {
            play();
        }

    
        function interval() 
        {
            param.index++;
            if (param.index >= param.len) 
            {
                param.index = 0;
            }
            autoPlay();
        }

        function nav()
        {
            switch(param.navStyle)
            {
                case 0:
                   var _html = '<div class="fsnav">';
                    _this.find("ul").find("li").each(function(i,e){
                        if(i == 0)
                        {
                           _html = _html + '<span class="current"></span>';
                        }
                        else
                        {
                            _html = _html + '<span></span>';
                        }
                    });
                    _html = _html + '</div>';
                    _this.find("ul").after(_html);

                break;
                case 1:
                    var _html = '<div class="fsnav">';
                    var _len = Math.ceil(_this.find("ul").find("li").length / 4);
                    for(var i =0;i < _len;i++)
                    {
                        if(i == 0)
                        {
                           _html = _html + '<span class="current"></span>';
                        }
                        else
                        {
                            _html = _html + '<span></span>';
                        }
                    }
                    _html = _html + '</div>';
                    _this.append(_html);

                break;
            }
        }

        function arrow()
        {
            if(_this.find("a.leftarrow").length == 0)
            {
                _this.append('<a href="javascript:;" class="sys_cion leftarrow"></a>');
                _this.append('<a href="javascript:;" class="sys_cion rightarrow"></a>');
            }
            
        }

        function display()
        {
            /*switch(param.display)
            {
                case "vmsg":
                   for(var i = 0;i<3;i++)
                   {
                       _this.find("ul").append(_this.find("ul").html());
                   }
                break;
            }*/
        }
        
        function init() 
        {
            display();
            param.len = _this.find("ul").find("li").length - param.showItem;
            if(param.nav) nav();
            if(param.arrow) arrow();
            if(param.autoplay) param.timer = window.setInterval(interval, param.inter);
        }
        init();

        $(window).resize(function(){
            
        });

        _this.on("click",".fsnav span",function(){
            param.index = $(this).index();
            switch(param.navStyle)
            {
                case 0:
                    play();
                break;
                case 1:
                    loadImg();
                    var value2 = -1 * param.width * param.index * 4;
                    _this.find("ul").stop().animate({"left": value2},param.speek * 2);
                    _this.find(".fsnav").find("span").eq(param.index).addClass("current").siblings().removeClass("current");
                break;
            }
        });

        _this.on("click",".leftarrow",function(){
            param.index--;
            
            if(param.display == "roll"){
                if(param.index < 0) param.index = param.len - 1;
                param.hitArrow = "l";
            }else{
                if(param.index < 0) param.index = 0;
            }
            play();
        });


        _this.on("click",".rightarrow",function(){
            param.index++;
            if(param.display == "roll"){
                if(param.index == param.len) param.index = 0;
                param.hitArrow = "l";
            }else{
                if(param.index == param.len) param.index = param.len - 1;
            }
            play();
        });
        
        if(param.autoplay){
            _this.hover(function(){
                clearInterval(param.timer);
            },function(){
                param.timer = window.setInterval(interval, param.inter);
            });
        };
    };
});



