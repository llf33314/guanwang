var Halo = function(enlarge,returnTime,length){
	this.large = $(enlarge)
	this.returnTime = returnTime; //放大的时间
	this.length = length;//放大的直径
	this.enlarge(0);
	this.Interval();
};
Halo.prototype.num = 1;
Halo.prototype.Interval = function(){
	var that = this;
	var self  = setInterval(function(){
		that.enlarge(that.num)
		if(that.num >= 2){
			that.num = 0
		}else{
			that.num+= 1
		}
	},that.returnTime*2)
}
Halo.prototype.enlarge = function(num){
	const time = this.returnTime;
	const  _large = this.large;
	const _width = this.length;
	const _height = this.length;
	const newWidth = 5*_width;
	const newHeight = 5*_height;
	const defaultCss = {
		'width':this.length+'px',
		'height':this.length+'px',
		'border-radius':this.length+'px',
		'left':'50%',  
        'top':'50%',
        'margin-left':this.length/-2 +'px',
        'margin-top':this.length/-2 +'px',
        'opacity':1
	};
	const move = {
			width:newWidth,
			height:newHeight,
			borderRadius:newHeight,
			left:'50%',  
            top:'50%',
            marginLeft:newWidth/2*-1,
            marginTop:newHeight/2*-1,
            opacity:0
	};
	$(_large[num]).animate(move,time,'linear',function(){
		$(_large[num]).css(defaultCss)
	})
}