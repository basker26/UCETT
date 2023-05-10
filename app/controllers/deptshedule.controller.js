(function() {
    'use strict';
    angular
        .module('app')
        .controller('Deptschedule', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name == "Dept schedule"){
                // $scope.deptfaculty=[];
                userService.custom().then(function(res){
                    $scope.data=res.data;
                }).catch(function(err){
                    console.log(err);
                })
                //excel
                $scope.exportdoc=function(){
                    if (!$window.Blob) {
                      alert('Your legacy browser does not support this action.');
                      return;
                   }    
                   var link; 
             var blob, url, css;            
                   var html=angular.element(document.querySelector('#export'))[0].outerHTML;
                   var header = "<html xmlns:o='urn:schemas-microsoft-com:office:office' " +
                   "xmlns:w='urn:schemas-microsoft-com:office:word' " +
                   "xmlns='http://www.w3.org/TR/REC-html40'>" +
                   "<head><meta charset='utf-8'><title>Export Table to Word</title>"+
                   '</head><body>';
                var footer = "</body></html>";
                var sourceHTML = header +"<table>"+ html  +"</table>" +footer;

             css = (
                '<style>' +
                '@page WordSection1{size: 841.95pt 595.35pt;mso-page-orientation: landscape;}' +
                'div.WordSection1 {page: WordSection1;}' +
                'table{width:24cm;}td{border:1px black solid;width:5em;padding:2px;}'+
                '</style>'
                );
                    blob = new Blob([css+sourceHTML], {
                    type: "application/msword",
        
                });
        
                // saveAs(blob, "Report.xls");
                url = URL.createObjectURL(blob);
             link = document.createElement('A');
              link.href = url;
              // Set default file name. 
              // Word will append file extension - do not add an extension here.
              link.download = 'Document';   
              // $scope.upload(link);
              document.body.appendChild(link);
              if (navigator.msSaveOrOpenBlob ) navigator.msSaveOrOpenBlob( blob, 'Document.doc'); // IE10-11
                  else link.click();  // other browsers
              document.body.removeChild(link);
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