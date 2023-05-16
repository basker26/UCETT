(function() {
    'use strict';

    angular
        .module('app')
        .controller('hrcellController', Controller)
        ;

    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage', '$window','Upload'];

    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window,Upload) {

             if($state.current.name == "customsearch"){
              // screen.orientation.lock('landscape')
              $scope.glink;
              // $window.onbeforeunload  =  $scope.upload;
        // $window.onhashchange= $scope.upload;
              if($rootScope.week){
                if($rootScope.week){
                  console.log($rootScope.week);
                  // var data={
                    id:
                  // }
                  
                 userService.headfoot($rootScope.week).then((res)=>{
                  $scope.signs = res.data;
                  console.log($scope.signs);
                 }).catch((err)=>{
                    console.log(err);
                 })

                  userService.getweekrpt($rootScope.week).then(function(res){
                    $scope.weekdata=res.data;
                    console.log(res.data);

                        setTimeout(() => {
                          $scope.export(); 
                          }, 6000);
                    
                    // $rootScope.week.set=false;
                }).catch(function(err){
                  console.log(err);
                });
                }
                    
              }else if($localStorage.week){
                console.log($localStorage.week);
                userService.getweekrpt($localStorage.week).then(function(res){
                  $scope.weekdata=res.data;
                  // setTimeout(() => {
                    
                  // }, 120000);
                  // $scope.export();
                  // $scope.upload(); 
                  console.log(res.data);
               }).catch(function(err){
                 console.log(err);
               });
              }
            $scope.expfile;
            $scope.upload = function () {
              console.log("in upload function");
              setTimeout(function(){
              var html=angular.element(document.querySelector('#exportthis'))[0].innerHTML;
                  
                var data={
                data:html
              }
              userService.uploaddata(data).then(function(res){

              }).catch(function(err){
                console.log(err);
              })
              }, 500);
              var html=angular.element(document.querySelector('#exportthis'));
              var html1=angular.element(document.querySelector('#exportthis1'));
              var html2=angular.element(document.querySelector('#exportthis2'));
              var test=document.getElementById("#exportthis");

              
              var link; 
              var blob, url, css;
              var header = "<html xmlns:o='urn:schemas-microsoft-com:office:office' " +
                        "xmlns:w='urn:schemas-microsoft-com:office:word' " +
                        "xmlns='http://www.w3.org/TR/REC-html40'>" +
                        "<head><meta charset='utf-8'><title>Export Table to Word</title></head><body>";
              var footer = "</body></html>";
              var sourceHTML = header + "<table border='1' cellpadding='1' cellspacing='1'>" + html + "</table>" + "<table border='1' cellpadding='1' cellspacing='1'>" + html1 + "</table>"+"<table border='1' cellpadding='1' cellspacing='1'>" + html2 + "</table>"+footer;
              var data={
                data:test
              }
              userService.uploaddata(data).then(function(res){

              }).catch(function(err){
                console.log(err);
              })
            };

              userService.custom().then(function(res) { 
                     $scope.filterdata=res.data;
                     console.log($scope.filterdata);
              }).catch(function(err){
               console.log(err);
             //  errorMessage(err);
             }); 
             $scope.exportdoc=function(){
              if (!$window.Blob) {
                alert('Your legacy browser does not support this action.');
                return;
             }
          
             var letterhead=angular.element(document.querySelector('#letterhead'))[0].outerHTML;
             var letterfoot=angular.element(document.querySelector('#letterfoot'))[0].outerHTML;
             var html=angular.element(document.querySelector('#exportthis'))[0].outerHTML;
             var html1=angular.element(document.querySelector('#exportthis1'))[0].outerHTML;
             var html2=angular.element(document.querySelector('#exportthis2'))[0].outerHTML;


             
             var link; 
             var blob, url, css;
             var header = "<html xmlns:o='urn:schemas-microsoft-com:office:office' " +
                       "xmlns:w='urn:schemas-microsoft-com:office:word' " +
                       "xmlns='http://www.w3.org/TR/REC-html40'>" +
                       "<head><meta charset='utf-8'><title>Export Table to Word</title>"+
                       '</head><body>';
             var footer = "</body></html>";
             var sourceHTML = header +letterhead+"<table>"+ html  +"</table>" + "<table>" + html1 +"</table>"+"<table>" +  html2 +"</table>"+letterfoot+footer;

             css = (
               '<style>' +
               '@page WordSection1{size: 841.95pt 595.35pt;mso-page-orientation: landscape;}' +
               'div.WordSection1 {page: WordSection1;}' +
               'table{width:24cm;}td{border:1px black solid;width:5em;padding:2px;}'+
               '</style>'
             );
             link;
             // html = angular.element(document.querySelector('#exportthis'))[0].innerHTML;
             blob = new Blob([css+sourceHTML], {
               type: 'application/msword'
             });
             
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
             $scope.export = function() {
 
              if (!$window.Blob) {
                 alert('Your legacy browser does not support this action.');
                 return;
              }
           
              console.log("printing");

              var letterhead=angular.element(document.querySelector('#letterhead'))[0].innerHTML;
              var letterfoot=angular.element(document.querySelector('#letterfoot'))[0].innerHTML;
              var html=angular.element(document.querySelector('#exportthis'))[0].innerHTML;
              var html1=angular.element(document.querySelector('#exportthis1'))[0].innerHTML;
              var html2=angular.element(document.querySelector('#exportthis2'))[0].innerHTML;


              
              var link; 
              var blob, url, css;
              var header = "<html xmlns:o='urn:schemas-microsoft-com:office:office' " +
                        "xmlns:w='urn:schemas-microsoft-com:office:word' " +
                        "xmlns='http://www.w3.org/TR/REC-html40'>" +
                        "<head><meta charset='utf-8'><title>Export Table to Word</title></head><body>";
              var footer = "</body></html>";
              var sourceHTML = header +letterhead+ "<table border='1' cellpadding='1' cellspacing='1'>" + html + "</table>" + "<table border='1' cellpadding='1' cellspacing='1'>" + html1 + "</table>"+"<table border='1' cellpadding='1' cellspacing='1'>" + html2 + "</table>"+letterfoot+footer;
              var sourceHTML1 = header + "<table border='1' cellpadding='1' cellspacing='1'>" + html1 + "</table>" + footer;
              var sourceHTML2 = header + "<table border='1' cellpadding='1' cellspacing='1'>" + html2 + "</table>" + footer;

              // EU A4 use: size: 841.95pt 595.35pt;
              // US Letter use: size:11.0in 8.5in;
              
              css = (
                '<style>' +
                '@page WordSection1{size: 841.95pt 595.35pt;mso-page-orientation:landscape;}' +
                'div.WordSection1 {page: WordSection1;}' +
                'table{border-collapse:collapse;}td{border:1px gray solid;width:5em;padding:1px;}'+
                '</style>'
              );
              link
              // html = angular.element(document.querySelector('#exportthis'))[0].innerHTML;
              blob = new Blob([css+sourceHTML], {
                type: 'application/msword'
              });
              if($rootScope.upload){
                Upload.upload({
                  url: 'api/user/uploadfile',
                  data: {file: blob},
                  headers : {pid : $rootScope.week.id,fn:new Date()}
              }).then(function (resp) {
                  console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
                  $state.go("home");
              }, function (resp) {
                  console.log('Error status: ' + resp.status);
              }, function (evt) {
                  var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                  console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
              });
              $rootScope.upload=false;
              }
              
            };
            //  $scope.export = function(){
            //   // var divToPrint=document.getElementById("exportthis");
            //   // // var divToPrint = document.getElementById('SomeDivId');
            //   // var newWin = window.open('', 'Print-Window');
            //   // newWin.document.open();
            //   // newWin.document.write('<html><head>' + document.head.innerHTML + '</head><body onload="window.print();setTimeout(function(){window.close();}, 100);">' + divToPrint.innerHTML + '</body></html>'); newWin.document.close();
            //   html2canvas(document.getElementById('exportthis'), {
            //     onrendered: function (canvas) {
            //         var data = canvas.toDataURL();
            //         var docDefinition = {
            //             pageOrientation: 'landscape',
            //             content: [{
            //                image: data,
            //                   width: 750,
            //                   height: 400
            //             }]
            //         };
            //         pdfMake.createPdf(docDefinition).download("Score_Details.pdf");
            //     }
            // });
            // }
             $scope.seggregate=function(item){
              
              //
              if(item.p1==item.p2&&item.p2==item.p3&&item.p3==item.p4  && item.p4!=item.p5){
                  item.p1b=true;
                  item.p1col=4;
                  item.p2b=false;
                  item.p3b=false;
                  item.p4b=false;
                  item.p5b=true;
                  item.p5col=1;
                  item.p1t=[8,12];
                  item.p5t=[12,13];
                  console.log(14,item)
              }
              if(item.p1==item.p2&&item.p2==item.p3&&item.p3==item.p4  && item.p4==item.p5){
                item.p1b=true;
                item.p1col=5;
                item.p2b=false;
                item.p3b=false;
                item.p4b=false;
                item.p5b=false;
                item.p1t=[8,13]
                console.log(14,item)
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
                  console.log("211",item)
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
                console.log("211",item)
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
              console.log(item);
             }
             $scope.getweekrpt=function(details){
                 var detail={
                   id:details.sem
                 }
                 userService.getweekrpt(detail).then(function(res){
                    $scope.weekdata=res.data;
                    console.log($scope.weekdata)
                 }).catch(function(err){
                   console.log(err);
                 });


                 userService.headfoot(details).then((res)=>{
                  $scope.signs = res.data;
                  console.log($scope.signs);
                 }).catch((err)=>{
                    console.log(err);
                 })
             }
             }else
              if($state.current.name == "conreg"){
                  var array=[];
                  userService.test($rootScope.User).then(function(res) { 
      
                    $scope.test=res.data;
                    $scope.test.forEach(element => {
                      var arr = Object.entries(element);
                      array.push(arr);
                      
                    });
                  
                      //  $scope.segregate(array[0]);
                    
                    // console.log(array);
      
      
               }).catch(function(err){
                   console.log(err);
                 //  errorMessage(err);
              }); 
               $scope.segregate=function(item){
              if(item.p1==item.p2){
                if(item.p2==item.p3){
                  if(item.p3==item.p4){
                   item.p1b=true;
                   item.p1col=4;
                  //  console.log( item.p1b,item.p1col)
                  }else{
                    item.p1b=true;
                    item.p1col=3
                    item.p2b=false;
                    item.p3b=false;
                    // console.log(item.p1b,item.p1col,item.p2b,item.p3b);
                  }
                

                }else{ item.p1b=true;
                  item.p1col=2
                  item.p2b=false;
                  // console.log(item.p1col,item.p2b);
                  }
               

              } else{
                item.p1b=true;
                item.p1col=1;
                console.log(item.p1b,item.p1col);
              }
              if(item.p1col==1){
                if(item.p2==item.p3 && item.p1col==1){
                  // console.log(item.p1col);
                  if(item.p3==item.p4){
                    item.p2b=true;
                    item.p2col=3;
                    item.p3b=false;
                    item.p4b=false;
                    // console.log(item.p2b,item.p2col,item.p3b,item.p4b)
                  }else{   item.p2b=true;
                    item.p2col=2;
                    item.p3b=false;
                    // console.log(item.p2b,item.p2col,item.p3b)
                  }
               
                }else{
                  item.p2b=true;
                  item.p2col=1;
                  // console.log(item.p2b, item.p2col)
                }
              }
            if(!item.p3b){
              if(item.p3==item.p4){
                item.p3b=true;
                item.p3col=2;
                // console.log( item.p3b,item.p3col)
              }else{
                if(item.p1b==false && item.p2col==2){
                  item.p3b=false;
                   item.p4b=true;
                  item.p4col=1;
                  
                }else{
                  item.p3b=true;
                  item.p4b=true;
                  item.p3col=1;
                  item.p4col=1;
                  // console.log(item.p3b, item.p4b, item.p3col,item.p4col)
                }
               
              }
            }
             
              if(item.p7==item.p8){
                if(item.p8==item.p9){
                  item.p7b=true;
                  item.p7col=3;
                  item.p8b=false;
                  item.p9b=false;
                  // console.log(item.p7b,item.p7col,item.p8b,item.p9b)
                }else{
                  item.p7b=true;
                  item.p7col=2;
                  item.p8b=false;
                  // console.log(item.p7b, item.p7col,item.p8b);
                }

              }else{
                item.p7b=true;
                item.p7col=1;
                // console.log( item.p7b,item.p7col)
              }if(item.p7cols==1){
                if(item.p8==item.p9 && item.p7col==1){
                  item.p8b=true;
                  item.p8col=2;
                  item.p9b=false;
                  // console.log(item.p8b,item.p8col,item.p9b)
                }else{
                  item.p8b=true;
                  item.p8col=1;
                  item.p9b=true;
                  item.p9col=1;
                  // console.log(item.p8b,item.p8col, item.p9b,item.p9col)
                }
              }
             
              console.log(item);
               }

              }  else  if($state.current.name ==  "viewprofile"){
   
                console.log($rootScope.User.gender);
              if($rootScope.User.gender=="male"){
                $rootScope.User.gender1=false;
              } else{$rootScope.User.gender1=true;}
              console.log($rootScope.User.gender1);
                
                
                
                }

    // }else $state.go("login");

}
        


        function successMessage(message) {
            $(".success").removeClass("in").show();
            $(".success").delay(200).addClass("in").fadeOut(3000);
            $rootScope.message = message;
        }
        function errorMessage(message){
            $(".error").removeClass("in").show();
            $(".error").delay(200).addClass("in").fadeOut(3000);
            $rootScope.message = message;
        }
    
 
}) ();