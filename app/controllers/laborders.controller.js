(function() {
    'use strict';
    angular
        .module('app')
        .controller('LabOrders', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window) {
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            if($state.current.name ==  "Lab Orders"){
                    // $scope.subject=null;
                    userService.labordersgetinfo().then(function(res){
                        $scope.labdata=res.data;
                    }).catch(function(err){
                        console.log(err);
                    })
                    $scope.review=function(data){
                        if(!data.selectedsub || !data.internal || !userService.validnumber(data.number || !userService.validemail(data.email))){
                            alert("Please review the form");
                            return;
                        }else{
                            var sub=JSON.parse(data.selectedsub);
                            var fac=JSON.parse(data.internal);
                            var r=numberToRoman(parseInt(sub.semester),10);
                            var d=new Date(data.stdate);
                            var month=getMonthName(d.getMonth());
                            var year=d.getFullYear();
                            var day=d.getDate();
                            $scope.subjectletter="Appointment of External Examiner – "+sub.sub+r+ " Semester (Main) Practical Examination -"+month+" "+year+" -Reg";
                            $scope.period;
                            if(data.eddate){
                                var ed=new Date(data.eddate);
                                var month1=getMonthName(ed.getMonth());
                                var day2=ed.getDate();
                                var year2=ed.getFullYear();
                                var number=data.number;
                                $scope.period="from " +day+" "+month+""+year+"to"+day2+" "+month1+" "+year2;
                            }else{
                                $scope.period="on "+day+" "+month+""+year
                            }
                            $scope.curdate=new Date().toLocaleDateString();
                            $scope.dept=sub.fullname;
                            $scope.subject=sub.sub_name;
                            $scope.internalinfo=fac.name+", "+fac.designation+", Department of "+fac.department+" , UCE (A), O.U,"
                            $scope.internalcon="Email ID:"+fac.emaill+", Ph.Number:"+fac.phoneno;
                            $scope.head="The Head, Dept. of "+sub.fullname+", UCE (A), OU for information."
                            $scope.ext=data;
                            setTimeout(()=>{
                                var letterhead=angular.element(document.querySelector('#print'))[0].outerHTML;
                                var data={
                                  internalmail:fac.emaill,
                                  internalnumber:fac.phoneno,
                                  externalname:$scope.ext.name,
                                  externaldept:$scope.ext.dept,
                                  externalclg:$scope.ext.clg,
                                  externalclgAddres:$scope.ext.address,
                                  externalphone:$scope.ext.number,
                                  externalemail:$scope.ext.email,
                                  subletter:$scope.subjectletter,
                                  para1:"I am pleased to inform you that you have been appointed as External Examiner to conduct the Practical Examination scheduled"+$scope.period+".  The timetable and the groupings of candidates in the subject of "+$scope.subject+"is attached herewith.",
                                  para2:"You are requested to intimate your acceptance by e-mail/mobile to internal examiner, or Head Department of "+sub.fullname+", UCE (A), OU. The honorarium and TA will be paid as per the University College of Engineering (A), Osmania University, norms in vogue.",
                                  course:sub.sub.substring(0,2)+" Exams",
                                  para3:$scope.internalinfo,
                                  para4:$scope.internalcon+", Internal Examiner, with a request to confirm with External Examiner in advance.",
                                  para5:$scope.head,
                                  internal:"+91"+fac.phoneno,
                                  // external:"+91"+number,
                                  internalmsg:$scope.subjectletter+" period "+$scope.period+" subject "+$scope.subject+" with a request to confirm with External Examiner in advance His/Her contact number. "+number,
                                  externalmsg:$scope.subjectletter+" period "+$scope.period+" subject "+$scope.subject+" You are requested to intimate your acceptance by e-mail/mobile to internal examiner.His/Her contact number. "+fac.phoneno,
                                  // lines:content
                                }
                                userService.msglaborders(data).then(function(res){
                                  var blob = new Blob([res.data], { type:'application/pdf'}); 
                                  var fileURL = $window.URL.createObjectURL(blob);
                                  $window.open(fileURL);
                                  }).then(function(err){
                                console.log(err);
                              })
                            },1000);
                            
                            
                        }
                    }
                    function getMonthName(monthNumber) {
                        var months = [
                          'January', 'February', 'March', 'April', 'May', 'June',
                          'July', 'August', 'September', 'October', 'November', 'December'
                        ];
                      
                        return months[monthNumber];
                      }
                    function numberToRoman(num) {
                        switch (num) {
                          case 1:
                            return "I";
                          case 2:
                            return "II";
                          case 3:
                            return "III";
                          case 4:
                            return "IV";
                          case 5:
                            return "V";
                          case 6:
                            return "VI";
                          case 7:
                            return "VII";
                          case 8:
                            return "VIII";
                          case 9:
                            return "IX";
                          case 10:
                            return "X";
                          default:
                            return "Invalid number. Please enter a value between 1 and 10.";
                        }
                      }
            }
        }else{
            $state.go("login");
        }
        }
    })();