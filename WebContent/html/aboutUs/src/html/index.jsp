<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="display: none;">
<link href="../js/video/video-js.css" rel="stylesheet">
<!-- If you'd like to support IE8 -->
<script src="../js/video/videojs-ie8.min.js"></script>

<video id="my-video" class="video-js vjs-big-play-centered" controls autoplay="autoplay" preload="auto" width="1200" height="764"
       poster="../img/officialFilm.png">
    <source src="../img/officialFilm720P.mp4" type='video/mp4'>
</video>
<script src="../js/video/video.js"></script>
<!---->
<script>
//    var myPlayer =  videojs(document.getElementById('my-video'))
//    var whatHasBeenBuffered = myPlayer.buffered();
//    console.log(whatHasBeenBuffered)
    videojs(document.getElementById('my-video'), {}, function() {
    // This is functionally the same as the previous example.
    console.log(this)
  });
   // 设置flash路径，Video.js会在不支持html5的浏览中使用flash播放视频文件
  //videojs.options.flash.swf = "video-js.swf";
</script>
</div>