(function() {
    'use strict';
    angular
        .module('app')
        .factory('Excel',function($window){
            var uri='data:application/vnd.ms-excel;base64,',
                template='<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',
                base64=function(s){return $window.btoa(unescape(encodeURIComponent(s)));},
                format=function(s,c){return s.replace(/{(\w+)}/g,function(m,p){return c[p];})};
            return {
                tableToExcel:function(tableId,worksheetName){
                    var table=$(tableId),
                        ctx={worksheet:worksheetName,table:table.html()},
                        href=uri+base64(format(template,ctx));
                    return href;
                }
            };
        })
        .controller('Deptschedule', Controller);
    Controller.$inject = ['$timeout','$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window','Excel'];
    
    function Controller($timeout,$scope, $rootScope, userService, $state, $stateParams, $localStorage,$window,Excel) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name == "Dept schedule"){
                userService.custom().then(function(res){
                    $scope.data=res.data;
                }).catch(function(err){
                    console.log(err);
                })
                //excel
                $scope.exportToExcel=function(tableId){ // ex: '#my-table'
                    var exportHref=Excel.tableToExcel(tableId,'WireWorkbenchDataExport');
                    $timeout(function(){location.href=exportHref;},100); // trigger download
                }
                //
                $scope.getinfo=function(item){
                    $scope.deptfaculty=[];
                    userService.getfacname().then(function(res){
                        $scope.facname=res.data;
                        res.data.forEach(element => {
                            if(element.department==item){
                                var data={
                                    id:element.id,
                                }
                              userService.personalfaculty(data).then(function(res){
                                console.log(res.data);
                                $scope.deptfaculty.push(res.data);
                              }).catch(function(err)
                              {
                                console.log(err);
                              })
                            }
                        });
                    }).catch(function(err){
                        console.log(err)
                    })
                }
            }
        }else{
            $state.go("login");
        }
    }
})();
