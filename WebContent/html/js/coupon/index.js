
/*首页轮播*/
$(function(){
	function initialization(){
		$('#myContainer').fullpage({
			sectionsColor: ['#2e2e2e', '#2e2e2e', '#e3ecf3', '#2e2e2e','#e3ecf3','#2e2e2e','#e3ecf3','#2e2e2e','#e3ecf3'],
			//anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
			resize: true,
			animateAnchor:false,
			scrollOverflow: false,
			autoScrolling:true,
			responsive: 900,
			fitSection: false,
			menu: '#menu',
			navigation:true,
			//continuousVertical:true,
			//paddingTop: '20px',
			css3: true,
			onLeave:function(e,direction){
				if(e == 1){
					if(direction == 2){
						setTimeout(function(){
							$('.cou-exch-t-l').addClass('fadeInLeftBig');
						},300)

						setTimeout(function(){
							$('.cou-exch-t-r').addClass('fadeInUp');
						},1000)
						setTimeout(function(){
							$('.cou-exch-b').addClass('fadeIn');
						},1500)	
						setTimeout(function(){
							$('#zh').addClass('fadeIn');
						},1000)		
					}
				}
				else if(e == 2){
					if(direction == 3){
						setTimeout(function(){
							$('.cou-vs-l').addClass('rotateInDownLeft');
						},800)

						setTimeout(function(){
							$('.cou-vs-z').addClass('bounceIn');
						},500)
						
						setTimeout(function(){
							$('.cou-vs-r').addClass('rotateInUpRight');
						},800)
						
					}
				}
				else if(e == 3){
					if(direction == 4){
						setTimeout(function(){
							$('#txt1').addClass('fadeInDown');
						},500)
						
						setTimeout(function(){
							$('.cou-box').addClass('fadeInUp');
						},1000)
						
						setTimeout(function(){
							$('#coll4').addClass('fadeIn');
						},1200)
						
						setTimeout(function(){
							$('#coll5').addClass('rotateIn');
						},1500)
						
						setTimeout(function(){
							$('#coll6').addClass('rotateIn');
						},1800)
						
						setTimeout(function(){
							$('#coll7').addClass('rotateIn');
						},2100)
						
						setTimeout(function(){
							$('#coll8').addClass('rotateIn');
						},2400)
						
						setTimeout(function(){
							$('#coll9').addClass('rotateIn');
						},2700)
						
						setTimeout(function(){
							$('#coll10').addClass('rotateIn');
						},3000)
						
						setTimeout(function(){
							$('#coll11').addClass('rotateIn');
						},3300)
						
						setTimeout(function(){
							$('#cp1').addClass('fadeInUp');
						},4000)
										
					}
				}
				else if(e == 4){
					if(direction == 5){
						setTimeout(function(){
							$('#de1').addClass('fadeInDown');
						},500)

						setTimeout(function(){
							$('.cou-shop-l').addClass('fadeInLeftBig');
						},800)
						
						setTimeout(function(){
							$('.cou-shop-r').addClass('fadeInUp');
						},1500)
						
					}
				}
				else if(e == 5){
					if(direction == 6){
						setTimeout(function(){
							$('#txt2').addClass('fadeInDown');
						},500)

						setTimeout(function(){
							$('#coll15').addClass('fadeInLeftBig');
						},1000)
						
						setTimeout(function(){
							$('#coll16').addClass('fadeInRightBig');
						},1000)
						setTimeout(function(){
							$('.cou-p').addClass('fadeInUp');
						},1500)
						
					}
				}
				else if(e == 6){
					if(direction == 7){
						setTimeout(function(){
							$('#de2').addClass('fadeInDown');
						},500)

						setTimeout(function(){
							$('#coll17').addClass('fadeInLeftBig');
						},800)
						
						setTimeout(function(){
							$('#coll18').addClass('bounceIn');
						},1200)
						setTimeout(function(){
							$('#dp1').addClass('fadeInUp');
						},1800)
						
					}
				}
				else if(e == 7){
					if(direction == 8){
						setTimeout(function(){
							$('#txt3').addClass('fadeInDown');
						},500)

						setTimeout(function(){
							$('#coll19').addClass('bounceIn');
						},800)
						
						setTimeout(function(){
							$('#coll20').addClass('rotateIn');
						},1200)
						setTimeout(function(){
							$('#cp2').addClass('fadeInUp');
						},1800)
						
					}
				}
				else if(e == 8){
					if(direction == 9){
						setTimeout(function(){
							$('#de3').addClass('fadeInDown');
						},500)

						setTimeout(function(){
							$('#coll21').addClass('bounceIn');
						},1500)
						
						setTimeout(function(){
							$('#coll22').addClass('fadeInLeftBig');
						},800)
						setTimeout(function(){
							$('#coll23').addClass('fadeInRightBig');
						},800)
						setTimeout(function(){
							$('#dp2').addClass('fadeInUp');
						},1800)
						
					}
				}
			
				
			},
		});
	}
	//fullPage.js initialization
	initialization();
})
