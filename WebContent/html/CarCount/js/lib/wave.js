var Wave = function(){
	var that = this;
	that.paint(50);
	var num = 50;
	var t = 1;
	var move = 1;
	var clear = setInterval(function(){
		if(num > 50){
			t=-1;
		}
		if(num < 10){
			t=1;
		}
		num+=0.05*t;
		move+=0.7;
		
		if(move <= 9000){
			that.paint(num,move);
		}else{
			move = 1;
		}
	},20)
};
Wave.prototype.sin = function(A, w,T, C, x){ // 波模拟函数
	return A * Math.sin(w * T * x) + A * Math.sin(.5*w * T * x) + A * Math.sin(.25*w * T * x) + C;
}

Wave.prototype.paint = function(a,move){ //画图
	var c = document.getElementById("wave");
	c.width = $(window).width()*1.6;
	c.height = 394;
	var ct = c.getContext("2d");
	var width = c.width;
	var height = 369;
	var beginX = -9000+move; //图片起点横坐标
	// 	正弦函数 f(x) = A*sin(w*T + t0) + C;
	var A = a; //振幅 正负值决定方向 最好取值在[2,7]
	var w = .1047; //频率,此处是canvas的宽度取两千分之一左右
	var T = 1.6;//决定相同的宽度下波的周期,取整数 1.6
	var C = 160; //图形距离画布的距离
	var m = 13; //缩放系数
	ct.clearRect(0,0,width,height);
	ct.moveTo(beginX, C);
	for (var i =0; i < width + 1 ; i++) {
		ct.lineTo(beginX + m * i, this.sin(A, w,T, C, i));
	}
	ct.lineTo(width,height);
	ct.lineTo(0,height);
	ct.closePath();
	ct.globalAlpha=0.8;
	ct.fillStyle = "rgba(26, 130, 241,1)"
	ct.fill();
	
	ct.beginPath();
	ct.moveTo(beginX, C);
	for (var i = 0; i < width + 1 ; i++) {
		ct.lineTo(beginX + m * i*1.2, this.sin(A*-1, w,T, C, i ));
	}
	ct.lineTo(width,height);
	ct.lineTo(0,height);
	ct.closePath();
	
	ct.fillStyle = "rgba(26, 130, 241,0.5)"
	ct.fill();
}	