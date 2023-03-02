(function() {
    'use strict';
    angular
        .module('app')
        .controller('editTT', Controller);
    Controller.$inject = ['$scope', '$rootScope', 'userService', '$state', '$stateParams', '$localStorage','$window','Upload'];
    function Controller($scope, $rootScope, userService, $state, $stateParams, $localStorage,$window,Upload) {
        
        if ($rootScope.userLogin && $rootScope.User && $rootScope.User.rolls.includes($state.current.name)) {
            // console.log($rootScope.userLogin);
    if($state.current.name ==  "Edit TimeTable"){
        $scope.visible=true;
        $scope.dept;
        $scope.facsub=[];
        $scope.dept={};

        $scope.d={
            type:"Theory",
        };
        $scope.nofac=[1,2,3,4];

        $('.selected-items-box').bind('click', function(e) {
            $('.wrapper .list').slideToggle('fast');
        });
        // $timeout(function() { 
        $(document).ready(function() {
            $('s#example-getting-started').multiselect();
        })
        
        $scope.delete=function(id,details,day){
            console.log(id,details,day);
            var detail={
                frm:parseInt(id.frm),
                to:parseInt(id.to),
                day:day,
                code:details
            };
            userService.undo(detail).then(function(res){
                
                        id.avaliable.push({theoryfacallt:details});
                        id.updated.forEach((element,index) => {
                            if(element==details)
                                id.updated.splice(index,1);
                        });
                        console.log(id.updated);
            }).catch(function(err){
                console.log(err);
            })
        }
        $scope.onExit = function() {
            console.log("hiiiii")
                    var details={
                        id:$scope.dept.sem,
                    };
                    userService.test1(details).then(function(res) { 
                        // $scope.filterdata=res.data;
                        // $state.go("logout");                        
                    }).catch(function(err){
                    console.log(err);
                    }); 
          };
          $window.onbeforeunload  =  $scope.onExit;
        $window.onhashchange= $scope.onExit;
        $scope.batch=[{value:"I",active:1},{value:"II",active:1},{value:"III",active:1}];
        userService.custom().then(function(res) { 
            $scope.filterdata=res.data;
            console.log($scope.filterdata);
        }).catch(function(err){
        console.log(err);
        }); 
        // alot with previous data
        $scope.allotwithprevious=function(item){
            $scope.previousdata;
            userService.allotwithprevious(item).then(function(res){
                $scope.previousdata=res.data;
                 if($scope.previousdata.lab.length>0 && $scope.previousdata.theory.length>0){
                    // $scope.chectflag=true;
                    $scope.visible=false;
                    $scope.getweekrpt($scope.dept,false);
                    $scope.createnewallot=true;
                    $scope.settable=true;
                }else{
                    alert("There are no previous data.Please allot now");
                    $scope.createnewallot=false;
                    $scope.settable=false;
                }
            }).catch(function(err){
                console.log(err);
            });    
        }
        //
        //addinfo
        $scope.addinfo=function(d,f){
            if(d.frm && d.to && d.building && d.room && d.select){
                var details={
                    from:parseInt(d.frm),
                    to:parseInt(d.to),
                    day:f,
                    code:d.select,
                    building:d.building,
                    room:d.room
    
                }
                userService.updatefac(details).then(function(res){
                    if(res.data){
                        if(!d.updated){
                            d.updated=[];
                            d.updated.push(d.select);
                        }else{
                            d.updated.push(d.select);
                        }
                        d.avaliable.forEach((element,index)=>{
                            // console.log(element,d.select)
                            if(element.labfacallt==d.select){
                                if(d.av){
                                    d.av.push(element);
                                }else{
                                    d.av=[];
                                    d.av.push(element);
                                }
                                d.avaliable.splice(index,1); 
                                // console.log(element.theoryfacallt,index);
                            }
                        }) 
                    }else{
                        alert("Sorry faculty is alloted already");
                    }
                }).catch(function(err){
                    console.log(err);
                });
            }else{
                alert("please review");
            }
            
        }
        //
        //deleteedit lecallotments
        $scope.deleteedit=function(day){
            var data={
                day:day,
                id:$scope.dept.sem,
            }
            userService.deleteoldallot(data).then(function(res){

            }).catch(function(err){
                console.log(err);
            })
        }
        //
        //confirm allotment
        $scope.confirmallotment=function(item,comb){
            var test=false;
            var finaldata=[];
            var count=0;
            item.forEach((element,index2)=>{
                if(element.edit){
                    $scope.deleteedit(element.day);
                    console.log("hksjhka");
                    var test1=false;
                    var data=[];
                    element.periods.forEach((element1,index)=>{
                        if(element1.updated&&!data[index]){
                            test=true;
                            test1=true;
                            var info="";
                            var info1=[];
                                var details={
                                    day:element.day,
                                    frm:parseInt(element1.frm),
                                    to:parseInt(element1.to),
                                    code:element1.updated,
                                    code2:2,
                                    edit:true,
                                }
                                userService.getelement(details).then(function(res){
                                    if(res.data){
                                        info=res.data;
                                    if(parseInt(element1.to)>4){
                                        var tto=parseInt(element1.to)-2;
                                    }else{
                                        var tto=parseInt(element1.to)-1;    
                                    }
                                    for (let index1 = index; index1 <=tto; index1++) {
                                        data[index1]=info;
                                    }
                                    
                                        userService.editfinalinsert(data).then(function(res){
                                            if(res){
                                                count++;
                                                console.log(count,"gkndsmnkjas")
                                            if(count==6){
                                                console.log("done re mental")
                                                // $scope.dummy(count);
                                            }
                                            }
                                            
                                        }).catch(function(err){
                                            console.log(err);
                                        });
                                    }else{
                                        $scope.onExit;
                                        alert("review once");
                                        return;
                                    }
                                    
                                    
                                }).catch(function(err){
                                    console.log(err);
                            });
                            
                        }else{
                                data[index]=0;
                        }
                        // $rvOu8##
                    })
                    data[7]=element.day;
                    data[8]=2;
                    data[9]=comb;
                    data[10]=count;
                    finaldata.push(data);
                    // if(test1==false){
                    //     userService.finalinsert(data).then(function(res){
                    //         count++;
                    //         if(count==6){
                    //             $scope.dummy(count);
                    //         }
                    //     }).catch(function(err){
                    //         console.log(err);
                    //     });
                    // }
                }
                
            });
            $scope.chectflag=false;
            if(!test){
                alert("please review");
            }else{
                    setTimeout(() => {
                        
                    }, 8000);
                    $rootScope.upload=true;
                    var details={
                        id:$scope.dept.sem
                    }
                    // var details={
                    $localStorage.week=details;
                    $localStorage.upload=true;
                    $rootScope.week=details;
                    $rootScope.upload=true;

                    $state.go('customsearch');
            }
        }
        //
        $scope.fetch=function(period,day,id){
            if(period.building&&period.room&&period.updated){
                period.building=null;
                period.room=null;
                period.updated=null;
            }
            if(period.frm>4){
                var start=period.frm-1;
                var end =period.to-1;
            }
            else{
                var start =period.frm;
                var end =period.to;
            }   
            for (let index = start; index <end; index++) {
                day.periods[index].selected=false;
            }
            var details={
                from:start,
                to:end,
                code:id,
                day:day.day
            }
            userService.facavb(details).then(function(res){
                res.data.forEach(element => {
                    userService.getsubjectname(element).then(function(res){
                        // console.log(res.data)
                        element.subject=res.data[0].subject;
                        // console.log(element)
                    }).catch(function(err){
                        console.log(err);
                    })
                });
                period.avaliable=res.data;
                console.log(res.data)
            }).catch(function(err){
                console.log(err);
            });
            
        }
        // getweekpart
        $scope.period2=[{value:1},{value:2},{value:3},{value:4},{value:6},{value:7},{value:8}];
        $scope.getweekrpt=function(item,item2){
            userService.subinfo(item).then(function(res){
                $scope.subjectinfo=res.data;
                $scope.myDropdownModel = [$scope.subjectinfo.facinfo[0]];
                              $scope.subjectinfo.days.forEach(element => {
                    element.periods=[{valu:1,selected:true},{valu:2,selected:true},{valu:3,selected:true},{valu:4,selected:true},{valu:6,selected:true},{valu:7,selected:true},{valu:8,selected:true}];
                });
                console.log($scope.subjectinfo);
            }).catch(function(err){
                console.log(err);
            });
            $scope.createnewallot=item2;
        }
        //
        // add new allotment//
        $scope.addfaculty=function(d,f,batchs,item){
            if(d.type=="Lab"){
                var  faculty=[];
                f.forEach(element=>{
                    if(element.selected&&element.selected==true){
                        faculty.push({facid:element.id,facname:element.name});
                        element.selected=false;
                    }
                });
                if(faculty.length<=4){
                    if(d.batch&&d.subject&&faculty.length){
                        d.batch=JSON.parse(d.batch);
                        d.subject=JSON.parse(d.subject);
                        var data={
                            subid:d.subject.sub_id,
                            subject:d.subject.sub_name,
                            faculty:faculty,
                            batch:d.batch.value,
                            type:"Lab"
                        }
                        var check=false;
                        $scope.facsub.forEach((element,index)=>{
                            if(element.subid==data.subid&&element.batch==data.batch){
                                check=true;
                                $scope.facsub.splice(index,1,data); 
                            }
                        });
                        userService.editallotment(data).then(function(res){
                            if(res){
                                console.log(res)
                                userService.allotwithprevious(item).then(function(res){
                                    $scope.previousdata=res.data;
                                }).catch(function(err){
                                    console.log(err);
                                })
                            }
                        }).catch(function(err){
                            console.log(err);
                        })
                        if(!check){
                            $scope.facsub.push(data);
                        }
                            console.log($scope.facsub);
                            $scope.d.subject=null;
                            $scope.d.faculty=null;
                            $scope.d.batch=null;
                    }else{
                        alert("Please select all the fields");
                    }
                }else{
                    alert("Max allowed faculty is 4");
                }
               
            }else{
                if(d.subject && d.faculty){
                    d.subject=JSON.parse(d.subject);
                    d.faculty=JSON.parse(d.faculty);
                    var fac=[];
                    fac.push({facid:d.faculty.id,facname:d.faculty.name});
                    console.log(fac)
                    var data={
                        subid:d.subject.sub_id,
                        subject:d.subject.sub_name,
                        faculty:fac,
                        type:"Theory"
                    }
                    userService.editallotment(data).then(function(res){
                        if(res){
                            console.log(res)
                            userService.allotwithprevious(item).then(function(res){
                                $scope.previousdata=res.data;
                            }).catch(function(err){
                                console.log(err);
                            })
                        }
                    }).catch(function(err){
                        console.log(err);
                    })
                    var check=false;
                    $scope.facsub.forEach((element,index)=>{
                       if(element.subid==data.subid){
                            // console.log(element);
                            check=true;
                            $scope.facsub.splice(index,1,data); 
                       }
                    });
                    if(!check){
                        $scope.facsub.push(data);
                    }
                    $scope.d.subject=null;
                    $scope.d.faculty=null;
                }else{
                    if(!d.subject)
                        alert("Please Select Subject");
                    else    
                        alert("Please Select faculty");
                }
            }
            $scope.d.type="Theory";
        }
        //
    }
}else{
    $state.go("login");
}
}
})();