
$(function(){
	function initialization(){
		$('#myContainer').fullpage({
			sectionsColor: ['#fff', '#fff', '#F8F8F8','#fff', '#F8F8F8', '#fff'],
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
							$(".m-fun-erp").find(".m-fun-erp-box").addClass("fadeInUp");
							$(".m-fun-erp").find(".xab").addClass("show"); 
							$('#e1').addClass('fadeInUp');
						},500)
						setTimeout(function(){
							$('#e2').addClass('fadeInUp');
						},1000)						
						setTimeout(function(){
							$('#fun2').addClass('fadeIn');
						},500)
						setTimeout(function(){
							$('#fun5').addClass('bounceIn');
						},1500)
						setTimeout(function(){
							$('#fun6').addClass('bounceIn');
						},2000)
						setTimeout(function(){
							$('#fun7').addClass('bounceIn');
						},2500)
					}
				}
				else if(e == 2){
					if(direction == 3){
						
						setTimeout(function(){
							$('.m-servic-l').addClass('fadeInLeft');
						},800)

						setTimeout(function(){
							$('.m-servic-r').addClass('fadeInRight');
						},800)						
						
					}
				}
				else if(e == 3){
					if(direction == 4){
						setTimeout(function(){
							$('.m-setting-l').addClass('fadeInLeft');
						},800)
						
						setTimeout(function(){
							$('.m-setting-r').addClass('fadeInRight');
						},800)
					
					}
				}
				else if(e == 4){
					if(direction == 5){
						setTimeout(function(){
							$('.m-invoicing-l').addClass('fadeInLeft');
						},800)						
						setTimeout(function(){
							$('#in2').addClass('rotateIn');
						},1200)
						setTimeout(function(){
							$('#in3').addClass('rotateIn');
						},1600)
						setTimeout(function(){
							$('#in4').addClass('rotateIn');
						},2000)
						setTimeout(function(){
							$('.m-invoicing-r').addClass('fadeInRight');
						},800)
					
					}
				}
				else if(e == 5){
					if(direction == 6){
						setTimeout(function(){
							$('.m-app-l').addClass('fadeInLeft');
						},800)
						setTimeout(function(){
							$('.m-app-r').addClass('fadeInRight');
						},800)
					
					}
				}
			},
		});
	}
	//fullPage.js initialization
	initialization();
})



//循环显示对话框
var delayID=0;
	var Num=1;
	var i;
	function change()
	{
	  if(Num==7)Num=1;
	  for(i=1;i<=6;i++)
	  {
	  document.getElementById('td'+i).style.display="none";
	  }
	  document.getElementById('td'+Num).style.display="";
	  Num++;
	  delayID=setTimeout("change()", 3000);
	}
	change();