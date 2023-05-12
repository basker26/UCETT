
(function() {
    'use strict';
    angular
        .module('app')
        .controller('Openelectives', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name ==  "Open electives"){
                $('.selected-items-box').bind('click', function(e) {
                    $('.wrapper .list').slideToggle('fast');
                });
                // $timeout(function() { 
                $(document).ready(function() {
                    $('s#example-getting-started').multiselect();
                })
                $scope.info;
                $scope.dept={
                    grad:null,
                    sem:null,
                    oe:null
                };
                $scope.oe=['OE-I','OE-II','OE-III','OE-IV','OE-V','OE-VI','OE-VII'];
                $scope.sem=[1,2,3,4,5,6,7,8];
                userService.getfacname().then(function(res){
                    $scope.facnames=res.data;
                    console.log($scope.facnames);
                }).catch(function(err){
                    console.log(err);
                })
                userService.custom().then(function(res){
                    $scope.info=res.data;
                    console.log($scope.info)
                }).catch(function(err){

                });
                function check(){
                    var t=0;
                    $scope.facnames.forEach(element => {
                        if(element.selected){
                            t++;
                        }
                    });
                    return t;
                }
                $scope.add=function(){
                    if($scope.dept.grad && $scope.dept.sem && $scope.dept.oe && check()>0){
                            var fac=[];
                            $scope.facnames.forEach(element=>{
                                if(element.selected){
                                    fac.push(element.id);
                                    element.selected=false;
                                }
                            })
                            var details={
                                name:$scope.dept.name,
                                abbr:$scope.dept.abbr,
                                grad:$scope.dept.grad,
                                sem:$scope.dept.sem,
                                elec:$scope.dept.oe,
                                faculty:fac
                            }
                            userService.addopenelectives(details).then(function(res){
                                alert("done");
                            }).catch(function(err){
                                console.log(err);
                            })
                    }else{
                        alert("review once");
                    }
                };
            }
        }else{
            $state.go("login");
        }
    }
})();