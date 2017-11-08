<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>运营课程</title>
    <link rel="stylesheet" type="text/css" href="/html/operationCourse/css/course.css" />
    <link rel="stylesheet" type="text/css" href="/html/operationCourse/iconfont/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/html/operationCourse/css/list.css" />
    <link rel="stylesheet" type="text/css" href="/html/operationCourse/css/paging.css">
    <script type="text/javascript" src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="/html/operationCourse/js/jquery-1.11.2.js"></script>
    <script type="text/javascript" src="/html/operationCourse/js/query.js"></script>
    <script type="text/javascript" src="/html/operationCourse/js/paging.js"></script>
    <script type="text/javascript" src="/js/webSite.js"></script>
</head>
<body>
<!--头部菜单-->
<%@include file="/html/common/clearfix.jsp"%>
<!--头部-->
<div class="a-course-bar">
    <div class="barTitle">360°全方位扶持助你盈利增收</div>
</div>

<div class="a-course-center">
    <!--搜索-->
    <div class="a-course-search">
        <input placeholder="搜搜更精彩 + Enter" id="pcdescId"/>
        <i class="iconfont">&#xe78c;</i>
    </div>
    <!--列表-->
    <div class="course-category-model">
        <ul class="course-category-model-ul">


        </ul>
        <!--分页-->
        <div class="pageBar">
            <div class="pageSum">共<span id="counts"></span>条数据</div>
            <div id="pageToolbar"></div>
        </div>
    </div>
</div>
<!--通用底部-->
<%@include file="/html/common/footer.jsp"%>

<script>
    var type = 0;
    function courseList(pages ,pagec) {
        var courseJson = WSFUNCTION.doPost(
            "/operationCourse/html/courselist", {pcdesc:$.trim($("#pcdescId").val()) ,pageSize:pages , page : pagec});
        if(courseJson.courses == 0){
            $(".course-category-model-ul").html("<div style='text-align: center;  font-size: 19px;'><span>暂时没有数据！</span></div>");
            $('#pageToolbar').html("");
            $("#counts").html(0);
        };
        if(courseJson.courses != 0){
            var courses = courseJson.courses;
            if(courses.length > 0 ){
                var htmls = "";
                for(var i = 0 ; i < courses.length ; i++){
                    htmls= htmls + '<li>'
                        +'<span class="imgitem">'
                        +' <a href="/html/operationCourse/operationCourse_'+courses[i].id+'.jsp"  target="_blank">'
                        +'<img src="'+courses[i].logourl+'" alt="" width="280" height="210" class="thumbnail">'
                        +'</a>'
                        +'</span><div>'
                        +'<p class="title">'
                        +' <a href="/html/operationCourse/operationCourse_'+courses[i].id+'.jsp" target="_blank" title="'+courses[i].pcdesc+'">'+courses[i].pcdesc+'</a>'
                        +' </p><p>'
                        +'<img src="'+courses[i].teacherimg+'" alt="" width="30" height="30" class="head-portrait">'
                        +' <span class="name">'+courses[i].teachername+'</span>'
                        +' <a href="/html/operationCourse/operationCourse_'+courses[i].id+'.jsp"  target="_blank">'
                        +'<span class="money'
                        +(courses[i].applystate == "1" ? ' green">免费' : courses[i].applystate == "2" ? '">报名': courses[i].applystate == "3" ? '">已结束':'">回放')
                        +'</span></a></p>'
                        +' <p class="btmm">'
                        +(courses[i].applystate == "1" ? '' : courses[i].applystate == "2" ? ' <i class="iconfont">&#xe6116;</i>': '<i class="iconfont">&#xe61d6;</i>')
                        +' <span class="time toCut'
                        +(courses[i].applystate == "1" ? ' red live' : courses[i].applystate == "2" ? ' red': '')
                        +'">'+courses[i].applydesc+'</span>'
                        +' <span class="enroll">'+courses[i].applycount+'人在学</span>'
                        +' </p> </div> </li>';
                }
                $(".course-category-model-ul").html(htmls);
            }
            $("#counts").html(courseJson.counts);
            if(type == 0){
                type = 1;
                $('#pageToolbar').html("");
                $('#pageToolbar').Paging({pagesize:20,count:courseJson.counts,toolbar:true});
            }
        }
        $(".a-course-center").attr("style","height:"+($(".pageBar").position().top-$(".a-course-bar").position().top)+"px" )
    }
    courseList(20,1);
    $(document).keydown(function(event){
        if(event.keyCode==13){
            type = 0;
            courseList(20,1);
        }
    });
    $(document).ready(function(){
        var list = $(".toCut");
        for (var i = 0 ; i < list.length ; i++){
            if($(list[i]).text().length > 9){
                var str=$(list[i]).text();
                var cutStr=str.substring(0,10);
                $(list[i]).text(cutStr+'...')
            }
        }

    });
</script>
</body>
</html>