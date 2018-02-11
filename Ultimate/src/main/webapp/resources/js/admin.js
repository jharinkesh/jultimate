/**
 * Binds a TinyMCE widget to <textarea> elements.
 */

angular.module('adminApp', ['ui.tinymce'])
        .controller("AdminController", function ($scope, $http, $timeout) {

            console.log("AdminController");

            $scope.article = {};


//            $scope.article.alias = 'java_introduction';

            $scope.loadMe = function () {

                $http({
                    method: 'POST',
                    url: '/page_service/content',
                    data: $scope.article.alias
                })
                        .success(function (data) {
                            $scope.article.content = data.result.content;
                            tinyMCE.activeEditor.setContent($scope.article.content);
                        });
            };
            $scope.saveMe = function () {

                $http({
                    method: 'POST',
                    url: '/admin/service/article/content/edit',
                    data: $scope.article
                })
                        .success(function (data) {
                            alert(data.result);
                        });
            };
        });
        
angular.module('ui.tinymce', [])
        .value('uiTinymceConfig', {})
        .directive('uiTinymce', ['uiTinymceConfig', function (uiTinymceConfig) {
                uiTinymceConfig = uiTinymceConfig || {};
                var generatedIds = 0;
                return {
                    require: 'ngModel',
                    link: function (scope, elm, attrs, ngModel) {
                        var expression, options, tinyInstance;
                        // generate an ID if not present
                        if (!attrs.id) {
                            attrs.$set('id', 'uiTinymce' + generatedIds++);
                        }
                        options = {
                            // Update model when calling setContent (such as from the source editor popup)
                            setup: function (ed) {
                                ed.on('init', function (args) {
                                    ngModel.$render();
                                });
                                // Update model on button click
                                ed.on('ExecCommand', function (e) {
                                    ed.save();
                                    ngModel.$setViewValue(elm.val());
                                    if (!scope.$$phase) {
                                        scope.$apply();
                                    }
                                });
                                // Update model on keypress
                                ed.on('KeyUp', function (e) {
                                    ed.save();
                                    ngModel.$setViewValue(elm.val());
                                    if (!scope.$$phase) {
                                        scope.$apply();
                                    }
                                });
                            },
                            mode: 'exact',
                            elements: attrs.id
                        };
                        if (attrs.uiTinymce) {
                            expression = scope.$eval(attrs.uiTinymce);
                        } else {
                            expression = {};
                        }
                        angular.extend(options, uiTinymceConfig, expression);
                        setTimeout(function () {
                            tinymce.init(options);
                        });


                        ngModel.$render = function () {
                            if (!tinyInstance) {
                                tinyInstance = tinymce.get(attrs.id);
                            }
                            if (tinyInstance) {
                                tinyInstance.setContent(ngModel.$viewValue || '');
                            }
                        };
                    }
                };
            }]);  


