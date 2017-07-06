

////banner
// var canvasPage3 = document.getElementById("myCanvas");
//        canvasPage3.width = 1368;
//        canvasPage3.height = 390;
//        var ctx = canvasPage3.getContext("2d");
//        var zhongX = 800;
//        var zhongY = 385;
//        function randomNum(x,y)
//        {
//            return Math.floor(Math.random() * (y - x + 1) + x);
//        }
//
//        function randomColor() {
//            return "rgb(" + randomNum(0, 255) + "," + randomNum(0, 255) + "," + randomNum(0, 255) + ")";
//        }
//
//        function Ball() {
//            this.r = randomNum(0.1, 3);
//            this.color = "white";
//
//            this.x = randomNum(this.r, canvasPage3.width - this.r);
//            this.y = randomNum(this.r, canvasPage3.height - this.r);
//
//            this.speedX = randomNum(1, 3) * (randomNum(0, 1) ? 1 : -1);
//            this.speedY = randomNum(1, 3) * (randomNum(0, 1) ? 1 : -1);
//        }
//
//        Ball.prototype.move = function () {
//            this.x += this.speedX*0.2;
//            this.y += this.speedY*0.2;
//
//            if(this.x<=this.r)
//            {
//                this.x = this.r;
//                this.speedX *= -1;
//            }
//            if(this.x>=canvasPage3.width -this.r)
//            {
//                this.x = canvasPage3.width - this.r
//                this.speedX *= -1;
//            }
//            //小球碰到上边界的处理 反弹
//            if (this.y <= this.r) {
//                this.y = this.r;
//                //反弹
//                this.speedY *= -1;
//            }
//            //小球碰到下边界的处理 反弹
//            if (this.y >= canvasPage3.height - this.r) {
//                this.y = canvasPage3.height - this.r;
//                //反弹
//                this.speedY *= -1;
//            }
//        }
//
//        Ball.prototype.draw = function () {
//            ctx.beginPath();
//            ctx.arc(this.x, this.y, this.r, 0, Math.PI * 2, false);
//            ctx.fillStyle = this.color;
//            ctx.fill();
//        }
//
//        var balls = [];
//        var arr = [];
//        for (var i = 0; i < 0.0002 * canvasPage3.width * canvasPage3.height; i++) {
//            var ball = new Ball();
//            balls.push(ball);
//        }
//
//        setInterval(function () {
//            arr = [];
//            ctx.clearRect(0, 0, canvasPage3.width, canvasPage3.height);
//            for (var i = 0; i < balls.length; i++) {
//                balls[i].move();
//                balls[i].draw();
//                if (ballAndMouse(balls[i]) < 130) {
//                    ctx.lineWidth = (130 - ballAndMouse(balls[i])) * 1.5 / 130;
//                    ctx.beginPath();
//                    ctx.moveTo(balls[i].x, balls[i].y);
//                    ctx.lineTo(zhongX, zhongY);
//                    ctx.strokeStyle = balls[i].color;
//                    ctx.stroke();
//                }
//            }
//
//
//            for (var i = 0; i < balls.length; i++) {
//                for (var j = 0; j < balls.length; j++) {
//                    if (ballAndBall(balls[i], balls[j]) < 80) {
//                        ctx.lineWidth = (80 - ballAndBall(balls[i], balls[j])) * 0.6 / 80;
//                        ctx.globalAlpha = (130 - ballAndBall(balls[i], balls[j])) * 1 / 80;
//                        ctx.beginPath();
//                        ctx.moveTo(balls[i].x, balls[i].y);
//                        ctx.lineTo(balls[j].x, balls[j].y);
//                        ctx.strokeStyle = balls[i].color;
//                        ctx.stroke();
//                    }
//                }
//            }
//            ctx.globalAlpha = 1.0;
//
//        }, 30);
//
//        canvasPage3.onmousemove = function (event) {
//            event = event || window.event;
//            zhongX = event.offsetX;
//            zhongY = event.offsetY;
//        }
//
//        function ballAndMouse(obj) {
//            var disX = Math.abs(zhongX - obj.x);
//            var disY = Math.abs(zhongY - obj.y);
//            return Math.sqrt(disX * disX + disY * disY);
//        }
//        function ballAndBall(obj1, obj2) {
//            var disX = Math.abs(obj1.x - obj2.x);
//            var disY = Math.abs(obj1.y - obj2.y);
//            return Math.sqrt(disX * disX + disY * disY);
//        }


