var app = angular.module('myApp',[]);

app.controller('GetAllGamesCtrl', function ($scope, $http) {
    $http.post("/AngularData/Game.asmx/Get_Games")
    .then(function (response) {
        $scope.mytbl = response.data;
    });
});
/*
app.filter('unique', function () {
    return function (arr, field) {
        return _.uniq(arr, function (a) { return a[field]; });
    };
});
*/
app.controller('GetGameCtrl2', function ($scope, $http) {
    var tbl;

    $http.get("/AngularData/Game.asmx/Get_Game?gameid=9")
    .success(function (response) {
        $scope.mytbl = response.data;
    })
    .error(function (data, status) {
        console.error('Repos error', status, data);
    })
    .finally(function () {
        console.log("finally finished repos");
    });

});

app.controller('GetGameInfoCtrl', function ($scope, $http) {
    var str = (new URL(location.href).searchParams).get('id');
    $scope.data = {};
    /*GET TYPE*/
    $http.get("/AngularData/Game.asmx/Get_Game?id=" + str)
        .then(function (response) {
            $scope.mytbl = response.data;
        });
});


app.controller('GetInfoCtrl', function ($scope, $http, $timeout) {
    $scope.data = {};
    $scope.getData = function(){
        $http.post("/AngularData").then(function (response) {
            $scope.tbl2 = response.data;
        });
    };
   
    // Function to replicate setInterval using $timeout service.
    $scope.intervalFunction = function () {
        $timeout(function () {
            $scope.getData();
            $scope.intervalFunction();
        }, 1000)
    };

    // Kick off the interval
    $scope.intervalFunction();

   
});

/** split long text to paragraph */
angular.module('myApp').
    filter('nlToArray', function () {
        return function (text) {
            return text.split('\n');
        };
    });

