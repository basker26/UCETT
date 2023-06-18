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
                        if(!data.selectedsub || !data.internal){
                            alert("Please select subject and internal faculty");
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
                            console.log($scope.subject);
                            console.log(data);
                            console.log(sub,fac);
                            $scope.period;
                            if(data.eddate){
                                var ed=new Date(data.eddate);
                                var month1=getMonthName(ed.getMonth());
                                var day2=ed.getDate();
                                var year2=ed.getFullYear();
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