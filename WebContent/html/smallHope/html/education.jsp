<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>智慧教育</title>
    <link rel="stylesheet" type="text/css" href="../css/educate.css" />
    <link rel="stylesheet" type="text/css" href="../iconfont/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/html/common/publicResource/css/animate.css" />
    <script src="/html/common/publicResource/js/jquery-2.2.2.min.js"></script>
</head>
<body>
<!--头部菜单-->
<div class="car-top">
    <div class="car-top-box">
        <div class="car-top-title">小盼<span class="car-top-txt">· 智慧教育</span></div>
        <a href="/" class="car-top-station">返回主站</a>
        <div class="car-top-menu">
            <a href="index.jsp" data-num="0"  >首页</a>
            <a href="education.jsp" data-num="1" class="on">核心功能</a>
            <a href="updated.jsp" data-num="2">更新日志</a>
        </div>
        <div class="car-top-right">
            <a href="/html/agency/html/index.jsp">申请代理</a>
            <a href="http://duofriend.com/user/toregister.do">免费体验</a>
            <a href="hopepay.jsp">购买</a>
            <a href="http://duofriend.com/login/login.do" class="car-top-right-login">登录</a>
        </div>
    </div>
</div>

<!--banner-->
<div class="a-ed-banner-box">
    <div class="a-ed-banner"></div>
    <div class="a-ed-banner-txt">
        <h1>让招生更快捷&nbsp;&nbsp;&nbsp;让管理更高效</h1>
    </div>
</div>

<!--实时跟进-->
<div class="a-ed-follow">
    <div class="a-ed-follow-title">实时跟进招生情况，让你不丢一个学员</div>
    <div class="a-ed-follow-subtitle">遇到有意向报名的学员，立即在线“新增意向学员”，填写相关信息，并实时登记跟进内容，</div>
    <div class="a-ed-follow-subtitle" style="margin-top:8px;">每一次跟进记录都能自动保存，不花费一点力气就能轻松找得到</div>

    <div class="a-ed-follow-icon-row">
        <div class="a-ed-follow-icon-list">
            <i class="iconfont">&#xe62b;</i>
            <div class="a-ed-follow-icon-name">新增学员</div>
        </div>
        <div class="a-ed-follow-icon-list">
            <i class="iconfont">&#xe642;</i>
            <div class="a-ed-follow-icon-name">填写信息</div>
        </div>
        <div class="a-ed-follow-icon-list">
            <i class="iconfont">&#xe6fc;</i>
            <div class="a-ed-follow-icon-name">登记内容</div>
        </div>
        <div class="a-ed-follow-icon-list">
            <i class="iconfont">&#xe65f;</i>
            <div class="a-ed-follow-icon-name">自动保存</div>
        </div>
        <div class="a-ed-follow-icon-list">
            <i class="iconfont">&#xe78c;</i>
            <div class="a-ed-follow-icon-name">轻松找到</div>
        </div>
    </div>
</div>
<!--点名-->
<div class="a-ed-naming">
    <div class="a-ed-follow-title">点名，从未如此简单过</div>
    <div class="a-ed-follow-subtitle">通过教师端小程序就能进行点名，未到、签到、请假三种状态轻点屏幕即可记录出勤情况</div>
    <div class="a-ed-naming-row">
        <div class="a-ed-naming-list">
            <div class="a-ed-naming-list-icon blue">
                <i class="iconfont">&#xe72b;</i>
            </div>
            <div class="a-ed-naming-list-type">未到</div>
        </div>
        <div class="a-ed-naming-list">
            <div class="a-ed-naming-list-icon org">
                <i class="iconfont">&#xe63b;</i>
            </div>
            <div class="a-ed-naming-list-type">签到</div>
        </div>
        <div class="a-ed-naming-list">
            <div class="a-ed-naming-list-icon red">
                <i class="iconfont">&#xe684;</i>
            </div>
            <div class="a-ed-naming-list-type">迟到</div>
        </div>
    </div>
</div>
<!--请假-->
<div class="a-ed-leave">
    <div class="a-ed-leave-left">
        <div class="a-ed-leave-left-title">
            请假难吗？就是一秒钟的事
        </div>
        <div class="a-ed-leave-left-subtitle">
            请假还需要打电话吗？还需要找老师吗？不用！家长可以直接通过小程序帮孩子在线请假，请假成功后消息系统自动同步至教师端
        </div>
    </div>
    <div class="a-ed-leave-right">
        <div>
            <img src="../images/ed_leave.png" />
            <i class="iconfont">&#xe6ac;</i>

        </div>
    </div>
