(function(){
    var SEPARATION = 100,
    AMOUNTX = 100,
    AMOUNTY = 50;

    var container;
    var camera, scene, renderer;

    var particles, particle, count = 0;

    var mouseX = 85,
        mouseY = -342;

    var windowHalfX = window.innerWidth / 2;
    var windowHalfY = window.innerHeight / 2;
    
//    if(typeof carMobileApp != 'undefined'){
//    	init();
//        animate();
//    }
    init();
    animate();
    

    function init() {

        container = document.getElementById('fd-banner');

        camera = new THREE.PerspectiveCamera(70, window.innerWidth / window.innerHeight, 1, 4000);   //视角，纵横比，最近的距离，最远的距离
        camera.position.z = 1000;

        scene = new THREE.Scene();

        particles = new Array();

        var PI2 = Math.PI * 2;
        //定义素材
        var material = new THREE.ParticleCanvasMaterial({

            color: 0xe1e1e1,
            program: function(context) {

                context.beginPath();
                context.arc(0, 0, .6, 0, PI2, true);
                context.fill();

            }

        });

        var i = 0;

        for (var ix = 0; ix < AMOUNTX; ix++) {

            for (var iy = 0; iy < AMOUNTY; iy++) {
                //生成粒子
                particle = particles[i++] = new THREE.Particle(material);
                particle.position.x = ix * SEPARATION - ((AMOUNTX * SEPARATION) / 2);
                particle.position.z = iy * SEPARATION - ((AMOUNTY * SEPARATION) / 2);
                scene.add(particle);

            }

        }

        renderer = new THREE.CanvasRenderer();
        renderer.setSize(window.innerWidth, window.innerHeight);
        container.appendChild(renderer.domElement);

       
//        document.addEventListener('mousemove', onDocumentMouseMove, false);
//        document.addEventListener('touchstart', onDocumentTouchStart, false);
//        document.addEventListener('touchmove', onDocumentTouchMove, false);
//        window.addEventListener('resize', onWindowResize, false);
//       
    }

    function onWindowResize() {

        windowHalfX = window.innerWidth / 2;
        windowHalfY = window.innerHeight / 2;

        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize(window.innerWidth, window.innerHeight);

    }

    //

    function onDocumentMouseMove(event) {

        mouseX = event.clientX - windowHalfX;
        mouseY = event.clientY - windowHalfY;

    }

    function onDocumentTouchStart(event) {

        if (event.touches.length === 1) {

            event.preventDefault();

            mouseX = event.touches[0].pageX - windowHalfX;
            mouseY = event.touches[0].pageY - windowHalfY;

        }

    }

    function onDocumentTouchMove(event) {

        if (event.touches.length === 1) {

            event.preventDefault();

            mouseX = event.touches[0].pageX - windowHalfX;
            mouseY = event.touches[0].pageY - windowHalfY;

        }

    }

    //

    function animate() {

        requestAnimationFrame(animate);

        render();


    }

    function render() {

        camera.position.x += (mouseX - camera.position.x) * .05;
        camera.position.y += (-mouseY - camera.position.y) * .05;
        //利用 [lookAt] 方法来设置相机的视野中心
        camera.lookAt(scene.position);

        var i = 0;

        for (var ix = 0; ix < AMOUNTX; ix++) {

            for (var iy = 0; iy < AMOUNTY; iy++) {

                particle = particles[i++];
                particle.position.y = (Math.sin((ix + count) * 0.3) * 50) + (Math.sin((iy + count) * 0.5) * 50);
                particle.scale.x = particle.scale.y = (Math.sin((ix + count) * 0.3) + 1) * 2 + (Math.sin((iy + count) * 0.5) + 1) * 2;

            }

        }

        renderer.render(scene, camera);

        count += 0.1;

    }
}).call(this);


