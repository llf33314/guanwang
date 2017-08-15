### 视频播放器video.js
```
var videoObj = videojs(“videoId”);

```
- ready:
````
myPlayer.ready(function(){
    //在回调函数中，this代表当前播放器，
    //可以调用方法，也可以绑定事件。
})

````
- 播放：
````
myPlayer.play();

````
- 暂停：
````
myPlayer.pause();
````
- 获取播放进度：
````
var whereYouAt = myPlayer.currentTime();
````
- 设置播放进度：
````
myPlayer.currentTime(120);
````
- 视频持续时间，加载完成视频才可以知道视频时长，且在flash情况下无效
````
var howLongIsThis = myPlayer.duration();
````
- 缓冲，就是返回下载了多少
````
var whatHasBeenBuffered = myPlayer.buffered();
````
- 百分比的缓冲
````
var howMuchIsDownloaded = myPlayer.bufferedPercent();
````
- 声音大小（0-1之间）
````
var howLoudIsIt = myPlayer.volume();
````
- 设置声音大小
````
myPlayer.volume(0.5);
````
- 取得视频的宽度
````
var howWideIsIt = myPlayer.width();
````
- 设置宽度：
````
myPlayer.width(640);
````
- 获取高度
````
var howTallIsIt = myPlayer.height();
````
- 设置高度：
````
myPlayer.height(480);
````
- 一步到位的设置大小：
````
myPlayer.size(640,480);
````
- 全屏
````
myPlayer.enterFullScreen();
````
- 离开全屏
````
myPlayer.enterFullScreen();
````
- 添加事件
````
durationchange
ended //播放结束
firstplay
fullscreenchange
loadedalldata
loadeddata
loadedmetadata
loadstart
pause //暂停
play  //播放
progress
seeked
seeking
timeupdate
volumechange
waiting
resize inherited
  
var myFunc = function(){
    // Do something when the event is fired
};
````
- 事件绑定
````
myPlayer.on("ended", function(){
    console.log("end", this.currentTime());
});
myPlayer.on("pause", function(){
    console.log("pause")
});
````
- 删除事件
````
myPlayer.removeEvent(“eventName”, myFunc);
````
- 一个页面中有多个视频，需要点击后触发bootstrap 的模态窗，再弹出视频
````
<a videohref="http://xxx.mp4" class="video_link"><img  src="../images/xxx.jpg"/></a>
$(".video_link").click(function() {
    var myPlayer = videojs('my-video');
    var videoUrl = $(this).attr("videohref");
    videojs("my-video", {}, function() {
        window.myPlayer = this;
        $("#mymoda .video-con #my-video source").attr("src", videoUrl);
        myPlayer.src(videoUrl);
        myPlayer.load(videoUrl);
        myPlayer.play();
    });
    $(".click-modal").click();
});
// 模态窗消失时，关闭视频    
$('#mymoda').on('hidden.bs.modal', function() {
    myPlayer.pause();
});
````

- 来源：http://www.jq22.com/jquery-info404