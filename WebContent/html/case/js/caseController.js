goodtomApp.controller('case1Controller', ['$scope', '$http', 'case1Service', case1Controller])

function case1Controller($scope, $http, case1Service) {
    var type = 0;
    $scope.caseList = [];
    $scope.case2=[];
    $scope.case3 =null;
    $scope.case4 =null;
    $scope.case5 =null;
    $scope.params = {};
    $scope.busproList = []
    case1Service.getcaseListByTerm( $scope.params, $scope);
    $scope.imgList = [];
    $scope.chuliImg = function (showpix) {
        $scope.imgList = showpix.split("(#)");
        return $scope.imgList;
    }
    $scope.updateCase =function (case6) {
        $scope.case3 =case6;
        $scope.busproList = $scope.case3.buspro;
        type = 0;
    }
    $scope.locationCase= function(name){
        $scope.findHs = $(".a-case-ex-h2");
        for(var i=0 ; i < $scope.findHs.length ; i++){
            if(i==name){
                if(type > 0){
                    scrollTo(0,$($scope.findHs[i]).position().top-40);
                }else {
                    scrollTo(0,$($scope.findHs[i]).position().top-125);
                    type = 1;
                }
           }
        }
    }
}

/** jQuery 工具 */
function audioAutoPlay(id){
    var audio = document.getElementById(id);
    if(audio != null){
        audio.play();
    }
}
