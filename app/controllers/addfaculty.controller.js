// const e = require("express");

(function() {
    'use strict';
    angular
        .module('app')
        .controller('addfacc', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name ==  "Add faculty"){
                function refresh() {
                    // body...
                    userService.getfac().then(function(res){
                    $scope.facdata=res.data;
                  }).catch(function(err){
                    console.log(err);
                  })    
                }
                //excel test
                $scope.SelectFile = function (file) {
                    $scope.SelectedFile = file;
                };
                $scope.Upload = function () {
                    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.xls|.xlsx)$/;
                    if (regex.test($scope.SelectedFile.name.toLowerCase())) {
                        if (typeof (FileReader) != "undefined") {
                            var reader = new FileReader();
                            //For Browsers other than IE.
                            if (reader.readAsBinaryString) {
                                reader.onload = function (e) {
                                    $scope.ProcessExcel(e.target.result);
                                };
                                reader.readAsBinaryString($scope.SelectedFile);
                            } else {
                                //For IE Browser.
                                reader.onload = function (e) {
                                    var data = "";
                                    var bytes = new Uint8Array(e.target.result);
                                    for (var i = 0; i < bytes.byteLength; i++) {
                                        data += String.fromCharCode(bytes[i]);
                                    }
                                    $scope.ProcessExcel(data);
                                };
                                reader.readAsArrayBuffer($scope.SelectedFile);
                            }
                        } else {
                            $window.alert("This browser does not support HTML5.");
                        }
                    } else {
                        $window.alert("Please upload a valid Excel file.");
                    }
                };
         
                $scope.ProcessExcel = function (data) {
                    //Read the Excel File data.
                    var workbook = XLSX.read(data, {
                        type: 'binary'
                    });
                    var firstSheet = workbook.SheetNames[0];
                    console.log(workbook);
                    var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);
                    console.log(excelRows);
                };
                //
                $scope.editfaculty=function(item){
                    if(item.editname || item.editabbr){
                        var detail={
                            id:item
                        }
                            userService.changefacname(detail).then(function(res){
                                refresh();
                            }).catch(function(err){
                                console.log(err);
                            })
                    }else{
                        alert("Fill any field");
                    }
                }
                $scope.addfaculty=function(item,facdata){
                    var ob=facdata.find(o=>o.name===item.name);
                    if(ob){
                        alert("faculty already exists");
                    }else{
                        userService.addfaculty(item).then(function(res){
                        item.dept=null;
                        item.abbr=null;
                        item.name=null;
                    }).catch(function(err){
                        console.log(err);
                    });
                    // userService.getfac().then(function(res){
                    //     $scope.facdata=res.data;
                    //   }).catch(function(err){
                    //     console.log(err);
                    //   })
                    refresh();    
                    }
                    
                }
                $scope.change=function(item){
                    var details=item;
                    userService.active(details).then(function(res){

                    }).catch(function(err){
                        console.log(err);
                    });
                    userService.getfac().then(function(res){
                        $scope.facdata=res.data;
                    }).catch(function(err){
                        console.log(err);
                    })
                }
                $scope.delete=function(item){
                    var details=item;
                    userService.deletefac(details).then(function(res){

                    }).catch(function(err){
                        console.log(err);
                    })
                }
                $scope.check=function(item){
                    if(item.active!=0){
                        item.Status="Active";
                    }else{
                        item.Status="Inactive";
                    }
                }
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
            // else if($state.current.name){
            //     console.log("vjkhdjkdhf")
            // }
        }else{
            $state.go("login");
        }
    }
})();