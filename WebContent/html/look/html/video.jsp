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
<div class="video-box" id="lookvideo-box1">
    <span class="video-close" onclick="lookcloseVideo1()">关闭</span>
    <video preload="none" controls width="800" height="500" id="lookvideoMedia1" style="background-color: #000">
        <source src="//maint.duofriend.com/upload/video/websiteUpload/website/yzxscj.mp4" type="video/mp4">
    </video>
</div>
<script>
    var lookcloseVideo1 =function(){
        var media = document.getElementById("lookvideoMedia1");
        media.pause();
        $('#lookvideo-box1').hide();
    }
    var lookopenVideo1 = function(){
        var media = document.getElementById("lookvideoMedia1");
        media.play();
        $('#lookvideo-box1').show();
    }
</script>