//循环显示对话框
	var delayID=0;
	var Num=1;
	var i;
	function change()
	{
	  if(Num==3)Num=1;
	  for(i=1;i<=2;i++)
	  {
	  document.getElementById('td'+i).style.display="none";
	  }
	  document.getElementById('td'+Num).style.display="";
	  Num++;
	  delayID=setTimeout("change()", 3000);
	}
	change();
    
  //圆圈进度条  
    function inte(percent) {
		var canvas_1 = document.querySelector('#canvas_1');
		var canvas_2 = document.querySelector('#canvas_2');
        var canvas_3 = document.querySelector('#canvas_3');
        var canvas_4 = document.querySelector('#canvas_4');
        var canvas_5 = document.querySelector('#canvas_5');
        var canvas_6 = document.querySelector('#canvas_6');
		var ctx_1 = canvas_1.getContext('2d');
		var ctx_2 = canvas_2.getContext('2d');
        var ctx_3 = canvas_3.getContext('2d');
		var ctx_4 = canvas_4.getContext('2d');
        var ctx_5 = canvas_5.getContext('2d');
		var ctx_6 = canvas_6.getContext('2d');
		ctx_1.lineWidth = 2;
		ctx_1.strokeStyle = "#3CA1A4";
		//画底部的灰色圆环
		ctx_1.beginPath();
		ctx_1.arc(canvas_1.width / 2, canvas_1.height / 2, canvas_1.width / 2 - ctx_1.lineWidth / 2, 0, Math.PI * 2, false);
		ctx_1.closePath();
		ctx_1.stroke();

        ctx_3.lineWidth = 2;
		ctx_3.strokeStyle = "#3CA1A4";
		//画底部的灰色圆环
		ctx_3.beginPath();
		ctx_3.arc(canvas_1.width / 2, canvas_1.height / 2, canvas_1.width / 2 - ctx_1.lineWidth / 2, 0, Math.PI * 2, false);
		ctx_3.closePath();
		ctx_3.stroke();

        ctx_5.lineWidth = 2;
		ctx_5.strokeStyle = "#3CA1A4";
		//画底部的灰色圆环
		ctx_5.beginPath();
		ctx_5.arc(canvas_1.width / 2, canvas_1.height / 2, canvas_1.width / 2 - ctx_1.lineWidth / 2, 0, Math.PI * 2, false);
		ctx_5.closePath();
		ctx_5.stroke();
		if (percent < 0 || percent > 100) {
			throw new Error('percent must be between 0 and 100');
			return
		}
		ctx_2.lineWidth = 2;
		ctx_2.strokeStyle = "#fff";

        ctx_4.lineWidth = 2;
		ctx_4.strokeStyle = "#fff";

        ctx_6.lineWidth = 2;
		ctx_6.strokeStyle = "#fff";

		var angle = 0;
		var timer;
		(function draw() {
			timer = requestAnimationFrame(draw);
			ctx_2.clearRect(0, 0, canvas_2.width, canvas_2.height)
            ctx_4.clearRect(0, 0, canvas_4.width, canvas_4.height)
            ctx_6.clearRect(0, 0, canvas_6.width, canvas_6.height)
			//百分比圆环
			ctx_2.beginPath();
			ctx_2.arc(canvas_2.width / 2, canvas_2.height / 2, canvas_2.width / 2 - ctx_2.lineWidth / 2, 0, angle * Math.PI / 180, false);

            ctx_4.beginPath();
            ctx_4.arc(canvas_4.width / 2, canvas_4.height / 2, canvas_4.width / 2 - ctx_4.lineWidth / 2, 0, angle * Math.PI / 180, false);

            ctx_6.beginPath();
            ctx_6.arc(canvas_6.width / 2, canvas_6.height / 2, canvas_6.width / 2 - ctx_6.lineWidth / 2, 0, angle * Math.PI / 180, false);
			angle++;
			var percentAge = parseInt((angle / 360) * 100)
			if (angle > (percent / 100 * 360)) {
				percentAge = percent
				window.cancelAnimationFrame(timer);
			};
			ctx_2.stroke();
			ctx_2.closePath();
			ctx_2.save();
			ctx_2.beginPath();
			ctx_2.rotate(90 * Math.PI / 180)
			ctx_2.font = '0 Arial';
			ctx_2.fillStyle = 'none';
			var text = percentAge + '%';
			ctx_2.fillText(text, 80, -90);
			ctx_2.closePath();
			ctx_2.restore();

      ctx_4.stroke();
      ctx_4.closePath();
      ctx_4.save();
      ctx_4.beginPath();
      ctx_4.rotate(90 * Math.PI / 180)
      ctx_4.font = '0 Arial';
      ctx_4.fillStyle = 'none';
      var text = percentAge + '%';
      ctx_4.fillText(text, 80, -90);
      ctx_4.closePath();
      ctx_4.restore();

      ctx_6.stroke();
      ctx_6.closePath();
      ctx_6.save();
      ctx_6.beginPath();
      ctx_6.rotate(90 * Math.PI / 180)
      ctx_6.font = '0 Arial';
      ctx_6.fillStyle = 'none';
      var text = percentAge + '%';
      ctx_6.fillText(text, 80, -90);
      ctx_6.closePath();
      ctx_6.restore();
		})()
	}
	//window.onload = inte(70);