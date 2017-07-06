// 页面跳转方法
;function gtView(url){
	var viewLayer = layer.load(2, {shade: [0.9, '#000000']});
	$('#mainView').load(path + url, function(){
		layer.close(viewLayer);
	});
};