$(function(){
    var flag = [0,0,0,0,0];
    $(window).scroll(function(){
         var scrollTop = $(window).scrollTop();
//         console.log(scrollTop)
         if(scrollTop >120 && scrollTop < 900){
//        	 console.log("方法")
        	 $(".reservation-service").find("#wrap1").addClass("fadeInUp");
//        	 setTimeout(function(){
//                 $("#wrap1").find(".h21").addClass("fadeInRight");
//              },600);
//             setTimeout(function(){
//                $("#wrap1").find(".desc1").addClass("fadeInRight");
//             },800);
//             setTimeout(function(){
//                 $("#wrap1").find(".iphone1").addClass("fadeInUp");
//              },1000);
                 setTimeout(function(){
	                $("#wrap1").find(".line1").addClass("fadeInUp");
	             },600);
	             setTimeout(function(){
	                 $("#wrap1").find(".cri1").addClass("fadeInUp");
	             },800);
	             setTimeout(function(){
	                 $("#wrap1").find(".txt1").addClass("fadeInUp");
	              },1400);
	             setTimeout(function(){
	                 $("#wrap1").find(".block1").addClass("fadeInUp");
	              },2000);
             
             setTimeout(function(){
                 $("#wrap1").find(".h22").addClass("fadeInRight");
              },2400);
             setTimeout(function(){
                $("#wrap1").find(".desc2").addClass("fadeInRight");
             },2600);
             setTimeout(function(){
                 $("#wrap1").find(".iphone2").addClass("fadeInUp");
              },3000);
             setTimeout(function(){
                $("#wrap1").find(".line2").addClass("fadeInUp");
             },3400);
             setTimeout(function(){
                 $("#wrap1").find(".cri2").addClass("fadeInUp");
              },3800);
             setTimeout(function(){
                 $("#wrap1").find(".txt2").addClass("fadeInUp");
              },4200);
             setTimeout(function(){
                 $("#wrap1").find(".block2").addClass("fadeInUp");
              },4600);
         }
         
         if(scrollTop >1350 && scrollTop < 2225){
//        	 console.log("方法")
        	 $(".member-crm").find("#wrap2").addClass("fadeInUp");
        	 setTimeout(function(){
                 $("#wrap2").find("#crm1").addClass("fadeInRight");
              },600);
             setTimeout(function(){
                $("#wrap2").find("#crm2").addClass("fadeInRight");
             },800);
             setTimeout(function(){
                 $("#wrap2").find(".tips").addClass("fadeInUp");
              },1000);
         }
         
         if(scrollTop > 2290 && scrollTop < 2880){
              if(flag[2] == 1) return false;
              else flag[2] = 1;
//              console.log("4")
              $(".data-report").find(".bg").addClass("show");
              setTimeout(function(){
                  $(".data-report").find("#report1").addClass("fadeInUp");
               },600);
              setTimeout(function(){
                  $(".data-report").find("#report2").addClass("fadeInUp");
               },1000);
              for(var i=1;i<=6;i++){
                  (function(n){
                       setTimeout(function(){
                          var j = 1;
                          $(".data-report").find(".item"+n).addClass("show");
                          setInterval(function(){
                             $(".data-report").find(".item" +j).addClass("selected").siblings().removeClass("selected");
                             j++;
                             if(j > 6) j = 1;
                          },3000)
                       },800 + 400 * n);
                  })(i);
              }
         }
         else if(scrollTop >2830 && scrollTop < 3325){
              if(flag[3] == 1) return false;
              else flag[3] = 1;
              $(".data-shop").find(".xg-1").addClass("show");
              $(".data-shop").find(".xg-2").addClass("show");
              setTimeout(function(){
                  $(".data-shop").find("#shop1").addClass("fadeInUp");
               },100);
              setTimeout(function(){
                  $(".data-shop").find("#shop2").addClass("fadeInUp");
               },300);
              setTimeout(function(){
                 $(".data-shop").find(".xg-2").find(".xg1").addClass("show");
              },7000);
              setTimeout(function(){
                 $(".data-shop").find(".xg-2").find(".xg2").addClass("show");
              },9600);
         }
         
         if(scrollTop >3200 && scrollTop < 3900){
        	 $(".more-function").find(".clearfix").addClass("fadeInUp");
        	 setTimeout(function(){
                 $(".more-function").find("#more1").addClass("fadeInUp");
              },600);
             setTimeout(function(){
                $(".clearfix").find("#clearfix1").addClass("fadeInUp");
             },1000);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix2").addClass("fadeInUp");
              },1500);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix3").addClass("fadeInUp");
              },2000);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix4").addClass("fadeInUp");
              },2500);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix5").addClass("fadeInUp");
              },3000);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix6").addClass("fadeInUp");
              },3500);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix-txt1").addClass("fadeInUp");
              },1300);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix-txt2").addClass("fadeInUp");
              },1800);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix-txt3").addClass("fadeInUp");
              },2300);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix-txt4").addClass("fadeInUp");
              },2800);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix-txt5").addClass("fadeInUp");
              },3300);
             setTimeout(function(){
                 $(".clearfix").find("#clearfix-txt6").addClass("fadeInUp");
              },3800);
             
         }

    });
});


