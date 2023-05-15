(function() {
    'use strict';

    angular
        .module('app')
        .controller('fagController', Controller);

    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];

    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
    if($state.current.name ==  "timetable"){
        // $window.onbeforeunload =  $state.go("logout");
        //   $window.onhashchange= $state.go("logout") ;
        $rootScope.time=(new Date().getHours());
        // console.log($rootScope.time);
        $scope.weekreport=function(item1){
              var details={
                id:item1
            }
            $rootScope.week=details;
            $rootScope.week.set=true;
            $state.go("customsearch");

        }
       var test;
       $scope.finaldata=[];
       userService.timetable($rootScope.selected).then(function(res) { 

           $scope.timetabledata=res.data;
           console.log($scope.timetabledata)
           $scope.timetabledata.data.forEach((element,index)=> {
               var data =$rootScope.selected;
               var datas={ data,  course:$scope.timetabledata.data[index]}
               console.log(datas);
               userService.gettableh(datas).then(function(res){
                   $scope.tabledata=res.data;
                    (res.data.theory.length>0 || res.data.lab.length>0)?$scope.tabledata.check=true:$scope.tabledata.check=false;
                   $scope.finaldata.push($scope.tabledata);

               }).catch(function(err){
                   console.log(err);
                 //  errorMessage(err);
              }); 
           });
        //    console.log($scope.finaldata);
          
           
      }).catch(function(err){
          console.log(err);
        //  errorMessage(err);
     }); 
     $scope.generatePDFbill = function(){
        console.log("entrered")
        html2canvas(document.getElementById('export'), {
          onrendered: function (canvas) {
            var data = canvas.toDataURL();
            var docDefinition = {
              pageOrientation:'landscape',
              content: [{
                image: data,
                width: 800,
                height:500,
               
              }]
            };
            pdfMake.createPdf(docDefinition).download("test.pdf");
          }
        });
      }
      $scope.seggregate=function(item){
              
        //
        if(item.p1==item.p2&&item.p2==item.p3&&item.p3==item.p4 && item.p4!=item.p5){
            item.p1b=true;
            item.p1col=4;
            item.p2b=false;
            item.p3b=false;
            item.p4b=false;
            item.p5b=true;
            item.p5col=1;
            item.p1t=[8,12];
            item.p5t=[12,13];
            // console.log(14,item)
        }
        if(item.p1==item.p2&&item.p2==item.p3&&item.p3==item.p4 && item.p4==item.p5 ){
          item.p1b=true;
          item.p1col=5;
          item.p2b=false;
          item.p3b=false;
          item.p4b=false;
          item.p5b=false;
          item.p1t=[8,13]
          // console.log(14,item)
      }
        //
        //
        if(item.p1==item.p2&&item.p2==item.p3&&item.p3!=item.p4  && item.p4!=item.p5){
            item.p1b=true;
            item.p1col=3;
            item.p2b=false;
            item.p3b=false;
            item.p4b=true;
            item.p4col=1;
            item.p5b=true;
            item.p5col=1;
            item.p1t=[8,11];
            item.p4t=[11,12];
            item.p5t=[12,13];
            console.log(31,item)
          }
          if(item.p1==item.p2&&item.p2==item.p3&&item.p3!=item.p4  && item.p4==item.p5){
            item.p1b=true;
            item.p1col=3;
            item.p2b=false;
            item.p3b=false;
            item.p4b=true;
            item.p4col=2;
            item.p1t=[8,11];
            item.p4t=[11,13];
            console.log(31,item)
          }
          //
          //
        if(item.p1==item.p2&&item.p2!=item.p3&&item.p3!=item.p4 && item.p4!=item.p5){
            item.p1b=true;
            item.p1col=2;
            item.p2b=false;
            item.p3b=true;
            item.p3col=1;
            item.p4b=true;
            item.p4col=1;
            item.p5b=true;
            item.p5col=1;
            item.p1t=[8,10];
            item.p3t=[10,11];
            item.p4t=[11,12];
            item.p5t=[12,13];
            // console.log("211",item)
        }
        if(item.p1==item.p2&&item.p2!=item.p3&&item.p3!=item.p4 && item.p4==item.p5){
          item.p1b=true;
          item.p1col=2;
          item.p2b=false;
          item.p3b=true;
          item.p3col=1;
          item.p4b=true;
          item.p4col=2;
          item.p1t=[8,10];
          item.p3t=[10,11];
          item.p4t=[11,13];
          // item.p5t=[12,13];
          // console.log("211",item)
      }
        //
        //
        if(item.p1!=item.p2&&item.p2==item.p3&&item.p3!=item.p4 && item.p4!=item.p5){
            item.p1b=true;
            item.p1col=1;
            item.p2b=true;
            item.p2col=2;
            item.p3b=false;
            item.p4b=true;
            item.p4col=1;
            item.p5b=true;
            item.p5col=1;
            item.p1t=[8,9];
            item.p2t=[9,11];
            item.p4t=[11,12];
            item.p5t=[12,13];
            // console.log(121,item)
        }
        if(item.p1!=item.p2&&item.p2==item.p3&&item.p3!=item.p4 && item.p4==item.p5 ){
          item.p1b=true;
          item.p1col=1;
          item.p2b=true;
          item.p2col=2;
          item.p3b=false;
          item.p4b=true;
          item.p4col=2;
          item.p1t=[8,9];
          item.p2t=[9,11];
          item.p4t=[11,13];
          console.log(121,item)
      }
        //
        //
        if(item.p1!=item.p2&&item.p2==item.p3&&item.p3==item.p4 && item.p4!=item.p5 ){
            item.p1b=true;
            item.p1col=1;
            item.p2b=true;
            item.p2col=3;
            item.p3b=false;
            item.p4b=false;
            item.p5b=true;
            item.p5col=1;
            item.p1t=[8,9];
            item.p2t=[9,12];
            item.p5t=[12,13];
        }
        if(item.p1!=item.p2&&item.p2==item.p3&&item.p3==item.p4 && item.p4==item.p5 ){
          item.p1b=true;
          item.p1col=1;
          item.p2b=true;
          item.p2col=4;
          item.p3b=false;
          item.p4b=false;
          item.p1t=[8,9];
          item.p2t=[9,13];
      }
        //
        //
        if(item.p1==item.p2&&item.p2!=item.p3&&item.p3==item.p4 && item.p4!=item.p5 ){
            item.p1b=true;
            item.p1col=2;
            item.p2b=false;
            item.p3b=true;
            item.p3col=2;
            item.p4b=false;
            item.p5=true;
            item.p5col=1;
            item.p1t=[8,10];
            item.p3t=[10,12];
            item.p5t=[12,13];
            // console.log(22,item)
        }
        if(item.p1==item.p2&&item.p2!=item.p3&&item.p3==item.p4 && item.p4==item.p5){
          item.p1b=true;
          item.p1col=2;
          item.p2b=false;
          item.p3b=true;
          item.p3col=2;
          item.p4b=false;
          item.p5b=false;
          item.p1t=[8,10];
          item.p3t=[10,13];
          // console.log(22,item)
      }
        //
        //all are different
        if(item.p1!=item.p2&&item.p2!=item.p3&&item.p3!=item.p4 && item.p4!=item.p5){
            item.p1b=true;
            item.p1col=1;
            item.p2b=true;
            item.p2col=1;
            item.p3b=true;
            item.p3col=1;
            item.p4b=true;
            item.p4col=1;
            item.p5col=1;
            item.p5b=true;
            item.p1t=[8,9];
            item.p2t=[9,10];
            item.p3t=[10,11];
            item.p4t=[11,12];
            item.p5t=[12,13];
            console.log(11111,item)
        }
        //
        if(item.p1!=item.p2&&item.p2!=item.p3&&item.p3==item.p4 && item.p4!=item.p5){
          item.p1b=true;
          item.p1col=1;
          item.p2b=true;
          item.p2col=1;
          item.p3b=true;
          item.p3col=2;
          item.p4b=false;
          item.p5b=true;
          item.p5col=1;
          item.p1t=[8,9];
          item.p2t=[9,10];
          item.p3t=[10,12];
          item.p5t=[12,13];
        
        }
        if(item.p1!=item.p2&&item.p2!=item.p3&&item.p3==item.p4 && item.p4==item.p5){
          item.p1b=true;
          item.p1col=1;
          item.p2b=true;
          item.p2col=1;
          item.p3b=true;
          item.p3col=3;
          item.p4b=false;
          item.p5b=false;
          item.p1t=[8,9];
          item.p2t=[9,10];
          item.p3t=[10,13];
        }

        //
        //
        if(item.p7==item.p8&&item.p8==item.p9 && item.p10==item.p9){
          item.p7b=true;
          item.p7col=4;
          item.p8b=false;
          item.p9b=false;
          item.p10b=false;
          item.p7t=[14,18];
      }
      if(item.p7==item.p8&&item.p8==item.p9 && item.p10!=item.p9){
        item.p7b=true;
        item.p7col=3;
        item.p8b=false;
        item.p9b=false;
        item.p10b=true;
        item.p10col=1
        item.p7t=[14,17];
        item.p10t=[17,18];

    }
        //
        //
        if(item.p7==item.p8&&item.p8!=item.p9 && item.p10!=item.p9){
            item.p7b=true;
            item.p7col=2;
            item.p8b=false;
            item.p9b=true;
            item.p9col=1;
            item.p10b=true;
            item.p10col=1;
            item.p7t=[14,16];
            item.p9t=[16,17];
            item.p10t=[17,18];
        }
        if(item.p7==item.p8&&item.p8!=item.p9 && item.p10==item.p9){
          item.p7b=true;
          item.p7col=2;
          item.p8b=false;
          item.p9b=true;
          item.p9col=2;
          item.p7t=[14,16];
          item.p9t=[16,18];
      }
        //
        //
        if(item.p7!=item.p8&&item.p8==item.p9 && item.p10!=item.p9){
            item.p7b=true;
            item.p7col=1;
            item.p8b=true;
            item.p8col=2;
            item.p9b=false;
            item.p10b=true;
            item.p10col=1;
            item.p7t=[14,15];
            item.p8t=[15,17];
            item.p8t=[15,18];
        }
        if(item.p7!=item.p8&&item.p8==item.p9 && item.p10==item.p9){
          item.p7b=true;
          item.p7col=1;
          item.p8b=true;
          item.p8col=3;
          item.p9b=false;
          item.p10b=false;
          item.p7t=[14,15];
          item.p8t=[15,18];
          
      }
        //
        //
        if(item.p7!=item.p8&&item.p8!=item.p9 && item.p10!=item.p9){
            item.p7b=true;
            item.p7col=1;
            item.p8b=true;
            item.p8col=1;
            item.p9b=true;
            item.p9col=1;
            item.p10b=true;
            item.p10col=1;
            item.p7t=[14,15];
            item.p8t=[15,16];
            item.p9t=[16,17];
            item.p10t=[17,18];
        }
        if(item.p7!=item.p8&&item.p8!=item.p9 && item.p10==item.p9){
          item.p7b=true;
          item.p7col=1;
          item.p8b=true;
          item.p8col=1;
          item.p9b=true;
          item.p9col=2;
          item.p7t=[14,15];
          item.p8t=[15,16];
          item.p9t=[16,18];
      }
        //
       }
        userService.getdept().then(function(res) { 

            $scope.deptdata=res.data;
            // console.log($scope.deptdata);


       }).catch(function(err){
           console.log(err);
         //  errorMessage(err);
      }); 
        $scope.gettimebydept=function(details,day){
            if(day){
                if(details){
                    $scope.finaldata=[];
                    userService.timetable(details).then(function(res) { 
        
                        $scope.timetabledata=res.data;
                        console.log($scope.timetabledata)
                        $scope.timetabledata.data.forEach((element,index)=> {
                            var data =JSON.parse(details);
                            var datas={ data,  course:$scope.timetabledata.data[index],day:day}
                            userService.gettableh(datas).then(function(res){
                                $scope.tabledata=res.data;
                                // console.log($scope.tabledata);
                                $scope.finaldata.push($scope.tabledata);
        
                            }).catch(function(err){
                                console.log(err);
                              //  errorMessage(err);
                           }); 
                        });
                        // console.log($scope.finaldata);
                       
                        
                   }).catch(function(err){
                       console.log(err);
                     //  errorMessage(err);
                  }); 
                }else{
                    $scope.finaldata=[];
                    userService.timetable($rootScope.selected).then(function(res) { 
        
                        $scope.timetabledata=res.data;
                        console.log($scope.timetabledata)
                        $scope.timetabledata.data.forEach((element,index)=> {
                            var data =$rootScope.selected;
                            var datas={ data,  course:$scope.timetabledata.data[index] , day:day}
                            userService.gettableh(datas).then(function(res){
                                $scope.tabledata=res.data;
                                // console.log($scope.tabledata);
                                $scope.finaldata.push($scope.tabledata);
        
                            }).catch(function(err){
                                console.log(err);
                              //  errorMessage(err);
                           }); 
                        });
                        // console.log($scope.finaldata);
                       
                        
                   }).catch(function(err){
                       console.log(err);
                     //  errorMessage(err);
                  }); 
                }
            }else{
                $scope.finaldata=[];
                userService.timetable(details).then(function(res) { 
    
                    $scope.timetabledata=res.data;
                    console.log($scope.timetabledata)
                    $scope.timetabledata.data.forEach((element,index)=> {
                        var data =JSON.parse(details);
                        var datas={ data,  course:$scope.timetabledata.data[index]}
                        userService.gettableh(datas).then(function(res){
                            $scope.tabledata=res.data;
                            // console.log($scope.tabledata);
                            $scope.finaldata.push($scope.tabledata);
    
                        }).catch(function(err){
                            console.log(err);
                          //  errorMessage(err);
                       }); 
                    });
                    // console.log($scope.finaldata);
                   
                    
               }).catch(function(err){
                   console.log(err);
                 //  errorMessage(err);
              }); 
            }
           
        
   
        

         
        }
      

        
        





// }











}
}
})();