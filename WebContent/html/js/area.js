$(function(){
	$.fn.areaClass = function(opt) {
        var param = {
            selected : null
        };

        var _this = $(this);
        $.extend(param, opt);

        var pageinfo = {
            screenH    : $(window).height(),
            screenW    : $(window).width(),
            slw        : $(window).width() * 7/10,
            slh        : $(window).height()
        };

        alert("sdfsfs");

        var province = new Array();
        var selectedArea = new Array();

        province = [{id:2,city:"北京市"},{id:19,city:"天津市"},{id:36,city:"河北省"},{id:230,city:"山西省"},{id:372,city:"内蒙古自治区"},{id:496,city:"辽宁省"},{id:625,city:"吉林省"},{id:703,city:"黑龙江省"},{id:857,city:"上海市"},{id:875,city:"江苏省"},{id:1001,city:"浙江省"},{id:1114,city:"安徽省"},{id:1252,city:"福建省"},{id:1356,city:"江西省"},{id:1479,city:"山东省"},{id:1651,city:"河南省"},{id:1845,city:"湖北省"},{id:1975,city:"湖南省"},{id:2125,city:"广东省"},{id:2285,city:"广西壮族自治区"},{id:2425,city:"海南省"},{id:2459,city:"重庆市"},{id:2498,city:"四川省"},{id:2721,city:"贵州省"},{id:2824,city:"云南省"},{id:2978,city:"西藏自治区"},{id:3063,city:"陕西省"},{id:3191,city:"甘肃省"},{id:3304,city:"青海省"},{id:3358,city:"宁夏回族自治区"},{id:3391,city:"新疆维吾尔自治区"},{id:3512,city:"台湾省"},{id:3891,city:"香港特别行政区"},{id:3913,city:"澳门特别行政区"}];
        selectedArea = ["","",""];

        //保存就json数据，已经当前响应级别
        var area = "";
        var level = 0;

        //加载数据
        function loading(data,selected)
        {
            $.each(data,function(i){
                selected.append('<li><a href="javascript:;" data-city="'+data[i].city+'" data-id="'+data[i].id+'">'+data[i].city+'<span class="icon_back"  style="-webkit-transform: rotate(180deg);"></span></a></li>');
            });
        }

        //获取数据
        function getdata(pid = 0,cityIndex = 0)
        {
            if(pid != 0 && cityIndex == 0){
                _this.find(".item").eq(1).find("ul").html("");
                $.ajax({
                    type     : "get",
                    url      : "/home/index/area",
                    dataType : "json", 
                    data     : {"pid":pid},
                    success  : function(result)
                    {
                        var n = parseInt(result.sub);
                        area = result.data;
                        loading(area,_this.find(".slbox .item:eq(1) ul"));
                    }
                });
            }
            else if(pid == 0 && cityIndex != 0){
                _this.find(".item").eq(2).find("ul").html("");
                if(typeof(area[cityIndex].districtlist) != undefined)
                {
                    loading(area[cityIndex].districtlist,_this.find(".slbox .item:eq(2) ul"));
                }
            }
        }

        //移动
        function jump(n)
        {
            _this.find(".slbox").css({"-webkit-transition":"all 0.4s ease-out 0","-webkit-transform": "translateX("+(n*pageinfo.slw*-1)+"px)"})
        }

        function quit()
        {
            jump(0);
            _this.hide();
        }

        function setData()
        {
            param.selected.find("span").html("");
            for(item in selectedArea)
            {
                if(selectedArea[item] != "") param.selected.find("span").append('<i>'+selectedArea[item]+'</i>');
            }
        }
        

        function init()
        {
            var _html;
            _html = '<div class="slmain">';
            _html = _html + '<div class="sltitle"><a href="#" class="icon_back"></a>所在区域</div>';
            _html = _html + '<div class="slbox">';
            _html = _html + '<div class="item"><ul></ul></div><div class="item"><ul></ul></div><div class="item"><ul></ul></div>';
            _html = _html + '</div>';
            _html = _html + '</div>';
            _html = _html + '<div class="black_bg"></div>';
            
            _this.html(_html);

            
            _this.find(".slbox").css("width",pageinfo.slw*3);
            _this.find(".slbox .item").css({"width":pageinfo.slw,"height":pageinfo.slh-34});

            loading(province,_this.find(".item").eq(0).find("ul"));

            //获取第一省份的所有城市和区域信息
            var provinceID = _this.find(".slbox .item").eq(0).find("a").eq(0).attr("data-id");
            //getdata(provinceID);
        }
        init();

        $(document).on("click",".selectlistbox .item a",function(){
            switch($(this).parents(".item").index())
            {
                case 0:
                    //点击省份
                    var provinceID = $(this).attr("data-id");
                    selectedArea[0] = $(this).attr("data-city");
                    selectedArea[1] = "";
                    selectedArea[2] = "";
                    //异步获取省份的所有信息
                    getdata(provinceID);
                    jump(1);
                    level = 1;
                break;
                case 1:
                    //点击城市
                    var provinceID = $(this).attr("data-id");
                    selectedArea[1] = $(this).attr("data-city");
                    selectedArea[2] = "";
                    //载入对应区县
                    getdata(0,$(this).parent("li").index());
                    //如果存在区县，则显示；不存在
                    if(_this.find(".item").eq(2).find("li").length != 0) jump(2);
                    else
                    {
                        //关闭的列表框并获取所选择的区域
                        setData();
                        quit();
                    }
                    level = 2;
                break;
                case 2:
                    //关闭的列表框并获取所选择的区域
                    selectedArea[2] = $(this).attr("data-city");
                    //关闭的列表框并获取所选择的区域
                    setData();
                    quit();
                    level = 3;
                break;
            }
        });  

        $(document).on("click",".selectlistbox .sltitle a",function(){
            switch(level)
            {
                case 0:
                   quit();
                break;
                case 1:
                   jump(0);
                   level = 0;
                break;
                case 2:
                   jump(1);
                   level = 1;
                break;
            }
        });

        param.selected.click(function(){
            _this.show();
        });

    };
    
    $("#selectlistbox").areaClass({selected:$(".address_edit .area")});

    $(".address_edit .area").click(function(){
           $("#selectlistbox").areaClass({selected:$(".address_edit .area")});
    });
});