</div>
<!--转班-->
<div class="a-ed-work">
    <div class="a-ed-work-center">
        <div class="a-ed-work-left">
            <img src="../images/ed_msg.png" />

            <div class="a-ed-work-act">
                <img src="../images/line.png" />
                <i class="iconfont icon1"></i>
                <i class="iconfont icon2"></i>
            </div>

        </div>

        <div class="a-ed-work-right">
            <div class="a-ed-work-right-title">
                一键转班，操作更简便
            </div>
            <div class="a-ed-work-right-subtitle">
                从前换个班级总要走一堆流程，常常一星期都换不下来，如今，小盼让你一键快速转班
            </div>
        </div>
    </div>
</div>
<!--更多-->
<div class="a-ed-more a-ed-more-feature">
    <div class="a-ed-more-center">
        <div class="a-ed-more-title">
            更多功能，— —为你解忧
        </div>
        <div class="a-ed-more-row">
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe641;</i>
                <div class="a-ed-more-type" style="text-align: left">在线报名</div>
            </div>
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe64d;</i>
                <div class="a-ed-more-type" style="text-align: left">成绩查询</div>
            </div>
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe60e;</i>
                <div class="a-ed-more-type" style="text-align: left">查看课程</div>
            </div>
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe61e;</i>
                <div class="a-ed-more-type" style="text-align: left">查看作业</div>
            </div>
        </div>
        <!--第二列-->
        <div class="a-ed-more-row">
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe63d;</i>
                <div class="a-ed-more-type" style="text-align: left">学员信息</div>
            </div>
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe63e;</i>
                <div class="a-ed-more-type" style="text-align: left">新增考试</div>
            </div>
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe611;</i>
                <div class="a-ed-more-type" style="text-align: left">库存管理</div>
            </div>
            <div class="a-ed-more-list">
                <i class="iconfont">&#xe8a6;</i>
                <div class="a-ed-more-type" style="text-align: left">会员管理</div>
            </div>
        </div>
    </div>
</div>
<!--口碑-->
<div class="a-ed-praise">
    <div class="a-ed-center">
        <div class="a-ed-praise-title">
            有口皆碑，他们都推荐“小盼”
        </div>
        <div class="a-ed-praise-row">
            <div class="a-ed-praise-list">
                <div class="a-ed-praise-photo">
                    <img src="../images/photo1.png" />
                </div>
                <div class="a-ed-praise-introduct" >
                    <div class="name">
                        教育机构负责人 李先生
                    </div>
                    <div class="introduct">
                        借助“小盼”，机构实现了高效的运营管理，我不仅能随时随地查看经营统计报表，而且所有教务管理信息一目了然
                    </div>
                </div>
            </div>
            <div class="a-ed-praise-list">
                <div class="a-ed-praise-photo">
                    <img src="../images/photo2.png" />
                </div>
                <div class="a-ed-praise-introduct">
                    <div class="name">
                        机构辅导教师 孙老师
                    </div>
                    <div class="introduct">
                        通过“小盼”，我可以在线点名、发布作业、一键获取课表和学员成绩，系统还会自动提醒我什么时候上课，方便又省事
                    </div>
                </div>
            </div>
            <div class="a-ed-praise-list">
                <div class="a-ed-praise-photo">
                    <img src="../images/photo3.png" />
                </div>
                <div class="a-ed-praise-introduct a-ed-praise-on" >
                    <div class="name">
                        学员家长 张女士
                    </div>
                    <div class="introduct">
                        使用“小盼”后，我能随时随地查看孩子的作业和考试成绩，在线帮孩子请假，还能通过在线回复评语与老师加强沟通
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--通用底部-->
<%@include file="/html/common/footer-son.jsp" %>
</body>
</html>
<!--鼠标经过事件-->
<script>
    $(".a-ed-praise-list").mouseover(function(){
        $(this).find(".a-ed-praise-introduct").addClass("a-ed-praise-on");
        $(this).siblings().find(".a-ed-praise-introduct").removeClass("a-ed-praise-on");
    });
</script>
<!--获取高度执行动画-->
<script type="text/javascript">
    $(window).scroll(function(){
        var sHeight = $(document).scrollTop();
       // alert(sHeight);
        if(sHeight > 850 ) {
            $(".a-ed-leave-right").find(".iconfont").show();
        }
        if(sHeight > 970 ) {
            $(".a-ed-work-act").find("img").show();
            setTimeout(function () {
                $(".a-ed-work-act").find(".iconfont").show();
            }, 1500);

        }
    });
</script>