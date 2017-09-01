<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
    .video-box{
        position: fixed;
        top:50%;
        left: 50%;
        width:100%;
        height: 100%;
        z-index: 90;
        margin-left: -400px;
        margin-top: -250px;
        display: none;
    }
    .video-close{
        position: absolute;
        left: 740px;
        color: #fff;
        top: 40px;
        z-index: 99;
        cursor: pointer;
    }
</style>
<div class="video-box" id="video-box1">
    <span class="video-close" onclick="closeVideo1()">关闭</span>
    <video preload="none" controls width="800" height="500" id="videoMedia1" style="background-color: #000">
        <source src="http://maint.deeptel.com.cn/upload/video/website/dfgnp.mp4" type="video/mp4">
    </video>
</div>
<script>
    var closeVideo1 =function(){
        var media = document.getElementById("videoMedia1");
        media.pause();
        $('#video-box1').hide();
    }
    var openVideo1 = function(){
        var media = document.getElementById("videoMedia1");
        media.play();
        $('#video-box1').show();
    }
</script>