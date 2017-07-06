var websocket = null, serverObject = {};
if ('WebSocket' in window) {
	$.ajax({
		url: '/screenDisplay/html/largeScreenDisplay', 
		type: "POST",
		async: false,
		data: {},
		success: function(data){
			var d = eval("("+data+")");
			if(d.status == 1){
				websocket = new WebSocket("ws://"+document.location.host+"/html/79B4DE7C/screendisplay.do");
				/*websocket = new WebSocket("ws://192.168.3.37:8081/html/79B4DE7C/screendisplay.do");*/
				$('#todayOrderNumber').html(d.data.todayOrderNumber);
				$('#todayamount').html(d.data.TONprice);
			}else{
				alert('服务繁忙')
			}
		},
		error: function(){
			alert('网络繁忙')
		}
	});
	
}
else {
    alert('请更换新版浏览器')
}
websocket.onerror = function () {
    /*console.log("WebSocket连接发生错误");*/
    alert('与服务器连接发生错误');
};
websocket.onopen = function () {
	/*console.log("WebSocket连接成功");*/
	websocket.send('clientConnect');
}
websocket.onmessage = function (event) {
	/*console.log(event.data);*/
	serverObject.serverPush(eval('('+event.data+')'));
}
websocket.onclose = function () {
	/*console.log("WebSocket连接关闭");*/
}
window.onbeforeunload = function () {
	websocket.close();
}

/*-------------------------------------------------------------------------------------------------------------*/

//Let the library know where WebSocketMain.swf is:
//WEB_SOCKET_SWF_LOCATION = "WebSocketMain.swf";
//if ('WebSocket' in window) {
//	$.ajax({
//		url: '/screenDisplay/html/largeScreenDisplay', 
//		type: "POST",
//		async: false,
//		data: {},
//		success: function(data){
//			var d = eval("("+data+")");
//			if(d.status == 1){
//				websocket = new WebSocket("ws://"+document.location.host+"/html/79B4DE7C/screendisplay.do");
//				$('#todayOrderNumber').html(d.data.todayOrderNumber);
//				$('#todayamount').html(d.data.TONprice);
//			}else{
//				alert('服务繁忙')
//			}
//		},
//		error: function(){
//			alert('网络繁忙')
//		}
//	});
//}
//websocket = new WebSocket("ws://"+document.location.host+"/html/79B4DE7C/screendisplay.do");
//websocket.onopen = function() {
//	websocket.send("clientConnect");
//};
//websocket.onmessage = function(e) {
//	console.log(e.data);
//	serverObject.serverPush(eval('('+e.data+')'));
//};
//websocket.onclose = function() {
//	console.log("closed");
//};
