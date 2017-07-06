var  Ellipse = function(){
   this.rotate();
};
Ellipse.prototype.rotate = function(){
	var box = $('#ellipseBox');
	var images = $('.ellipse .box .image')
	var r = 0;
	setInterval(function(){
		if(r > 360){
			r =0
		}else{
			r+=1;
			box.css({"transform":'rotate('+r+'deg)'});
			images.eq(0).css({"transform":'rotate('+r*-1+'deg)'})
			images.eq(1).css({"transform":'rotate('+r*-1+'deg)'})
			images.eq(2).css({"transform":'rotate('+r*-1+'deg)'})
			images.eq(3).css({"transform":'rotate('+r*-1+'deg)'})
		}
	},5)
}

var ellipse = new Ellipse();