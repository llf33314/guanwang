var ZtShow = function(){
	this.setBgHeight();
	this.initial();
	//this.socket();
};
ZtShow.prototype.setBgHeight = function(){ //设置背景图片高度
	var wh = $(window).height();
	$('.zt-body')[0].style.backgroundSize = '100% '+wh+'px';
};
ZtShow.prototype.initial = function(){ //初始化数据
	var that = this;
	serverObject.serverPush = function(data){
		/*console.log(data)*/
		if(data.isInitial){
			/*console.log('6666666666666666666666666666666')*/
			that.setInitialBoxData(data.data.box);
			that.setInitialColumnarData(data.data.columnar);
			that.fanChat(data.data.fanChat);
			that.setPolylineDataReturn(data.data);
		}else{
			if(data.data.susume){
				window.location.reload();
				that.setPolylineDataReturn(data.data);
			}
			that.setReturnBoxData(data.data);
			that.maps(data.data.maps);
		}
	}
};
ZtShow.prototype.getNowFormatDate= function() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
            + " " + date.getHours() + seperator2 + date.getMinutes()
            + seperator2 + date.getSeconds();
    var house = date.getHours();
    return house;
};
var PolylineData;
ZtShow.prototype.setPolylineDataReturn = function(data){
	/*console.log(data)*/
	if(data.polyline != null && data.polyline != undefined)
		PolylineData = data.polyline;
	var that = this;
	var house = that.getNowFormatDate();
	var num = 0;
	
	if(house < 2){
		num = 1;
	}else if(house < 4){
		num = 2;
	}else if(house < 6){
		num = 3;
	}else if(house < 8){
		num = 4;
	}else if(house < 10){
		num = 5;
	}else if(house < 12){
		num = 6;
	}else if(house < 14){
		num = 7;
	}else if(house < 16){
		num = 8;
	}else if(house < 18){
		num = 9;
	}else if(house < 20){
		num = 10;
	}else if(house < 22){
		num = 11;
	}else if(house < 24){
		num = 12;
	}
	that.setPolylineData(PolylineData.slice(0,num));	
	
	
}
ZtShow.prototype.setReturnBoxData = function(data){ //方格数据
		if(data.peak != ''){
			$('#peak').html(parseInt(data.peak)); //粉丝同时在线数
		}
		if(data.veiws != '' ){
			$('#veiws').html(parseInt(data.veiws)); //当前访问量
		}
		if(data.agentCount != '' ){
			$('#agentCount').html(parseInt(data.agentCount)); //总代理商数
		}
		if(data.currentNumberOfMembers != '' ){
			$('#currentNumberOfMembers').html(parseInt(data.currentNumberOfMembers)); //当前会员数
		}
		if(data.daysCoun != '' ){
			$('#daysCount').html(parseInt(data.daysCount)); //今日新增商户数
		}
		if(data.tota != '' ){
			$('#total').html(parseInt(data.total)); //总商户数
		}
		if(data.todayOrderNumber != ''){
			$('#todayOrderNumber').html(parseInt(data.todayOrderNumber)); //今日订单数
		}
		if(data.TONprice != ''){
			$('#todayamount').html(parseInt(data.TONprice)); //今日交易金额
		}
		
};
ZtShow.prototype.setInitialBoxData = function(data){ //方格数据
	/*console.log(data)*/
	$('#addfanstoday').html(parseInt(data.addfanstoday)); //昨日新增粉丝
	$('#currentfans').html(parseInt(data.currentfans)); //当前粉丝数
	$('#historyhighestonline').html(parseInt(data.historyhighestonline)); //历史最高在线人数
	$('#todayamount').html(parseInt(data.todayamount)); //今日交易金额
	$('#yesterdayamount').html(parseInt(data.yesterdayamount)); //昨日交易金额
};
ZtShow.prototype.maps = function(mapsData){ //地图 左上角
	
	if(mapsData != undefined && mapsData != ''){
		var convertData = [];
		var data = [];
		for(var i in mapsData){
			var value = [];
			value.push(mapsData[i].longitude);
			value.push(mapsData[i].latitude);
			value.push(mapsData[i].value);
			var obj = {
					name:mapsData[i].name,
					value:value
			};
			var o = {
					name:mapsData[i].name,
					value:mapsData[i].value
			}
			data.push(o);
			convertData.push(obj);
		}
		
	}else{
		return;
	}
	
	var topLeftChart = echarts.init(document.getElementById('topLeft'));
	
	/*var data = [
	     {name: '衢州', value: 50},
	     {name: '廊坊', value: 20},
	     {name: '菏泽', value: 35},
	     {name: '合肥', value: 70},
	     {name: '武汉', value: 60},
	     {name: '大庆', value: 10}
	];
	var geoCoordMap = {
	    '衢州':[118.88,28.97],
	    '廊坊':[116.7,39.53],
	    '菏泽':[115.480656,35.23375],
	    '合肥':[117.27,31.86],
	    '武汉':[114.31,30.52],
	    '大庆':[125.03,46.58]
	};
	var convertData = function (data) {
	    var res = [];
	    for (var i = 0; i < data.length; i++) {
	        var geoCoord = geoCoordMap[data[i].name];
	        if (geoCoord) {
	            res.push({
	                name: data[i].name,
	                value: geoCoord.concat(data[i].value)
	            });
	        }
	    }
	    console.log(res)
	    return res;
	};*/
	
	topLeftOption = {
	    backgroundColor: 'rgba(0,0,0,0)',
	    title: {
	        text: '当前访问热点',
	        left: 'center',
	        textStyle: {
	            color: '#fff',
	            fontSize:18
	        }
	    },
	    tooltip : {
	        trigger: 'item'
	    },
	    legend: {
	        orient: 'vertical',
	        y: 'bottom',
	        x:'right',
	        data:[],
	        textStyle: {
	            color: '#fff'
	        }
	    },
	    geo: {
	        map: 'china',
	        label: {
	            emphasis: {
	                show: false
	            }
	        },
	        roam: true,
	        itemStyle: {
	            normal: {
	                areaColor: '#323c48', //地图颜色
	                borderColor: '#0c142b',
	                borderWidth:0.5
	            },
	            emphasis: {
	                areaColor: '#2a333d',
	            }
	        }
	    },
	    series : [
	        {
	            name: '',
	            roam:'scale',
	            type: 'scatter',
	            aspectScale:'5',
	            coordinateSystem: 'geo',
	            data: convertData,
	            symbolSize: function (val) {
	                return val[2] / 10;
	            },
	            label: {
	                normal: {
	                    formatter: '{b}',
	                    position: 'right',
	                    show: false,
	                },
	                emphasis: {
	                    show: true
	                }
	            },
	            itemStyle: {
	                normal: {
	                    color: '#faf900', //黄色小圆点
	                },
	            }
	        },
	        {
	            name: '',
	            type: 'effectScatter',
	            coordinateSystem: 'geo',
	            data: convertData.slice(0, 5),  //给最大的前5位城市添加放大效果
	            symbolSize: function (val) {
	                return val[2] / 10;
	            },
	            showEffectOn: 'render',
	            rippleEffect: {
	                brushType: 'stroke'
	            },
	            hoverAnimation: true,
	            label: {
	                normal: {
	                    formatter: '{b}',
	                    position: 'right',
	                    show: true,
	                    
	                    textStyle:{
	                    	color:'rgba(0,0,0,0)' //设置城市字体颜色
	                    }
	                },
	            },
	            itemStyle: {
	                normal: {
	                    color: '#f4e925',
	                    shadowBlur: 10,
	                    shadowColor: '#333',
	                },
	            },
	            zlevel: 1
	        }
	    ]
	};
	topLeftChart.setOption(topLeftOption);
}
ZtShow.prototype.setPolylineData = function(polylineData){ //折线图右上角
	if(polylineData !=''){
		var time =[],data=[],max=0,min=0;
		for(var i in polylineData){
			time.push(polylineData[i].nowtime);
			data.push(polylineData[i].views);
			if(parseInt(polylineData[i].views) > parseInt(max)){
				max = parseInt(polylineData[i].views);
			}else if(parseInt(polylineData[i].views) < parseInt(max)){
				min = parseInt(polylineData[i].views);
			}
		}
		min = (min/1000).toFixed(2);
		max = (max * 1.2).toFixed(2);
	}else{
		return;
	}
	var topRightChart = echarts.init(document.getElementById('topRight'));
	topRightOption = {
		    backgroundColor: 'rgba(0,0,0,0)',
		    title: {
		        text: '当天访问峰值',
		        textStyle: {
		            fontWeight: '700',
		            fontSize: 15,
		            color: '#fff'
		        },
		        left: 'center',
		    },
		    tooltip: {
		        trigger: 'axis',
		    },
		    legend: {
		        icon: 'rect',
		        itemWidth: 25,
		        itemHeight: 2,
		        itemGap: 33,
		        data:[
		              {
		            	  name:'12:00 ~ 24:00',
		            	  icon:'rect',
		            	  textStyle:{
		            		  color:'#dc9042'
		            	  }
		              }
		        ],
		        left: '7%',
		        top:'10%',
		    },
		    grid: {
		        left: '0%',
		        right: '5%',
		        bottom: '0',
		        containLabel: true,
		        borderWidth:1,
		        tooltip:{
		        	show:false,
		        	trigger:'axis',
		        }
		    },
		    xAxis: [{
		        type: 'category',
		        boundaryGap: false,
		        axisLine: {
		            lineStyle: {
		                color: 'rgba(200,144,66,0.1)'
		            },
		        },
		        
		        axisLabel:{
		        	textStyle:{
		        		color:'#fff' ,//x轴标签字体颜色
		        		align:'center',
		        		fontSize:10
		        	}
		        },
		        nameTextStyle:{
		        	color:'#fff'
		        },
		        axisTick: {
		        	
		            show: false   //隐藏x轴刻度
		        },
		        interval:2,
		        data: ['00:00 ','02:00 ', '04:00','06:00 ', '08:00','10:00 ', '12:00', '14:00 ','16:00','18:00 ','20:00','22:00 ','24:00']
		    }],
		    yAxis: [{
		        type: 'value',
		        min:0, //最小数值
		        max:max, //最大数值
		        splitNumber:5,
		        nameTextStyle:{
		        	fontWeight:500,
		        },
		        axisTick: {
		            show: false
		        },
		        position:'left', //y轴的方向
		        axisLine: {
		        	show:false, //隐藏y轴刻度
		        	lineStyle: {
		                color: 'rgba(255,255,255,1)'
		            },
		            
		        },
		        axisLabel: {
		            margin: 20,
		            textStyle: {
		                fontSize: 10,
		                fontWeight:500,
		            }
		        },
		        splitLine: {
		            lineStyle: {
		                color: 'rgba(200,144,66,0.6)' //x轴的线条颜色
		            }
		        }
		    }],
		    series: [{
		        name: '12:00 ~ 24:00',
		        type: 'line',
		        smooth: true,
		        lineStyle: {
		            normal: {
		                width: 1
		            }
		        },
		        areaStyle: {
		            normal: {
		                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
		                    offset: 0,
		                    color: 'rgba(8, 140, 236, 1)'
		                }, {
		                    offset: 0.4,
		                    color: 'rgba(8, 140, 236, 0.3)'
		                }, {
		                    offset: 1,
		                    color: 'rgba(8, 140, 236, 0.2)'
		                }], false),
		                shadowColor: 'rgba(0, 0, 0, 1)',
		                shadowBlur: 10
		            }
		        },
		        itemStyle: {
		            normal: {
		                color: '#088cec'
		            }
		        },
		        data:data,// [197.3,99.2,99.3,100.0,899.6],
		        symbolSize:0 //设置转折点的半径
		    }]
		};
	topRightChart.setOption(topRightOption);
} 

