//'use strict';
/* Directives */
var goodtomApp = angular.module('goodtomApp',[]); 

// 相差天数
goodtomApp.filter('dateDiffer',function(){   
    return function(time){       
    	return parseInt(Math.abs(time)  /  1000  /  60  /  60  /24);     
     }
});  
