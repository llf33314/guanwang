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
<div class="video-box" id="video-box">
    <span class="video-close" onclick="closeVideo()">关闭</span>
    <video preload="none" controls width="800" height="500" id="videoMedia" style="background-color: #000">
        <source src="http://maint.duofriend.com/upload/video/websiteUpload/website/officialFilm720P.mp4" type="video/mp4">
    </video>
</div>
<script>
    var closeVideo =function(){
        var media = document.getElementById("videoMedia");
        media.pause()
        $('#video-box').hide()
    }
    var openVideo = function(){
        var media = document.getElementById("videoMedia");
        media.play()
        $('#video-box').show()
    }
</script>