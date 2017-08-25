goodtomApp.controller('case1Controller', ['$scope', '$http', 'case1Service', case1Controller])

function case1Controller($scope, $http, case1Service) {
    $scope.caseList = [];
    $scope.case2=[];
    $scope.params = {};
    $scope.busproList = []
    case1Service.getcaseListByTerm( $scope.params, $scope);

}

/** jQuery 工具 */
function audioAutoPlay(id){
    var audio = document.getElementById(id);
    if(audio != null){
        audio.play();
    }
}
