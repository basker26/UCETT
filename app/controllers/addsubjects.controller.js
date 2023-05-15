// const { element } = require("angular");

(function() {
    'use strict';
    angular
        .module('app')
        .controller('addsub', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name ==  "Add subjects"){
                //excel subjects
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
                    $scope.dummy;
                    var workbook = XLSX.read(data, {
                        type: 'binary'
                    });
                    var firstSheet = workbook.SheetNames[0];
                    console.log(workbook);
                    var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);
                    console.log(excelRows);
                    var details={
                        data:excelRows,
                        id:$scope.dept.sem
                    }
                    userService.excelsub(details).then(function(res){
                        $scope.dummy=res.data;
                        alert(res.message);
                        var item={
                            id:$scope.dept.sem
                        }
                        userService.getsubjects(item).then(function(res){
                            $scope.subjects=res.data;
                            $scope.subjects.forEach(element => {
                                if(element.active==1){
                                    element.active=true;
                                }else{
                                    element.active=false;
                                }
                            });
                        }).catch(function(err){
                            console.log(err);
                        })
                    }).catch(function(err){
                        console.log(err);
                    })
                };
                //
                $scope.addsub=false;
                $scope.visible=true;
                $scope.edit=false;
                $scope.sublist=[];
                $scope.sub1=function(item,item1){
                    console.log(item);
                    // if(item.block==1)
                    var detail={
                        data:item,
                        sem:item1
                    }
                    userService.addsubjecti(detail).then(function(res){
                        $scope.subjects=res.data;
                        console.log(res.data);
                    }).catch(function(err){
                        console.log(err);
                    })
                }
                $scope.deletesubject=function(item,item2){
                    var detail={
                        id:item,
                        sem:item2
                    }
                    userService.deletesubject(detail).then(function(res){
                        $scope.subjects=res.data;
                    }).catch(function(err){
                        console.log(err);
                    })
                }
                $scope.editsub=function(item,item2){
                    console.log(item.a,item.active);
                    if((item.a && (item.a!=item.active)) || item.subname || item.subabr){
                        var detail={
                                id:item,
                                sem:item2
                            }
                            userService.editsubject(detail).then(function(res){
                                $scope.subjects=res.data;
                            }).catch(function(err){
                                console.log(err);
                            })
                    }else{
                        alert("Nothing is there to change");
                    }
                    // if(item.sub_name!=item.subname || item.sub_abbr!=item.subabr || item.active!=item.a){
                    //     console.log(item);
                    // }
                    // var detail={
                    //     id:item,
                    //     sem:item2
                    // }
                    // userService.editsubject(detail).then(function(res){
                    //     $scope.subjects=res.data;
                    // }).catch(function(err){
                    //     console.log(err);
                    // })
    
                }
                $scope.editsubjects=function(item){
                    $scope.visible=false;
                    $scope.addsub=false;
                    $scope.edit=true;
                    console.log(item);
                    var details={
                        id:item.sem
                    }
                    userService.getsubjects(details).then(function(res){
                        $scope.subjects=res.data;
                        $scope.subjects.forEach(element => {
                            if(element.active==1){
                                element.active=true;
                            }else{
                                element.active=false;
                            }
                        });
                    }).catch(function(err){
                        console.log(err);
                    })
                }
                $scope.addsubjects=function(item){
                    $scope.visible=false;
                    $scope.addsub=true;
                }
                $scope.addsubject=function(item){
                        var details=item;
                        if(!$scope.sublist.find((element)=>element.name1==item.name1 && element.type==item.type && element.block==item.block)){
                            $scope.sublist.push(details);
                             $scope.sub=null;
                        } else{
                            alert("Its exists");
                        }      
                        
                }
                $scope.confirm=function(item,dept){
                    if($scope.sublist.length>0){
                        console.log($scope.sublist);
                        var details={
                            data:$scope.sublist,
                            id:dept
                        }
                        userService.addsubject(details).then(function(res){
                            $state.go("home");
                        }).catch(function(err){
                            console.log(err)
                        })
                    }else{
                        alert("please insert data");
                    }
                }
                $scope.deletesub=function(item){
                    $scope.sublist.splice(item,1);
                }
                userService.custom().then(function(res){
                    $scope.data=res.data;
                }).catch(function(err){
                    console.log(err)
                });
            }
        }else{
            $state.go("login");
        }
    }
})();