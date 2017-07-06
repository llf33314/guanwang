/* default dom id (particles-js) */
//particlesJS();

/* config dom id */
//particlesJS('dom-id');

/* config dom id (optional) + config particles params */
particlesJS('particles-js', {
  particles: {
    color: '#fff',
    shape: 'circle', // "circle", "edge" or "triangle"
    opacity: 0.8,
    size: 4,
    size_random: true,
    nb: 40,
    line_linked: {
      enable_auto: true,
      distance: 150,
      color: '#fff',
      opacity: 0.8,
      width: 1,
      condensed_mode: {
        enable: false,
        rotateX: 600,
        rotateY: 600
      }
    },
    anim: {
      enable: true,
      speed: 1
    }
  },
  interactivity: {
    enable: true,
    mouse: {
      distance: 300
    },
    detect_on: 'canvas', // "canvas" or "window"
    mode: 'grab',
    line_linked: {
      opacity: .5
    },
    events: {
      onclick: {
        enable: true,
        mode: 'push', // "push" or "remove"
        nb: 4
      }
    }
  },
  /* Retina Display Support */
  retina_detect: true
});



//文字逐个出现

text = "美容美发行业整体解决方案";
i = 0;
function type(){
 str  = text.substr(0,i);
 txt.innerHTML = str + "";
 i++;
 if (i>text.length){

  i=0;

//return 加入则text显示完后，停止。//

}
 setTimeout("type()",400);
}


