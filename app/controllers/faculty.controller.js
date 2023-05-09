(function() {
    'use strict';
    angular
        .module('app')
        .controller('faculty', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name == "faculty"){
                console.log("Faculty")
                // $scope.editfacultyname=function(item){
                //     console.log(item)
                //     var data={
                //         id:item
                //     };
                //     userService.changefacname(data).then(function(res){
                //         userService.getfac().then(function(res){
                //             $scope.facdata=res.data;
                //           }).catch(function(err){
                //             console.log(err);
                //           })
                //     }).catch(function(err){
                //         console.log(err);
                //     })
                // }
                // $scope.editfaculty=function(facdetails){
                //     console.log("hiii");
                //     console.log(facdetails);
                // }
                $scope.test=function(item){
                    console.log(item);
                }
                $scope.viewfaculty=function(item){
                    var data={
                        id:item,
                    }
                    
                    //charan
                 $scope.facinfo;
                  userService.personalfaculty(data).then(function(res){
                    console.log(res.data);
                    $scope.facinfo=res.data;
                  }).catch(function(err)
                  {
                    console.log(err);
                  })
                    

                  //charanend
                }
                $scope.viewfaculty($rootScope.User.userId);
                var data={id:$rootScope.User.userId};
                userService.viewfac(data).then(function(res){
                    $scope.details=res.data;
                    console.log(res.data);
                }).catch(function(err){
                    console.log(err);
                })
                userService.custom().then(function(res){
                    $scope.data=res.data.data;
                }).catch(function(err){
                    console.log(err)
                });
                userService.getfac().then(function(res){
                    $scope.facdata=res.data;
                  }).catch(function(err){
                    console.log(err);
                  })
                  
            }
        }else{
            $state.go("login");
        }
    }
})();