ZtShow.prototype.fanChat = function(fanChatData){ //扇形图（左下角)
	if(fanChatData != undefined && fanChatData != ''){
		var bottomLeftData = [];
		for(var x in fanChatData){
			var obj = {
					value:parseFloat(fanChatData[x].value).toFixed(2),
					name:fanChatData[x].name,
			};
			bottomLeftData.push(obj);
		}
	}
	var bottomLeftChart = echarts.init(document.getElementById('bottomLeft'));
	var bottomLeftOption = {
		title: {
	        text: '粉丝来源占比',
	        textStyle: {
	            fontWeight: '700',
	            fontSize: 15,
	            color: '#fff'
	        },
	        left: 'center',
	        top:'5%'
	    },
	    color: ['#f05a4a', '#1dac91', '#00a5e6', '#3474c4', '#F59901'],
	    legend: {
	    	 orient: 'horizontal',
	         bottom: '0%',
	         textStyle:{
	        	 color:'#666666',
	        	 fontSize:'12px'
	         },
	         show: false, 
	    },
	    series : [
	        {
	            name: '粉丝来源占比',
	            type: 'pie',
	            selectedMode: 'single',
	            radius: ['30%', '55%'],
			    data:bottomLeftData,
	            itemStyle: {
	                normal: {
	                    label:{ 
	                           show: true, 
	                            formatter: function(param) {
	                               return  param.value +'\n' + param.name  ;
	                           },
	                           textStyle: {
	                               fontSize: 10
	                           },
	                       }
	                },
	                labelLine :{show:true}
	            },
	        },
	    ]
	};
	bottomLeftChart.setOption(bottomLeftOption);

}
ZtShow.prototype.setInitialColumnarData = function(columnarData){ //柱形图右下角
	
	if(columnarData != undefined && columnarData != ''){
		var monthtime = [],growth=[],growthrate=[];
		var maxGrowth = 0,maxGrowthrate = 0,minGrowthrate=0;
		for(var i=columnarData.length-1;i>-1;i--){
			
			if(parseInt(columnarData[i].growth) > parseInt(maxGrowth)){
				maxGrowth = columnarData[i].growth;
			}
			if(parseInt(columnarData[i].growthrate) > parseInt(maxGrowthrate)){
				maxGrowthrate = columnarData[i].growthrate;
			} else if(parseInt(columnarData[i].growthrate) < parseInt(minGrowthrate)){
				minGrowthrate = columnarData[i].growthrate;
			}
			monthtime.push(columnarData[i].monthtime);
			growth.push(columnarData[i].growth);
			growthrate.push(columnarData[i].growthrate);
		};
	};
	var bottomRightChart = echarts.init(document.getElementById('bottomRight'));
	bottomRightOption = {
		backgroundColor: 'rgba(0,0,0,0)',
		color:[	'#dc9042','#088ced'],
	    title: {
	        text: '月度新增粉丝走势',
	        textStyle: {
	            fontWeight: '700',
	            fontSize: 15,
	            color: '#fff'
	        },
	        left: 'center',
	        top:'0%'
	    },
	    tooltip: {
	        trigger: 'axis',
	    },
	    legend: {
			 itemWidth: 30,
		     itemHeight: 10,
	        data:[
	              {
	            	  name:'粉丝增长',
	            	  icon:'rect',
	            	  textStyle:{
	            		  color:'#fff',
	            		  fontSize:10
	            	  }
	              },
	              {
	            	  name:'增长率',
	            	  icon:'image://images/yellow.png',
	            	  textStyle:{
	            		  color:'#0f8ce7',
	            		  fontSize:10
	            	  },
	              },
	        ],
	        left: '8%',
	        top:'10%',
	    },
	    grid: {
	        left: '3%',
	        right: '3%',
	        bottom: '0%',
	        containLabel: true,
	        borderWidth:1,
	    },	
	    xAxis: [{
	    	type: 'category',
	        boundaryGap: false,
	        axisLine: {
	            lineStyle: {
	                color: 'rgba(200,144,66,0.1)',
	            },
	        },
	        axisTick: {
	            show: false   //隐藏x轴刻度
	        },
	        boundaryGap: ['5%', '5%'],
	        axisLabel:{
	        	textStyle:{
	        		color:'#fff' ,//x轴标签字体颜色
	        		align:'center',
	        		fontSize:10
	        	}
	        },
	        nameTextStyle:{
	        	color:'#fff'
	        },
	        axisTick: {
	            show: false,   //隐藏x轴刻度
	            alignWithLabel: true,
	            length:7
	        },
	        data:monthtime //['8月','9月','10月','11月','16年12月','1月','2月']
	    }],
	    yAxis: [{
	        type: 'value', //增长率
	        min: minGrowthrate,
	        max: maxGrowthrate*1.2,
	        position: 'right',
	        axisLabel: {
	            formatter: '{value} %',
	            textStyle:{
	            	fontSize:10,
	            }
	        },
	        axisTick: {
	            show: false   //隐藏x轴刻度
	        },
	        axisLine: {
	        	show:false, //隐藏y轴刻度
	        	lineStyle: {
	                color: 'rgba(255,255,255,1)'
	            },
	        },
	        splitLine: {
	            lineStyle: {
	                color: 'rgba(200,144,66,0.6)' //x轴的线条颜色
	            }
	        }
	    }, {
	        type: 'value', //增长量
	        min: 0, 
	        max: maxGrowth*1.2,
	        position: 'left',
	        splitLine: {
	            lineStyle: {
	                color: 'rgba(200,144,66,0)' //x轴的线条颜色
	            }
	        },
	        axisLabel: {
	            textStyle:{
	            	fontSize:10,
	            }
	        },
	        axisTick: {
	            show: false   //隐藏x轴刻度
	        },
	        axisLine: {
	        	show:false, //隐藏y轴刻度
	        	lineStyle: {
	                color: 'rgba(255,255,255,1)'
	            },
	            
	        },
	    }],
	    series: [{
	        name: '增长率',
	        type: 'line',
	        label: {
	            normal: {
	            	show: false,
	            }
	        },
	        lineStyle: {
	            normal: {
	                width: 1,
	                shadowColor: 'rgba(0,0,0,0.4)',
	                shadowBlur: 10,
	                shadowOffsetY: 10
	            }
	        },
	        symbol:'circle',
	        smoothMonotone:'y',
	        areaStyle: {
	            normal: {
	               /* color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
	                    offset: 0,
	                    color: 'rgba(220, 144, 66, 1)'
	                }, {
	                    offset: 0.6,
	                    color: 'rgba(220, 144, 66, 0.6)'
	                }, {
	                    offset: 0.8,
	                    color: 'rgba(220, 144, 66, 0.3)'
	                }], true),*/
	            	color:'rgba(0,0,0,0)'
	            }
	        },
	        data: growthrate //[-11,-6,37,35,15,13,25]
	    }, {
	        name: '粉丝增长',
	        type: 'bar',
	        barWidth: 20,
	        yAxisIndex: 1,
	            label: {
	                normal: {
	                    show: false,
	                }
	            },
	        data:growth,// [2109,2236,1325,939,507,2576,1722]
	    }]
	};

	bottomRightChart.setOption(bottomRightOption);
}

var ztShow = new ZtShow();




/* 
 * 
 * 
 */ 




/*
 * 
 */


