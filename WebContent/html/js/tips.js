$(function(){
    /*
    消息提示插件

    $(document).tipsClass({"tips":"gtloading","jump":"http://wwww.baidu.com"});

    $(document).tipsClass({
        tips       : "gtloading",           
        type       : "post",                   
        param      : $("#form1").serialize(),
        url        : "http://192.168.3.107/home/index/test",
        dataType   : "json",
        success    : "ss(data)",
    });*/
    $.fn.tipsClass = function(opt) {
        var param = {
            tips       : "gtloading",          //gtloading floading fmloading
            title      : "",                   //{"title":"提示","content":"你好！欢迎登陆！"}
            content    : "",
            times      : 3,
            type       : "",                   //post or get
            param      : {},                   //{name:"steven",age:10} or $(form).serialize()
            url        : "./index.php",
            dataType   : "json",               //json text or html
            jump       : "",
            callback   : "",
            success    : "",
            fail       : "",
            error      : ""
        };
        var _this = $(this);
        $.extend(param, opt);

        var pageinfo = {
            screenH    : $(window).height(),
            screenW    : $(window).width(),
            Dheight    : $(document).height(),
            Dwidth     : $(document).width()
         };

        //如果退出时间设置为0，则不隐藏提示框，由或由回调函数处理
        function setTimeoutFun()
        {
            if(param.times != 0)
            {
                window.setTimeout(function(){
                    //隐藏提示框
                    $("#loading").hide();
                },param.times);    
            }
        };

        function foption(){
            //如果存在回调函数则执行
            if(param.callback)
            {
                eval(param.callback);
                $("#loading").hide();
            }

            //如果定义跳转页面
            if(param.jump)
            {
                window.location.href = param.jump;
                return false;
            }
        };

        function isEmpty(obj)
        {
            for(var o in obj)
            {
                return false;
            }
            return true;
        };

        //初始化
        function init(){
            //如果不存在loading标签则添加
            if($("#loading").length == 0)
            {
                $("body").append('<div id="loading"></div>');
            }

            param.times = param.times * 1000;
            

            //显示loading
            switch(param.tips)
            {
                case "gtloading":
                    _html = '<div class="black_bg"></div><div class="ltxt">数据加载中</div>';
                    $("#loading").html(_html).removeClass().addClass(param.tips).show();
                    if(param.content != "")
                    {
                        $("#loading").find(".ltxt").html(param.content);
                    }
                break;
                case "floading":
                    _html = '<img src="./images/loading.gif"/>';
                    //显示loading
                    if(pageinfo.Dheight > pageinfo.screenH)
                    {
                        st = pageinfo.Dheight - pageinfo.screenH + 60;
                        $("body").animate({"scrollTop":st},100);
                    }
                    $("#loading").html(_html).removeClass().addClass(param.tips).show();
                break;
                case "fmloading":
                    _html = '<div class="black_bg"></div>';
                    _html = _html + '<div class="lmain">';
                    _html = _html + '<div class="ltxt">';
                    _html = _html + '<strong></strong>';
                    _html = _html + '<p></p>';
                    _html = _html + '</div>';
                    _html = _html + '<div class="lbtn">';
                    _html = _html + '<a href="javascript:;" class="cancal">取消</a>';
                    _html = _html + '<a href="javascript:;" class="ok">确定</a>';
                    _html = _html + '</div>';
                    _html = _html + '</div>';
                    $("#loading").html(_html).removeClass().addClass(param.tips).show();
                    $("#loading").find(".ltxt").find("strong").html(param.title);
                    $("#loading").find(".ltxt").find("p").html(param.content);
                break;
            }
            
        }
        init();
        
        
        //如果param.type == ""，则不响应提示请求
        if(param.type == "" && param.tips == "fmloading"){
            //注册按钮事件
            $(document).on("click",".fmloading .cancal",function(){
                 $("#loading").hide();
            });

            $(document).on("click",".fmloading .ok",function(){
                foption();
            });
        }
        else if(param.type == "")
        {
            var _html = "";
            var _st   = 0;

            foption();
            
            setTimeoutFun();
        }
        else if(param.type == "get" || param.type == "post")
        {
            //修改参数值
            param.times = 1000;

            //如果是get post提交
            $.ajax({
                url       : param.url,
                type      : param.type,
                dataType  : param.dataType,
                data      : param.param,
                success   : function(data){
                    //执行方法
                    eval(param.success);
                    setTimeoutFun();
                },
                error:function(data)
                {
                    
                }
            });
        }
    };


    //选择按钮切换js
    $(document).on("click",".checkbox_btn",function(){
        if($(this).hasClass("selected"))
        {
            $(this).removeClass("selected");
            $(this).find("input[type='checkbox']").attr("checked",false);
        }
        else
        {
            $(this).addClass("selected");
            $(this).find("input[type='checkbox']").attr("checked",true);
        }
    });

    //获取验证码
     function send_message(){

        $(".mbr_reg").find(".item-mobile .getvcode a").removeClass("act").addClass("waitting").html("重新发送(<span>60</span>S)");
        var fz = 6;
        var time = window.setInterval(function(){
            fz--;
            if(fz == -1) 
            {
                window.clearInterval(time);
                $(".mbr_reg").find(".item-mobile .getvcode a").html("获取手机验证码");
                $(".mbr_reg").find(".item-mobile .getvcode a").removeClass("waitting").addClass("act");
            }
            $(".mbr_reg").find(".item-mobile .getvcode a").find("span").html(fz);
        },1000);
    }

    $(".mbr_reg").find(".item-mobile input[type='text']").change(function(){
        if($(this).val() != "")
        {
            //如果已经发送已经发送验证码则退出
            if($(".mbr_reg").find(".item-mobile .getvcode a").hasClass("waitting"))
            {
                 return false;
            }

            $(".mbr_reg").find(".item-mobile .getvcode a").addClass("act");
        }
        else
        {
            $(".mbr_reg").find(".item-mobile .getvcode a").removeClass("act");
        }
    });

    $(".mbr_reg").find(".item-mobile .getvcode a").click(function(e){
        e.preventDefault();
        var mobile = $(".mbr_reg").find(".item-mobile input[type='text']").val();
        if(!/^(1[3-9])\d{9}$/i.test(mobile))
        {
            $(document).tipsClass({
                tips       : "gtloading",  
                content    : "请输入正确的手机号码！"     
            });
            return false;
        }
        if($(this).hasClass("act"))
        {
            var url = $(this).attr("hreft");
            $(document).tipsClass({
                tips       : "fmloading",  
                title      : "提示",
                content    : "确定发送验证码到"+mobile+"",         
                callback   : "send_message()"
            });
        }
    });

});