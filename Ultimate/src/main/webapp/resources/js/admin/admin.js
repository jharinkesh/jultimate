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
                                // Adds a menu item to the tools menu
                                /*ed.addMenuItem('customEmElementMenuItem', {
                                    text: 'Custom EM Element',
                                    context: 'tools',
                                    onclick: function() {
                                        editor.insertContent('<emstart>EM Start</emstart><p>Example text!</p><emend>EM End</emend>');
                                    }
                                });*/
                                 
     
                            },
                            
                            theme: 'modern',
                            plugins: [
                                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                                'searchreplace wordcount visualblocks visualchars code fullscreen',
                                'insertdatetime media nonbreaking save table contextmenu directionality',
                                'emoticons template paste textcolor colorpicker textpattern imagetools codesample',
                                'spellchecker lineheight'
                            ],
                            toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                            toolbar2: 'print preview media | forecolor backcolor emoticons | codesample | spellchecker | lineheightselect',
                            image_advtab: true,
                            templates: [
                                {title: 'Test template 1', content: 'Test 1'},
                                {title: 'Test template 2', content: 'Test 2'}
                            ],
                            lineheight_formats: "8pt 9pt 10pt 11pt 12pt 14pt 16pt 18pt 20pt 22pt 24pt 26pt 36pt",
                            force_br_newlines : true,
                            force_p_newlines : false,
                            
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
                            tinymce.PluginManager.add('lineheight', function (editor, url, $) {

                                editor.on('init', function () {
                                    editor.formatter.register({
                                        lineheight: {inline: 'span', styles: {'line-height': '%value'}}
                                    });
                                });

                                editor.addButton('lineheightselect', function () {
                                    var items = [], defaultLineHeightFormats = '8pt 10pt 12pt 14pt 18pt 24pt 36pt';
                                    var lineheight_formats = editor.settings.lineheight_formats || defaultLineHeightFormats;
                                    lineheight_formats.split(' ').forEach(function (item) {
                                        var text = item, value = item;
                                        // Allow text=value for line-height formats
                                        var values = item.split('=');
                                        if (values.length > 1) {
                                            text = values[0];
                                            value = values[1];
                                        }
                                        items.push({text: text, value: value});
                                    });
                                    return {
                                        type: 'listbox',
                                        text: 'Line Height',
                                        tooltip: 'Line Height',
                                        values: items,
                                        fixedWidth: true,
                                        onPostRender: function () {
                                            var self = this;
                                            editor.on('nodeChange', function (e) {
                                                var formatName = 'lineheight';
                                                var formatter = editor.formatter;
                                                var value = null;
                                                e.parents.forEach(function (node) {
                                                    items.forEach(function (item) {
                                                        if (formatName) {
                                                            if (formatter.matchNode(node, formatName, {value: item.value})) {
                                                                value = item.value;
                                                            }
                                                        } else {
                                                            if (formatter.matchNode(node, item.value)) {
                                                                value = item.value;
                                                            }
                                                        }
                                                        if (value) {
                                                            return false;
                                                        }
                                                    });
                                                    if (value) {
                                                        return false;
                                                    }
                                                });
                                                self.value(value);
                                            });
                                        },
                                        onselect: function (e) {
                                            tinymce.activeEditor.formatter.apply('lineheight', {value: this.value()});
                                        }
                                    };
                                });
                            });

                            tinymce.PluginManager.requireLangPack('lineheight', 'de');
                            
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

var adminApp = angular.module('adminApp', ['ui.tinymce', 'ngRoute']);


adminApp.directive('dExpandCollapse', function () {

    return {
        restrict: 'EA',
        link: function (scope, element, attrs) {

            $(element).click(function () {

                //$(element).find(".OpenMenu").slideToggle('200', function () {
                $(element).find(".OpenMenu").slideDown()('200', function () {

                    //$(element).find("span").toggleClass('faqPlus faqMinus');
                });


                /*if ($("div.OpenMenu:visible").length > 1) {
                 
                 $(this).siblings().find(".OpenMenu").slideUp('slow');
                 }
                 */

            });

        }
    };

});

adminApp.config(function ($routeProvider) {
    $routeProvider
            .when('/listsubject', {
                templateUrl: '/admin/listsubject',
                controller: ''
            })
            .when('/listtopic', {
                templateUrl: '/admin/listtopic',
                controller: ''
            })
            .when('/listarticle', {
                templateUrl: '/admin/listarticle',
                controller: ''
            })
            .when('/addcategory', {
                templateUrl: '/admin/addcategory',
                controller: 'contenteditController'
            })

            .when('/addsubcategory', {
                templateUrl: '/admin/addsubcategory',
                controller: 'contenteditController'
            })

            .when('/addcontent', {
                templateUrl: '/admin/addcontent',
                controller: 'contenteditController'
            })

            .when('/allcontentlist', {
                templateUrl: '/admin/allcontentlist',
                controller: 'contenteditController'
            });


});

// Controllers will be defined here

adminApp.controller("AdminController", function ($scope, $http, $timeout) {

    console.log("AdminController");

    $scope.article = {};
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
    
    $scope.loadBlog = function () {

        $http({
            method: 'POST',
            url: '/blog_service/content',
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
    
    $scope.saveBlog = function () {

        $http({
            method: 'POST',
            url: '/admin/service/blog/content/edit',
            data: $scope.article
        })
                .success(function (data) {
                    alert(data.result);
                });
    };
});

adminApp.controller('contenteditController', function ($scope) {
    $scope.message = 'Contact us! JAVAULTIMATE. This is just a demo.';
});

adminApp.controller("SubjectController", function ($scope, $http) {

            console.log("SubjectController");

            $scope.subjects={};
            //$scope.message='From SubjectController';
            
                      
            $http({
                method: 'POST',
                url: '/admin/service/list/all/subjects'
            })
            .success(function (data) {
                $scope.subjects = data.result;
            });
});

adminApp.controller("TopicController", function ($scope, $http) {

            console.log("TopicController");

            $scope.topics={};
             
            $http({
                method: 'POST',
                url: '/admin/service/list/all/topics'
            })
            .success(function (data) {
                $scope.topics = data.result;
          
            })
            .error(function (data) {
                    alert("failure");
            });
});
adminApp.controller("ArticleController", function ($scope, $http) {

            console.log("ArticleController");

            $scope.articles={};
             
            $http({
                method: 'POST',
                url: '/admin/service/list/all/articles'
            })
            .success(function (data) {
                $scope.articles = data.result;
          
            })
            .error(function (data) {
                    alert("failure");
            });
});

/*adminApp.controller("StatusController", function ($scope, $http) {

            console.log("StatusController");

            $scope.status=['true','false'];             
});*/