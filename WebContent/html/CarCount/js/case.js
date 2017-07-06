
$(function(){
	function initialization(){
		$('#myContainer').fullpage({
			sectionsColor: ['#1a82f1', '#1a82f1', '#1a82f1', '#fff'],
			//anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
			resize: true,
			//animateAnchor:false,
			scrollOverflow: false,
			//autoScrolling:true,
			//responsive: 900,
			//fitSection: false,
			menu: '#menu',
			navigation:true,
			//continuousVertical:true,
			//paddingTop: '20px',
			css3: true,
			onLeave:function(e,direction){
				if(e == 1){
					if(direction == 2){
						setTimeout(function(){
							$('#carousel-ul').addClass('fadeInUp');
						},500)

						setTimeout(function(){
							$('.choice').addClass('fadeInUp');
						},1000)
						
						setTimeout(function(){
							$('.car-carousel-right').addClass('fadeInUp');
						},1800)
					}
				}
				else if(e == 2){
					if(direction == 3){
						setTimeout(function(){
							$('.car-chain-left').addClass('fadeInUp');
						},500)

						setTimeout(function(){
							$('.car-chain-right').addClass('fadeInUp');
						},1000)
						
						setTimeout(function(){
							$('#chain-p').addClass('fadeInUp');
						},1200)
						
						setTimeout(function(){
							$('#chain-p2').addClass('fadeInUp');
						},1200)
						
						setTimeout(function(){
							$('#chain-p3').addClass('fadeInUp');
						},1200)
						
						setTimeout(function(){
							$('#chain-p4').addClass('fadeInUp');
						},1200)
						
						setTimeout(function(){
							$('#chain-pic1').addClass('fadeInUp');
						},1800)
						
						setTimeout(function(){
							$('#chain-pic2').addClass('fadeInUp');
						},2200)
						
						setTimeout(function(){
							$('#chain-pic3').addClass('fadeInUp');
						},2800)
						
						setTimeout(function(){
							$('#chain-pic4').addClass('fadeInUp');
						},3200)
						
						setTimeout(function(){
							$('#chain-txt1').addClass('fadeInUp');
						},2000)
						
						setTimeout(function(){
							$('#chain-txt2').addClass('fadeInUp');
						},2400)
						
						setTimeout(function(){
							$('#chain-txt3').addClass('fadeInUp');
						},3000)
						
						setTimeout(function(){
							$('#chain-txt4').addClass('fadeInUp');
						},3400)
					}
				}
				else if(e == 3){
					if(direction == 4){
						setTimeout(function(){
							$('#more-txt').addClass('fadeInUp');
						},500)
						
						setTimeout(function(){
							$('#more-pic1').addClass('fadeInLeftBig rotateIn flipInY');
						},1200)
						
						setTimeout(function(){
							$('#more-pic2').addClass('fadeInLeftBig rotateIn');
						},1200)
						
						setTimeout(function(){
							$('#more-pic3').addClass('fadeInLeftBig rotateIn');
						},1700)
						
						setTimeout(function(){
							$('#more-pic4').addClass('fadeInLeftBig rotateIn');
						},2200)
						
						setTimeout(function(){
							$('#more-pic5').addClass('fadeInLeftBig rotateIn');
						},2700)
						
						setTimeout(function(){
							$('#more-pic6').addClass('fadeInLeftBig rotateIn');
						},3200)
						
						setTimeout(function(){
							$('#more-pic7').addClass('fadeInLeftBig rotateIn');
						},2000)
						
						setTimeout(function(){
							$('#more-pic8').addClass('fadeInLeftBig rotateIn');
						},2400)
						
						setTimeout(function(){
							$('#more-pic9').addClass('fadeInLeftBig rotateIn');
						},3000)
						
						setTimeout(function(){
							$('#more-pic10').addClass('fadeInLeftBig rotateIn');
						},3400)
						
						setTimeout(function(){
							$('#more-zz3').addClass('fadeInLeftBig');
						},4000)
						
						setTimeout(function(){
							$('#more-zz2').addClass('fadeInLeftBig');
						},4400)
						
						setTimeout(function(){
							$('#more-zz1').addClass('fadeInLeftBig');
						},5000)
						
					}
				}
			},
		});
	}
	//fullPage.js initialization
	initialization();
})