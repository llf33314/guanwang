<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html><html><head>    <script>        var _hmt = _hmt || [];        (function() {            var hm = document.createElement("script");            hm.src = "https://hm.baidu.com/hm.js?14a62041b4de52f2586d283b14d1175c";            var s = document.getElementsByTagName("script")[0];            s.parentNode.insertBefore(hm, s);        })();    </script><meta charset="utf-8"><meta name="description" content="555" /><title>555</title><link rel="stylesheet" type="text/css" href="/html/operationCourse/css/course.css" />
<script type="text/javascript" src="/html/js/jquery-1.10.2.js">

</script><script type="text/javascript" src="/js/webSite.js">

</script></head><body>
<%@include file="/html/common/clearfix.jsp"%>
<div class="content" style="    margin: 130px auto 0;">
    <div class="art-content">				<!--宸﹁竟-->
        <div class="art-content-left">
            <!--鍐呭妗� start-->
            <div  style="width:100%;height:20px;"></div>
            <div class="contentBox">
                <div class="art-content-title">7777</div>
                <div class="art-content-text">775767577</div>
                <div class="art-content-img"><img src="http://maint.duofriend.com/upload/image/websiteUpload/website/4CC1498343872E30C60055E85C78EE55.png"/> </div>
                <div class="up-data">2017-12-09</div>
            </div>					<!--鍐呭妗� end-->
        </div>				<!--鍙宠竟-->
        <div class="art-content-right">
            <div class="art-content-right-top">
                <div class="art-content-right-title">授课讲师</div>
                <div class="art-content-right-lecturer">
                    <div class="lecturer-photo"><img src="http://maint.duofriend.com/upload/image/websiteUpload/website/D15EFF6CEA9643B2E08B3C6232EBD3E7.jpg"  /></div>
                    <div class="lecturer-name">方鑫鑫1</div>
                    <div class="lecturer-intro ellipsis">很苗条很美丽，完美完美</div>
                </div>						<!--鍏朵粬璇剧▼-->
                <div class="otherClass">
                    <div class="art-content-right-title">讲师的其他课程:</div>
                    <ul class="otherClass-row" id="otherClass-row1">
                    </ul>
                </div>
            </div>
            <!--鏈�柊鎺ㄨ崘-->
            <div class="art-content-right-bottom">
                <div class="art-content-right-title">最新推荐</div>
                <ul class="otherClass-row" id="otherClass-row2">
                </ul>
            </div>
        </div>
        <div class="page">
            <a id="next" class="onPage  ">下一篇</a>
            <a id="last" class="onPage ">上一篇</a>
        </div>			</div>
</div>
<script>
    var teacherid = "16";
    var id = "321";
    $(function () {
        var productJson = WSFUNCTION.doPost(
            "/operationCourse/html/courselist1", {});
        var products = productJson.courselist;
        var  a  = 10 ;
        if (a > products.length){
            a = products.length;		}
            debugger;
        for(var i=0;i<a;i++){
            $('#otherClass-row2').append('<li>'
                +'<a href="/html/operationCourse/operationCourse_'+products[i].id+'.jsp"><img src="'+products[i].logourl+'"/></a>'
                +'<div class="ellipsis"><a href="/html/operationCourse/operationCourse_'+products[i].id+'.jsp">'+products[i].pcdesc+'</a></div>'
                +'</li>');        }
                var a = 0 ;
        for(var j = 0 ; j < products.length ; j++){
            if(products[j].teacherid == teacherid && products[j].id != id ){
                $('#otherClass-row1').append('<li>'
                    +'<a href="/html/operationCourse/operationCourse_'+products[j].id+'.jsp"><img src="'+products[j].logourl+'"/></a>'
                    +'<div class="ellipsis"><a href="/html/operationCourse/operationCourse_'+products[j].id+'.jsp">'+products[j].pcdesc+'</a></div>'
                    +'</li>');
                a++;
            }
            if(a == 2 ) {
                break;
            }
        }
        if(a == 0 ){
            $('#otherClass-row1').append('<span> 暂无其他课程 </span>');
        }
        for (var b = 0 ; b < products.length ; b++){
            if (products[b].id == id){
                if(b == (products.length-1)){
                    $("#next").attr("href",'javascript: void(0);');
                    $("#next").hide();
                }else {
                    $("#next").show();
                    $("#next").attr("href",'/html/operationCourse/operationCourse_'+products[b+1].id+'.jsp');                }                if(b==0){                    $("#last").attr("href",'javascript: void(0);');                    $("#last").hide();                }else {                    $("#last").show();                    $("#last").attr("href",'/html/operationCourse/operationCourse_'+products[b-1].id+'.jsp');                }                break;            }        }    })</script>		<!--====================================================================================-->				<%@include file="/html/common/footer.jsp"%>		</body></html>