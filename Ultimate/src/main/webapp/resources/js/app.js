angular.module("mainApp", [])
        .controller("RegistrationController", function ($scope, $http) {

            console.log("RegistrationController");
            $scope.registration = {};

            $scope.registerMe = function () {

                $http({
                    method: 'POST',
                    url: '/account_service/registration',
                    data: $scope.registration
                })
                        .success(function (data) {
                            if(data.status=='OK'){                                
                                window.alert(data.result);
                                //  $location.path('/registration_template.jsp');                                                          
                                  //window.location.href='/templates/registration_template.jsp';
                                /* 
                                Set back to pristine.
                                    $scope.registration.$setPristine();
                                    $scope.registration={};
                                Since Angular 1.3, set back to untouched state.
                                    registerFrm.form.$setUntouched();
                                 */                                
                                $scope.registration.email='';
                                $scope.registration.phone='';
                                $scope.registration.password='';
                            }
                            else
                            {
                                window.alert(data.result);
                                $scope.registration.email='';
                                $scope.registration.phone='';
                                $scope.registration.password='';
                            }
                        });

            };
        })
        .controller("SubscriptionController", function ($scope, $http) {

            console.log("SubscriptionController");

            $scope.subscription = {};

            $scope.subscribeMe = function () {

                $http({
                    method: 'POST',
                    url: '/account_service/subscription',
                    data: $scope.subscription
                })
                        .success(function (data) {
                            if(data.status=='OK'){
                                window.alert(data.result);
                                $scope.subscription.email='';
                            }
                            else
                            {
                                window.alert(data.result);
                                $scope.subscription.email='';
                            }
                        });

            };

        })
        .controller("PageController", function ($scope, $http) {

            console.log("PageController");

            $scope.alias = $('#alias').val();

            $http({
                method: 'POST',
                url: '/page_service/content',
                data: $scope.alias
            })
            .success(function (data) {
                $scope.data = data;
            });
            
        })
        .controller("BlogController", function ($scope, $http) {
            console.log("BlogController");            
            $http({
                method: 'POST',
                url: '/blog_service/list',
                data: $scope
            })
            .success(function (data) {
                $scope.data = data.result;
            });
            
        })
       .controller("BlogContentController", function ($scope, $http) {
            console.log("BlogContentController");    
            $scope.alias = $('#alias').val();
            $http({
                method: 'POST',
                url: '/blog_service/content',
                data: $scope.alias
            })
            .success(function (data) {
                $scope.data = data.result;
            });
            
        })

//        .controller("hideCtrl",function($scope,$timeout){
//            $timeout(function() {
//                $scope.hideMessage = true;
//              }, 10000)  
//             
//        })
        .filter('unsafe', function ($sce) {
            return $sce.trustAsHtml;
        })
        /*-----------------------------code added uds--------------------------------------*/
        .controller("enquiryAcceptController", function ($scope, $http) {

            console.log("enquiryAcceptController");
            $scope.contact = {};

            $scope.acceptMessage = function () {

                $http({
                    method: 'POST',
                    url: '/account_service/contact',
                    data: $scope.contact
                })
                        .success(function (data) {
                            if(data.status=='OK'){                                
                                window.alert(data.result);                                                                                            
                                $scope.contact.name='';
                                $scope.contact.email='';                              
                                $scope.contact.message='';
                            }
                            else
                            {
                                window.alert(data.result);
                                $scope.contact.name='';
                                $scope.contact.email='';                              
                                $scope.contact.message='';
                            }
                        });

            };

        });
     

     