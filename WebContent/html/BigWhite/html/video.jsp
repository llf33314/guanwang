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
<div class="video-box" id="baivideo-box1">
    <span class="video-close" onclick="baicloseVideo1()">关闭</span>
    <video preload="none" controls width="800" height="500" id="baivideoMedia1" style="background-color: #000">
        <source src="http://maint.duofriend.com/upload/video/websiteUpload/website/xhs.mp4" type="video/mp4">
    </video>
</div>
<script>
    var baicloseVideo1 =function(){
        var media = document.getElementById("baivideoMedia1");
        media.pause();
        $('#baivideo-box1').hide();
    }
    var baiopenVideo1 = function(){
        var media = document.getElementById("baivideoMedia1");
        media.play();
        $('#baivideo-box1').show();
    }
</script>

<div class="video-box" id="baivideo-box2">
    <span class="video-close" onclick="baicloseVideo2()">关闭</span>
    <video preload="none" controls width="800" height="500" id="baivideoMedia2" style="background-color: #000">
        <source src="http://maint.duofriend.com/upload/video/websiteUpload/website/MGxhs.mp4" type="video/mp4">
    </video>
</div>
<script>
    var baicloseVideo2 =function(){
        var media = document.getElementById("baivideoMedia2");
        media.pause();
        $('#baivideo-box2').hide();
    }
    var baiopenVideo2 = function(){
        var media = document.getElementById("baivideoMedia2");
        media.play();
        $('#baivideo-box2').show();
    }
</script>