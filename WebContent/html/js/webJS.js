var webjs = null,
    screenW = $(window).width(),
    screenh = $(window).height(),
    userAgent = window.navigator.userAgent.toLowerCase(),
    footh = 373;

var case_data = new Array();
case_data = {
   "my":{
       "title":"母婴",
       "bbz":{
          "title":"惠阳淡水宝贝仔",
          "pic":"1 (4).png",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "aebb":{
          "title":"肇庆市爱儿宝贝母婴用品店",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "cs":{
       "title":"商超",
       "hpx":{
          "title":"河源和平和乡农土特产店",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "djsf":{
          "title":"河源市东江首府生活超市",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "kbgw":{
          "title":"康标购物广场",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "dlf":{
          "title":"廉江市多乐福超市",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "wq":{
          "title":"伟乾百货",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "xntr":{
          "title":"兴宁泰然超市",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "hf":{
          "title":"长宁惠丰百货商店",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       }
   },
   "hotel":{
       "title":"酒店",
       "lmjd":{
          "title":"潮漫酒店广州北站太子步行街店",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "hqbg":{
          "title":"广州华侨宾馆",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "dsdjd":{
          "title":"金莎大酒店",
          "pic":"1 (1).jpg",
          "ewm":"1 (3).jpg",
          "img":["1 (1).png","1 (2).jpg","1 (2).png"],
          "recommended":0
       },
       "jsjdgy":{
          "title":"京仕酒店公寓",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).jpg"],
          "recommended":1
       },
       "mlsw":{
          "title":"名利商务宾馆",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (4).jpg","1 (3).jpg"],
          "recommended":0
       },
       "szsw":{
          "title":"吴川市圣子商务酒店",
          "pic":"1 (1).jpg",
          "ewm":"1 (4).png",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "flhjd":{
          "title":"湛江市富丽华大酒店",
          "pic":"1 (5).jpg",
          "ewm":"1 (4).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       }
   },
   "xc":{
       "title":"西餐",
       "hctfgxct":{
          "title":"广州火车头法国西餐厅",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       }
   },
   "yl":{
       "title":"娱乐",
       "miss":{
          "title":"miss cafe",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "WinParty":{
          "title":"WinParty量贩KTV",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "KTV":{
          "title":"城际KTV富士酒店新汇丰",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "lxsr":{
          "title":"从化乐享私人影咖",
          "pic":"1 (4).png",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "dhktv":{
          "title":"广州敦皇KTV",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "ydtj":{
          "title":"云顶天境",
          "pic":"1 (4).png",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "zc":{
       "title":"中餐",
       "db":{
          "title":"东滨酒家",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
       /*"dc":{
          "title":"邓厨",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },*/
       "hx":{
          "title":"肥区河鲜鹅庄",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "hy":{
          "title":"好友酒楼",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "jc":{
          "title":"迎客居川菜馆",
          "pic":"1 (4).jpg",
          "ewm":"",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "mj":{
          "title":"毛家湾饭店钟落潭店",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
       "tf":{
          "title":"同福家宴酒楼",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "yp":{
          "title":"一品轩",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
       "zg":{
          "title":"大岗仙庙烧鸡",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"]
       }
   },
   "zx":{
       "title":"装修",
       "ry":{
          "title":"如意蓝海门业店",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "xl":{
          "title":"星艺装饰",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
       "xy":{
          "title":"兴隆建材",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       }
   },
   "ms":{
       "title":"美食",
       "ddze":{
          "title":"大地醉鹅",
          "pic":"1 (1).jpg",
          "ewm":"1 (3).jpg",
          "img":["1 (1).png","1 (2).png","1 (2).jpg"],
          "recommended":1
       },
       "hwdcx":{
          "title":"好味道川湘餐厅",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "hly":{
          "title":"惠来椰香四季",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "wdjj":{
          "title":"万大酒家",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "sw":{
          "title":"味尚煌韩式自助餐厅",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "zsjl":{
          "title":"中山酒楼",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "ykc":{
          "title":"中山市小榄镇迎客居川菜馆",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "car":{
       "title":"汽车",
       "dbxj":{
          "title":"大兵小将",
          "pic":"1 (1).jpg",
          "ewm":"1 (4).png",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "jbqc":{
          "title":"骏邦汽车维修服务中心",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "cylf":{
          "title":"汕头春源陆风汽车",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "tee":{
       "title":"茶行",
       "hycy":{
          "title":"鸿源茶叶",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "drh":{
          "title":"云浮市大仁红营茶",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       }
   },
   "fs":{
       "title":"服饰",
       "lzy1":{
          "title":"惠州市惠城区乖淘气服装店",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "hg":{
       "title":"火锅",
       "ccx":{
          "title":"串串香广州海珠区直营店",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "dchg":{
          "title":"东蜀火锅店",
          "pic":"1 (5).jpg",
          "ewm":"1 (4).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
       "xtx":{
          "title":"广东香天下火锅新港中路店",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "mzlhg":{
          "title":"莽子老火锅",
          "pic":"1 (4).png",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "zzt":{
          "title":"深圳市罗湖区正之泰餐厅",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "ygsmlt":{
          "title":"一锅蜀麻辣烫",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       }
   },
   "jf":{
       "title":"家纺",
       "lrwj":{
          "title":"蓝日纺织品",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "lmsc":{
          "title":"娈梦丝绸家纺服饰",
          "pic":"1 (5).jpg",
          "ewm":"1 (4).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "xffq":{
          "title":"兴峰峰祺纺织有限公司",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       }
   },
   "jy":{
       "title":"教育",
       "ad":{
          "title":"安东驾校",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "gc":{
          "title":"桂城三山新填地幼儿园",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "dd":{
          "title":"惠州达德教育",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       },
       "lh":{
          "title":"绿湖中英文幼儿园",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
       "yf":{
          "title":"云浮第二小学",
          "pic":"1 (1).jpg",
          "ewm":"1 (4).jpg",
          "img":["1 (1).png","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
       "ql2":{
          "title":"启灵教育",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "sjsm":{
       "title":"手机数码",
       "jfdz":{
          "title":"河源市佳富电子科技有限公司",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":0
       }
   },
   "msfw":{
        "title":"民生服务",
        "cd":{
          "title":"诚达家电",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
        "hz":{
          "title":"广州穗泽冷链",
          "pic":"1 (4).jpg",
          "ewm":"1 (3).jpg",
          "img":["1 (1).jpg","1 (1).png","1 (2).jpg"],
          "recommended":0
       },
        "ht":{
          "title":"恒泰神州租车",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
        "ljl":{
          "title":"零距离摄影馆",
          "pic":"1 (1).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       },
        "mc":{
          "title":"美潮发艺",
          "pic":"1 (3).jpg",
          "ewm":"1 (2).jpg",
          "img":["1 (1).png","1 (2).png","1 (1).jpg"],
          "recommended":1
       },
        "sj":{
          "title":"深记汽车培训连锁店",
          "pic":"1 (5).jpg",
          "ewm":"1 (4).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
        "xx":{
          "title":"新兴洗车",
          "pic":"1 (2).jpg",
          "ewm":"1 (1).jpg",
          "img":["1 (1).png","1 (2).png","1 (3).png"],
          "recommended":1
       }
   },
   "wcj":{
      "title":"微场景",
      "bb":{
          "title":"吧黎春天",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
      "blqc":{
          "title":"如意蓝海门业店",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
      "ky":{
          "title":"汕头酷游假期",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":0
       },
      "qy":{
          "title":"新西兰宝贝",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       },
      "yp":{
          "title":"一品牛排",
          "pic":"1 (4).jpg",
          "ewm":"1 (5).jpg",
          "img":["1 (1).jpg","1 (2).jpg","1 (3).jpg"],
          "recommended":1
       }
   }
};

$(function(){
   webjs = {
      "public" :  function()
      {
          var __this = this;
          $(window).load(function(){
              var imgW = $(".myad").find("img").width();
              var ml = -1 * (imgW - screenW)/2;
              $(".myad").not(".noexe").find("img").css({"margin-left":ml});
          });

          $(window).scroll(function(){
              __this.rightIcon();
          });

          $(window).load(function(){
              __this.rightIcon();
          });

          $(".rightIcon").on("click",".ri1",function(){
               $("html,body").animate({"scrollTop":0},500);
          }).on("click",".ri2",function(){
      
          }).on("click",".ri3",function(){
  
          }).on("click",".ri4",function(){
      
          });

          $("#focus_df").hover(function(){
              $(this).parent().find("img.ewm").show();
          },function(){
              $(this).parent().find("img.ewm").hide();
          });


          $(".copyright").find(".gt_tck").click(function(){
              var _html = "",url = $(this).attr("data-url"),zoom = $(this).attr("data-zoom").split(",");
              var _t = (screenh - zoom[1])/2;
              var _l = (screenW - zoom[0])/2;
              _html = _html + '<div class="gt_window">';
              _html = _html + '<div class="gt_bg"></div>';
              _html = _html + '<div class="gt_cont" style="top:'+_t+'px;left:'+_l+'px;">';
              _html = _html + '<img src="'+url+'">';
              _html = _html + '<a href="javascript:;" class="gt_close"><img src="http://maint.duofriend.com/upload/image/websiteUpload/close.png"/></a>';
              _html = _html + '</div>';
              _html = _html + '</div>';
              $("body").append(_html);
          });

          $("body").on("click",".gt_close",function(){
              $(".gt_window").remove(); 
          })


          this.tab();
          this.organbox();
          this.userAgent();
      },
      "index" : function(){

          var brand_list = [{"img":imgStaUrl + "/brand/brand0_13.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_15.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_17.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_19.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_21.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_35.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_37.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_39.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_41.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_43.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_57.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand0_59.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_13.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_15.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_17.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_19.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_21.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_35.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_37.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_39.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_41.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_43.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_57.jpg","src":""},
                            {"img":imgStaUrl + "/brand/brand1_59.jpg","src":""}];

          var animate_ad_top = $(document).height();
          function animate_ad()
          {
               var i = new Array(),
                   r = new Array(),
                   h = 1;
               i[0] = 0; //100
               i[1] = 0; //150
               i[2] = 0; //168
               r[0] = 0;
               r[1] = 0;
               r[2] = 0;
                
               $(".animate_ad").addClass('done');
               var time = window.setInterval(function(){
                   if(i[0] <= 100)
                   {
                       if(r[0] > 1000)
                       {
                           var n = String(r[0]).substr(String(r[0]).length - 3);
                           var m = parseInt(r[0] / 1000);
                           s = m +","+ n;
                       }
                       else
                       {
                          s = r[0];
                       }
                       $(".animate_ad").find(".t100").html(s + "<span>&nbsp;</span>");
                       r[0]+=1000;
                   }
                   else if(i[0] == 110)
                   {
                       $(".animate_ad").find(".t100 span").html("+");  
                   }

                   if(i[1] <= 150)
                   {
                       s = r[1] + "%";
                       $(".animate_ad").find(".t150").html(s); 
                       r[1]+=1;
                   }

                   if(i[2] < 168)
                   {
                       var h = Math.ceil(i[2] / 24);
                       var m = Math.abs(i[2] - h * 24);
                       $(".animate_ad").find(".t724").find("span").eq(0).html(h); 
                       $(".animate_ad").find(".t724").find("span").eq(1).html(m); 
                   }
                   else
                   {
                      $(".animate_ad").find(".t724").find("span").eq(0).html("7"); 
                      $(".animate_ad").find(".t724").find("span").eq(1).html("24"); 
                      window.clearInterval(time);

                   }
                   i[0]++;
                   i[1]++;
                   i[2]++;
               },10);
               
          }
          $("#banner").slideLx({"height":470,"inter": 4000});
          $("#tg_content").slideLi({"width":306,"arrow":true,"nav":true,"navStyle":1,"autoplay":false,"showItem":3,"speek":300});
          $("#notice_msg").slideLi({"display":"vmsg","height":36,"speek":300,"inter":5000});
          
          $("#tg_content").find("li").hover(function(){
              var len = $(this).find(".tgc_item .tgc_abtn").find("a").length;
              $(this).find(".tgc_item .tgc_abtn").stop().animate({"height": (Math.ceil(len/2) * 48)},300); 
          },function(){
              $(this).find(".tgc_item .tgc_abtn").stop().animate({"height": 96},300);
          });

          $(window).load(function(){
              //2549    3449
              //animate_ad_top = $(".animate_ad").offset().top;
              //if($(document).scrollTop() + $(window).height()> animate_ad_top)  animate_ad();
          });
          
          if($(document).scrollTop() > 2549 && $(document).scrollTop() < 3449 )  animate_ad();
          $(window).scroll(function(){
              //if($(document).scrollTop() + $(window).height() - 100 > animate_ad_top && !$(".animate_ad").hasClass('done'))  animate_ad();
              if(($(document).scrollTop() > 2549 && $(document).scrollTop() < 3449) && !$(".animate_ad").hasClass('done'))  animate_ad();
          });


          $(".weixin_solution").find(".myad_t").find("a").click(function(){
              var i = $(this).index();
              $(this).addClass('selected').siblings().removeClass('selected');
              $(".weixin_solution").find(".div_li").eq(i).fadeIn(300).siblings().fadeOut(300);
          });

          //msie 9.0
          if(/msie 7.0/ig.test(userAgent) || /msie 8.0/ig.test(userAgent) || /msie 9.0/ig.test(userAgent) || /safari\/601/ig.test(userAgent))
          {
               $("#hzbanner").find(".brandlist").html('<ul class="clearfix"><li class="clearfix"></li><li class="clearfix"></li></ul>');
               for(var i=0;i<12;i++)
               {
                    $("#hzbanner").find(".brandlist ul").find("li").eq(0).append('<div class="brand_item"><a href="javascript:;"><img src="'+brand_list[i].img+'"/></a></div>');
               }
               for(var i=12;i<24;i++)
               {
                    $("#hzbanner").find(".brandlist ul").find("li").eq(1).append('<div class="brand_item"><a href="javascript:;"><img lazy_src="'+brand_list[i].img+'"/></a></div>');
               }
               $("#hzbanner").slideLi({"width":580,"nav":true});
          }
          else
          {
               var i = 0;
               var timer = null;
               function play()
               {
                    var start = i * 12,
                        end = (i + 1) * 12,
                        a = 0;
                    var time = window.setInterval(function(){
                        var arr = new Array();
                        switch(a)
                        {
                            case 0:
                                arr[0] = 0;
                            break;
                            case 1:
                               arr[0] = 1;arr[1] = 4;
                            break;
                            case 2:
                               arr[0] = 2;arr[1] = 5;arr[2] = 8;
                            break;
                            case 3:
                               arr[0] = 3;arr[1] = 6;arr[2] = 7;arr[3] = 9;arr[4] = 10;arr[5] = 11;
                            break;
                        }
                        for(var n=0;n<arr.length;n++) $("#hzbanner").find(".brandlist").find(".brand_item").eq(arr[n]).css({'transform':'rotateY(-90deg)'}); //perspective(130px) 
                        setTimeout(function(){
                            for(var n=0;n<arr.length;n++){
                               $("#hzbanner").find(".brand_item").eq(arr[n]).find("img").attr("src",brand_list[start+arr[n]].img).css("transform",'rotateY(180deg)'); 
                               $("#hzbanner").find(".brand_item").eq(arr[n]).css({'transform':'rotateY(-180deg)'});
                            }
                        },a*50+200);
                        if(a == 3) window.clearInterval(time);
                        a++;
                    },50);
               }

               function autoPlay()
               {
                   timer = window.setInterval(function(){
                       if(i==0) i=1;
                       else i=0;
                       $("#hzbanner").find(".fsnav").find("span").eq(i).addClass('current').siblings().removeClass('current');
                       play();
                   },10000);
               }

               $("#hzbanner").find(".brandlist").html('<ul class="clearfix"><li class="clearfix"></li></ul>');
               $("#hzbanner").find(".brandlist").append('<div class="fsnav"><span class="current"></span><span></span></div>');
               for(var n=0;n<12;n++)
               {
                    $("#hzbanner").find(".brandlist ul").find("li").append('<div class="brand_item"><a href="javascript:;"><img src="'+brand_list[n].img+'"/></a></div>');
               }
               $("#hzbanner").find(".fsnav").find("span").click(function(){
                    if(i == $(this).index()) return false;
                    i = $(this).index();
                    $(this).addClass('current').siblings().removeClass('current');
                    play();
               });

               $("#hzbanner").hover(function() {
                   window.clearInterval(timer);
               }, function() {
                   autoPlay();
               });
               autoPlay();
          }
          
        
          var n1 = 0,n2 = 0,n3 = 0,n4 = 0;
       /*   $.each(case_data,function(i){

               $.each(case_data[i],function(j){
                   if(j!="title")
                   {
                        if(case_data[i][j].recommended == 1 && n1 < 8){
                            $("#case1").append('<li><a href="javascript:;"><em><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].pic+'"/></em>'+case_data[i][j].title.substring(0,8)+'</a><div class="ewm"><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].ewm+'"></div></li>');
                            n1++;
                        }
                   }
               });

               if(i == "zc" || i == "xc" || i == "hg")
               {
                   $.each(case_data[i],function(j){
                       if(j!="title")
                       {
                            if(case_data[i][j].recommended == 1 && n2 < 6){
                                $("#case2").append('<li><a href="javascript:;"><em><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].pic+'"/></em>'+case_data[i][j].title.substring(0,8)+'</a><div class="ewm"><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].ewm+'"></div></li>');
                                n2++;
                            }
                       }
                   });
               }
           

           
               if(i == "hotel" || i == "yl" || i == "wcj")
               {
                   $.each(case_data[i],function(j){
                       if(j!="title")
                       {
                            if(case_data[i][j].recommended == 1 && n3 < 6){
                                $("#case3").append('<li><a href="javascript:;"><em><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].pic+'"/></em>'+case_data[i][j].title.substring(0,8)+'</a><div class="ewm"><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].ewm+'"></div></li>');
                                n3++;
                            }
                       }
                   });
               }
        
               if(i == "zx" || i == "car" || i == "msfw")
               {
                   $.each(case_data[i],function(j){
                       if(j!="title")
                       {
                            if(case_data[i][j].recommended == 1 && n4 < 6){
                                $("#case4").append('<li><a href="javascript:;"><em><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].pic+'"/></em>'+case_data[i][j].title.substring(0,8)+'</a><div class="ewm"><img src="/html/images/case/'+i+'/'+j+'/'+case_data[i][j].ewm+'"></div></li>');
                                n4++;
                            }
                       }
                   });
               }
               



          });*/

      },
      "rightIcon" : function(){

          if($(document).scrollTop() < 300)
          {
              $(".rightIcon").find(".ri1").hide();
          }
          else
          {
              $(".rightIcon").find(".ri1").show();
          }
          
          
          if($(document).scrollTop() > $(document).height() - footh - screenh)
          {
               $(".rightIcon").css("bottom",($(document).scrollTop()+screenh-$(".footer").offset().top+10));
          }
          
      },
      "organbox" : function(){
           var selectid = 0;
           var _this = null;
           var _move = false;
           var _time = Date.now();
           var _leaveTagNameorganbox = false;
           
           //在首页执行的效果
           if($(".index2017").length == 1){
	           $(".index2017 .header").hover(function(){
	               var _this = $(this);
	               _this.find(".bg").css("top",0);
	           },function(){
	               var _this = $(this);
	               //如果有下来显示
        		   setTimeout(function(){
        			   if(_leaveTagNameorganbox){
        				   $(".index2017 .header").find(".subbox").stop().slideUp(200);
        				   _this.find(".bg").css("top",-65);
        			   }
        		   },200);
	           });
	           
	           $(".index2017 .organbox>li").mouseenter(function(){
	        	   if(Date.now() - _time < 100) return false;
	        	   _time = Date.now();
	        	   var _this = $(this);
	        	   $(this).addClass('selected').siblings().removeClass('selected');
	        	   $(".index2017 .header").find(".bg").css("top",0);
	        	   _leaveTagNameorganbox = false;
	               setTimeout(function(){
	            	   _this.find(".subbox").stop().slideDown(200).parent().siblings().find(".subbox").stop().slideUp(200);
	               },200);
	           });
	           
               $(".index2017 .organbox>li").mouseleave(function(){ 
            	   var _this = $(this);
            	   _leaveTagNameorganbox = true;
	               $(this).removeClass('selected');
	               _this.find(".subbox").stop().slideUp(200);
	           });

           }else{
	           $(".organbox>li").mouseenter(function(){
	               var _this = $(this);
	               selectid = $(this).parents(".organbox").find(".selected").index();
	               $(this).addClass('selected').siblings().removeClass('selected');
                   _this.parents(".organbox").find(".subbox").hide();
                   _this.find(".subbox").stop().slideDown(200);
                   _leaveTagNameorganbox = false;
	           })
	
	           $(".organbox>li").mouseleave(function(){
	               var _this = $(this);
	               $(this).removeClass('selected');
	               _this.find(".subbox").stop().slideUp(200);
	           });
           }

           
           
           
      },
      "userAgent" : function()
      {
          if(/iphone/ig.test(userAgent) || /android/ig.test(userAgent) || /ipad/ig.test(userAgent) || /micromessenger/ig.test(userAgent) || /Mobile/ig.test(userAgent))
          {
               $(".wrap").css("overflow","inherit");
               $(".sitenav,.header,.footer,#banner,.myad,.notice").addClass('wrap1200');
          }
      },
      "tab" : function()
      {
           $(".tabbox").on("click",".bh li",function(){
                var i = $(this).index();
                $(this).addClass('selected').siblings().removeClass('selected');
                $(this).parents(".tabbox").find(".bd").find(".cont").eq(i).addClass('selected').siblings().removeClass('selected');
           });
      },
      "weshop" : function()
      {
           if($("#duofeneshopsolution").length == 1)
           {
                if(/msie 7.0/ig.test(userAgent) || /msie 8.0/ig.test(userAgent) || /msie 9.0/ig.test(userAgent))
                {
                      var arr = new Array();
                      var left_arr = new Array();
                      arr = [1,3,2,4];
                      left_arr = [119,318,540,778]
                      var i = 0
                      function AnimateFun(){
                          setTimeout(function(){
                              $("#duofeneshopsolution").find(".s"+arr[i]).css("left",left_arr[i]).fadeIn(500);
                          },500);
                          setTimeout(function(){
                              $("#duofeneshopsolution").find(".item"+arr[i]).fadeIn(500);
                              if(i<=4)
                              {
                                  i++;
                                  AnimateFun();
                              }
                          },1000); 
                      }
                      AnimateFun();
                }
                else
                {
                    $(window).scroll(function(){
                        if($(document).scrollTop() > 600 && $(document).scrollTop() < 1400)
                        {
                            $("#duofeneshopsolution").find(".sline").addClass('start');
                            //document.getElementById("duofeneshopsolution").getElementsByClassName("sline").item(0).addEventListener("webkitAnimationEnd",function()
                            //{
                                var arr = new Array();
                                arr = [1,3,2,4];
                                var i = 0
                                function AnimateFun(){
                                    setTimeout(function(){
                                        $("#duofeneshopsolution").find(".s"+arr[i]).addClass('start');
                                    },500);
                                    setTimeout(function(){
                                        $("#duofeneshopsolution").find(".item"+arr[i]).fadeIn(500);
                                        if(i<=4)
                                        {
                                            i++;
                                            AnimateFun();
                                        }
                                    },1000); 
                                }
                                AnimateFun();
                            //},false);
                        }
                    });
                }
           }
      },
      "newcase" : function(){

           function imgqh()
           {
                $(".imgshow").on("click","img",function(){
                     var rel = $(this).attr("data-img");
                     switch(rel)
                     {
                         case "i2":
                             $(".imgshow").find(".img1").addClass('img31').removeClass('img1').attr("data-img","i31");
                             $(".imgshow").find(".img3").addClass('img21').removeClass('img3').attr("data-img","i21");
                             $(".imgshow").find(".img2").addClass('img11').removeClass('img2').attr("data-img","i11");
                         break;
                         case "i3":
                             $(".imgshow").find(".img1").addClass('img21').removeClass('img1').attr("data-img","i21");
                             $(".imgshow").find(".img3").addClass('img11').removeClass('img3').attr("data-img","i11");
                             $(".imgshow").find(".img2").addClass('img31').removeClass('img2').attr("data-img","i21");
                         break;
                         case "i21":
                             $(".imgshow").find(".img11").addClass('img3').removeClass('img11').attr("data-img","i3");
                             $(".imgshow").find(".img31").addClass('img2').removeClass('img31').attr("data-img","i2");
                             $(".imgshow").find(".img21").addClass('img1').removeClass('img21').attr("data-img","i1");
                         break;
                         case "i31":
                             $(".imgshow").find(".img11").addClass('img2').removeClass('img11').attr("data-img","i2");
                             $(".imgshow").find(".img31").addClass('img1').removeClass('img31').attr("data-img","i1");
                             $(".imgshow").find(".img21").addClass('img3').removeClass('img21').attr("data-img","i2");
                         break;
                     }
                });
           }

           var case_center_content_arr = {
        		   customer_box:'客户案例介绍', 
        		   wechat_box:'微信营销', 
        		   fan_box:'粉巢系统', 
        		   erp_box:'云ERP', 
        		   business_box:'商家联盟', 
        		   routine_box:'微信小程序', 
        		   mall_box:'优惠券商城', 
        		   operate_box:'代运营', 
        		   hardware_box:'多粉硬件'
           };
           function add_img(_obj)
           {
               /*$(".imgshow").html("");
               $(".imgshow").append('<img src="'+_obj.rotateimg1+'" data-img="i1" class="img1 current"/>');
               $(".imgshow").append('<img src="'+_obj.rotateimg2+'" data-img="i2" class="img2"/>');
               $(".imgshow").append('<img src="'+_obj.rotateimg3+'" data-img="i3" class="img3"/>');
               if(_obj.qrcode != "") $(".ewm").html('<img src="'+_obj.qrcode+'"/>');
               $(".imgshow").find("img").eq(0).addClass('current');
               imgqh();*/
        	
        	   //在这里读取json数据，右边显示内容
        	   //在这里读取json数据，右边显示内容
        	   //在这里读取json数据，右边显示内容
        	   
        	   /*-- content --*/
        	   $('#case_slide > div.sb_cont > div.fun-wrap > div').hide();
        	   $('.bottom_button').show();
               var _content = _obj.buspro;
               /*console.log(_obj);*/
               for(var i=0;i<_content.length;i++){
            	   var _a = _content[i];
            	   var _flag = JONVALUE(_a.proname, case_center_content_arr);
            	   if(_flag != '6'){
            		   $('#'+_flag+' p').html(_a.description);
            		   $('#'+_flag).show();
            		   
            		   /*console.log(_flag);*/
            		   
            		   if('customer_box' == _flag){
            			   $('#'+_flag).find('img').attr('src', _a.pics);
            		   }else if('wechat_box' == _flag){
            			   var _w = $('#wechat_img').find('img');
            			   var _pics = _a.pics.split('(#)');
            			   for(var j=0;j<_w.length;j++){
            				   $(_w[j]).attr('src', _pics[j] == null ? '' : _pics[j]);
            			   }
            		   }else if('fan_box' == _flag){
            			   $('#'+_flag).find('div.fan_1 > img').attr('src', _a.pics);
            		   }else if('erp_box' == _flag){
            			   $('#'+_flag).find('img').attr('src', _a.pics);
            		   }else if('business_box' == _flag){
            			   var _w = $('#business_img').find('img');
            			   var _pics = _a.pics.split('(#)');
            			   var bb = 0;
            			   for(var j=0;j<_w.length;j++){
            				   if(j % 2 == 0){
            					   $(_w[j]).attr('src', _pics[bb] == null ? '' : _pics[bb]);
            					   bb++;
            				   }
            			   }
            		   }else if('routine_box' == _flag){
            			   var _w = $('#routine_img').find('img');
            			   var _pics = _a.pics.split('(#)');
            			   for(var j=0;j<_w.length;j++){
            				   $(_w[j]).attr('src', _pics[j] == null ? '' : _pics[j]);
            			   }
            		   }else if('mall_box' == _flag){
            			   var _w = $('#mall_img').find('img');
            			   var _pics = _a.pics.split('(#)');
            			   for(var j=0;j<_w.length;j++){
            				   $(_w[j]).attr('src', _pics[j] == null ? '' : _pics[j]);
            			   }
            		   }else if('operate_box' == _flag){
            			   $('#'+_flag).find('div.ipad_1 > img').attr('src', _a.pics);
            		   }else if('hardware_box' == _flag){
            			   $('#'+_flag).find('img').attr('src', _a.pics);
            		   }else if('' == _flag){
            			   
            		   }
            	   }
               }
               
               if(_obj.qrcode == ''){
            	   $('div.code_img').hide();
               }else{
            	   $('div.code_img > img').attr('src', _obj.qrcode);
               }
//               $('div.botton_img').attr('onclick', WSFUNCTION.videoFrame('https://v.qq.com/iframe/player.html?vid=k05033p8y20&auto=0&tiny=0&auto=0'));
               if(_obj.videourl == ''){
            	   $('div.botton_img').hide();
               }else{
            	   $('div.botton_img').attr('onclick', 'WSFUNCTION.videoFrame(\"'+_obj.videourl+'\")');
               }
               /*-- content --*/
               
           }
           
           function JONVALUE(target, json){
        	   for(var _j in json){
        		   if(json[_j] == target){
        			   return _j;
        			   break;
        		   }
        	   }
        	   return '6';
           }

           function add_case(_obj,b,that){
               var strId = "";
               var pic = "";
               $(".sb_nav_main").find("ul").html("");
               $.each(_obj,function(i){
                   pic = _obj[i].descimg;
                   $(".sb_nav_main").find("ul").append('<li><a href="javascript:;" class="canclick" title="'+_obj[i].casedesc+'" data-big="'+b+'" data-small="'+i+'"><img src="'+pic+'"></a></li>');
                   if(_obj[i].buspro != undefined){
                	   $(".sb_nav_main").find("ul").find("li").eq(i).append(storeFun(_obj[i].buspro,that));
                   }
               });
               $(".sb_nav_main").find("ul").find("li").eq(0).addClass('selected');
               $(".sb_nav_main").find("ul").find("li").find('dl').hide();
               $(".sb_nav_main").find("ul").find("li.selected").find('dl').show();
               add_img(_obj[0]);
           }
           
           function storeFun(fun,that){
        	   var _html = "<dl>";
        	   /*if(that == undefined){
        		   _html = _html + "<dt>该商家已开通以下功能</dt>";
        	   };*/
        	  
        	   if($(that).siblings('dl').find('dt').length == 0){
        		   _html = _html + "<dt>该商家已开通以下功能</dt>";
        	   }
        	   $.each(fun,function(i){
        		   _html = _html + '<dd><a href="#' + JONVALUE(fun[i].proname, case_center_content_arr) + '">' + fun[i].proname + '</a></dd>'; 
        	   });
        	   _html = _html + "</dl>";
        	   return _html;
           }

           function slideImg(){
               var cs_i = 0;
               var cs_num = $("#case_slide").find(".sb_nav_main li").length;
               var cs_len = cs_num - 5;
               
               $("#case_slide").find(".sb_nav_main ul").css("top",0);

               $("#case_slide").off("click",".sb_nav_main li");
               $("#case_slide").on("click",".sb_nav_main li",function(){
                    if(!$(this).hasClass('selected'))
                    {
                        $(this).addClass('selected').siblings().removeClass('selected');
                    }
               });
               var cs_ul = $("#case_slide").find(".sb_nav_main li");
               $(cs_ul).each(function(e,index){
             	  if(e <= 7){
             		  cs_ul.eq(e).addClass('show_img');
             	  }
             	  if(e > 7){
             		  cs_ul.eq(e).addClass('hide_img');
             	  }
                });


               if(cs_num > 6){
                   $("#case_slide").off("click",".arrow");
                   $("#case_slide").on("click",".arrow",function(){
                        if($(this).hasClass('tarrow')){
                        	if(!$("#case_slide").find(".sb_nav_main").find('li:first').hasClass('show_img')){
                        		$("#case_slide").find(".sb_nav_main").find(".show_img:first").prev().addClass('show_img').removeClass('hide_img');
                            	$("#case_slide").find(".sb_nav_main").find(".show_img:last").addClass('hide_img').removeClass('show_img');
                        	}
                             cs_i--;
                             if(cs_i < 0) cs_i = 0;  
                        }
                        if($(this).hasClass('barrow')){
                        	if(!$("#case_slide").find(".sb_nav_main").find('li:last').hasClass('show_img')){
                        		$("#case_slide").find(".sb_nav_main").find(".show_img:first").addClass('hide_img').removeClass('show_img');
                            	$("#case_slide").find(".sb_nav_main").find(".show_img:last").next().addClass('show_img').removeClass('hide_img');
                        	}
                             cs_i++;
                             if(cs_i == cs_len) cs_i = cs_len - 1;
                        }
                        /*$("#case_slide").find("ul").animate({"top":-1*cs_i*90},300);*/
                   });
               }
           }

           function init()
           {

               var title = "";
               $.each(cases,function(i){
                   title = cases[i].classname;
                   if(cases[i].classname.length == 2)
                   {
                       title = title.substring(0,1)+"&nbsp;&nbsp;"+title.substring(1,2);
                       title = '<li><a href="javascript:;" data-rel="'+i+'">'+title+'</a></li>';
                   }
                   else if(cases[i].classname.length == 3)
                   {
                       title = title.substring(0,1)+"&nbsp;"+title.substring(1,2)+"&nbsp;"+title.substring(2,3);
                       title = '<li><a href="javascript:;" data-rel="'+i+'">'+title+'</a></li>';
                   }
                   else
                   {
                       title = '<li><a href="javascript:;" data-rel="'+i+'">'+title+'</a></li>';
                   }
                   $(".leftnav").find("ul").append(title);
               });
               $(".leftnav").find("ul").find("li").eq(0).addClass('selected');

               add_case(cases[0].cases,0);


               $(".leftnav").find("ul").on("click","a",function(){
            	   /*console.log(66666)*/
            	   var that = this;
                   var i = $(this).attr("data-rel");
                   var _obj = cases[i];
                   $(this).parent().addClass('selected').siblings().removeClass('selected');
                   add_case(_obj.cases,i,that);
                   slideImg();
               });

               //$(".sb_nav_main").find("li").on("click","a",function(){
               $(document).on('click','#case_slide li a',function(){
            	   /*console.log('我是二级菜单111')*/
            	   if($(this).is('.canclick')){
            		   /*console.log('我是二级菜单');*/
            		   var b = parseInt($(this).attr("data-big")),
            		   s = parseInt($(this).attr("data-small"));
            		   $(this).parents('li').siblings('li').find('dl').hide();
            		   $(this).siblings('dl').show();
            		   
            		   add_img(cases[b].cases[s]);
            	   }
               });

               slideImg();
               imgqh();
           }

           init();
      },
      "smarty_hotel":function(){
          //msie 9.0
          if(/msie 7.0/ig.test(userAgent) || /msie 8.0/ig.test(userAgent) || /msie 9.0/ig.test(userAgent))
          {
               $(".smartyHotel .sh_animate").html('<img src="/html/images/smartyHotel/smartyHotel_18.jpg" style="margin-top:10px;"/>');
          }
          else
          {
               var isshow = false;
               $(window).scroll(function(){
                   if($(document).scrollTop() > 1250 && $(document).scrollTop() < 2135)
                   {
                        if(!isshow)
                        {
                            $(".smartyHotel .sh_animate").addClass('start');
                            setTimeout(function(){
                                var n = 0;
                                var speed = 400;
                                var time = window.setInterval(function(){
                                   n++;
                                   speed = speed - 80;
                                   if(n==9)
                                   {
                                       window.clearInterval(time);
                                       return false;
                                   }
                                   $(".smartyHotel .sh_animate").find(".em"+n).addClass('show');
                                }, speed);
                            },400);
                            setTimeout(function(){
                                $(".smartyHotel .sh_animate").addClass('runStop');
                            },4000);
                        }
                        isshow = true;
                   };
              });
          }
      }
   }
   webjs.public();
});



$(function(){
	
})
