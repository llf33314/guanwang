/**
 * service
 */
goodtomApp.service("case1Service",function($http){
    return{
        getcaseListByTerm:function(param, $scope){
                    $http({
                      method : 'POST',
                      url : 'http://www.duofriend.com/caseCenter/html/htmlList',
                      data: $.param(param),
                     async: false,
                    headers : {
                    'Content-Type' : 'application/x-www-form-urlencoded'
                }
            }).success(function(data) {
                    if(data.status > 0){
                        $scope.caseList = data.data;
                        $scope.ss = $scope.caseList[0].cases;
                        $scope.case3 = $scope.ss[0];
                        $scope.busproList = $scope.ss[0].buspro;
                        console.log($scope.busproList);
                        // console.log( $scope.caseList[0].cases);
                        var id=window.setTimeout(hello,3000);
                        function hello(){
                           $("#aaa").val(1);
                            window.clearTimeout(id);
                        }
                    }else {
                        alert("系统错误，请尝试刷新页面或重新登录，若还有问题，请联系我们！");
                    }
                    // if(!data.success){
                    //     parent.parent.alertMsg("系统错误，请尝试刷新页面或重新登录，若还有问题，请联系我们！");
                    // }else{
                    //     console.log(data.message);
                    //     var result = eval('('+data.message+')');
                    //     $scope.luckyDrawActivityList = result.list;
                    //     $scope.luckyDrawActivityListParam.pageNum = result.pageNum;
                    //     $scope.luckyDrawActivityListParam.totalNum = result.totalNum;
                    // }
                });
            },

    }
});
