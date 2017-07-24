<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>多粉产品使用手册</title>
    <link rel="Shortcut Icon" href="/images/favicon.ico" type="image/x-icon">
    <%@include file="/html/common/css.jsp" %>
    <%@include file="/html/common/cmm_css.jsp" %>
	<%@include file="/html/common/js.jsp" %>
    <script type="text/javascript">
        $(function () {
            intiManual();
            $("#banner").slideLx({"height": 434});
            $('.list-instr').click(function () {
               var menu =   $(this).siblings('.hide-menu-instru');
                menu.toggleClass('passive');
            });
            $("#inlineBox").keypress(function(e) {
    			if(e.which == 27) {
    				$(".inlineBox-ifr iframe").attr("src", "");
    				$("#inlineBox").hide();
    			}
    		});

			$('.hide-menu-instructions a').on('mouseover',function(){
			    		 $(this).css({'text-decoration':'underline','color':'#6c99ef'});
			    		});
			$('.hide-menu-instructions a').on('mouseout',function(){
				$(this).css({'text-decoration':'none','color':'#9a9a9a'});
			});
        })
    </script>

	
</head>

<body>
<div class="wrap index">
    <%@include file="/html/common/clearfix.jsp" %>

    <div class="instructions-container  ">
        <!--中间内容-->
        <h1 class="instr-title">多粉产品使用手册(目录)</h1>
        <img class="instr-tab" src="${imageUrl}/aboutus/tab.png" alt="">
        <div class="clear instructions-main">
            <div class="fl instructions-left">
                <!--左边内容--->
                <ul class="instru-list">
                </ul>
            </div>
            <div class="fr instructions-right">
                <!--右边内容--->
            </div>
        </div>
        <br style="clear:both;" />


        <!--中间内容-->
    </div>
    
    <!--底部-->
    <%@include file="/html/common/footer.jsp" %>
    <!--底部-->
</div>
<style>
		li span{
			cursor: pointer;
		}
		li{
			color:#9a9a9a;
		}
		.hide-menu-instructions a{
			color: #9a9a9a;
			font-weight: 100; 
			

		}
		.btn-user111 a{color: white;}
	</style>

</body>
<script type="text/javascript">
	function intiManual(){
		var list = WSFUNCTION.doPost("/manual/html/list", {}), 
			left = "", 
			right = "";
		for(var i=0;i<list.length;i++){
			if(list[i].lv == 1){
				left += "<li><div class='list-instr'>"+list[i].title+"</div>"
					+"<ul class='hide-menu-instru passive' p-i-d='"+list[i].id+"'></ul></li>"
			}
		}
		$(".instru-list").html(left);
		$(".hide-menu-instru").each(function(){
			var b = "";
			for(var i=0;i<list.length;i++){
				if(list[i].parentId == $(this).attr("p-i-d")){
					var c = list[i].title;
					if(c.length > 6) c = c.substring(0, 6);
					b += "<li class='hide-menu-instructions'><a href='#"+list[i].parentId+"'>"+c+"</a></li>"
				}
			}
			$(this).html(b);
		});
		
		var L = list, eins = 1;
		for(var i=0;i<list.length;i++){
			if(list[i].lv == 1){
				right += "<h1 id='"+list[i].id+"'>"+eins+"."+list[i].title+"</h1><ul class='instructions-right-content'>";
				var zwei = 1;
				for(var j=0;j<L.length;j++){
					if(L[j].parentId == list[i].id){
						var phone = "";
						var video = "";
						/* if(L[j].phoneUrl != "") 
							phone = "<button class='btn-user111'><a href='"+L[j].phoneUrl+"' "
								+"target='_Blank'>查看手机演示</a></button>";
						if(L[j].videoUrl != "") 
							video = "<button class='btn-user111'><a href='"+L[j].videoUrl+"' "
							+"target='_Blank'>查看视频教程</a></button>"; */
						if(L[j].phoneUrl != "") 
							phone = "<button class='btn-user111' "
								+"onclick='WSFUNCTION.videoFrame(\""+L[j].phoneUrl+"\");'>查看手机演示</button>";
						if(L[j].videoUrl != "") 
							video = "<button class='btn-user111' "
								+"onclick='WSFUNCTION.videoFrame(\""+L[j].videoUrl+"\");'>查看视频教程</button>";
						right += "<li class='clear'><span onclick='toDetail("+L[j].id+", \""
								+eins+"."+zwei+"\")'>"+eins+"."+zwei+L[j].title
								+"</span><div class='btn-user-wrap fr'>"+phone+video+"</div></li>";
						zwei++;
					}
				}
				right += "</ul>";
				eins++;
			}
		}
		$(".instructions-right").html(right);
	}
	
	function toDetail(id, title){
		window.location.href = "/html/guest_detail.jsp?i="+id+"@@"+title;
	}
</script>



</html>

