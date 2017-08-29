goodtomApp.controller('case1Controller', ['$scope', '$http', 'case1Service', case1Controller])

function case1Controller($scope, $http, case1Service) {
    var type = 0;
    $scope.index = 0 ;
    $scope.caseList = [ ];
    $scope.case2=[];
    $scope.case3 =null;
    $scope.case4 =null;
    $scope.case5 =null;
    $scope.params = {};
    $scope.busproList = [];
    $scope.case1List = [];
    case1Service.getcaseListByTerm( $scope.params, $scope);
    $scope.imgList = [];
    $scope.chuliImg = function (showpix) {
        $scope.imgList = showpix.split("(#)");
        return $scope.imgList;
    }
    $scope.updateCase =function (case6) {
        $scope.case3 =case6;
        $scope.busproList = $scope.case3.buspro;
        for(var i=0 ; i < $scope.case1List.length ; i++){
            if($scope.case1List[i].casedesc == case6.casedesc){
                $scope.case4 =$scope.case1List[i-1];
                $scope.case5 =$scope.case1List[i+1];
            }
        }
        type = 0;
    }
    $scope.locationCase= function(name,add){
        $(add).attr("class","a-case-customer-txt");
        $scope.findHs = $(".a-case-ex-h2");
        for(var i=0 ; i < $scope.findHs.length ; i++){
            if(i==name){
                if(type > 0){
                    scrollTo(0,$($scope.findHs[i]).position().top-40);
                }else {
                    scrollTo(0,$($scope.findHs[i]).position().top-90);
                    type = 1;
                }
           }
        }
    };
    $scope.lastPage = function (i){
        if($scope.case1List.length > 1 && i > -1){
            $scope.case3 = $scope.case1List[i];
            $scope.case4 = $scope.case1List[i-1];
            $scope.case5 = $scope.case1List[i+1];
            $scope.busproList =  $scope.case3.buspro;
            console.log($scope.case3);
            console.log($scope.case4);
            console.log($scope.case5);
            $scope.index =  $scope.index-1;
        }
    };
    $scope.nextPage = function (i){
        $scope.index =  $scope.index+1;
            $scope.case3 = $scope.case1List[i];
            $scope.case4 = $scope.case1List[i-1];
            $scope.case5 = $scope.case1List[i+1];
            $scope.busproList =  $scope.case3.buspro;
            console.log($scope.case3);
            console.log($scope.case4);
            console.log($scope.case5);
    };
    $scope.onAAA = function () {
        $("body").show();
    }
}

/** jQuery 工具 */
function audioAutoPlay(id){
    var audio = document.getElementById(id);
    if(audio != null){
        audio.play();
    }
}
