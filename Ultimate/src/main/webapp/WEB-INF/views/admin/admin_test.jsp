<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- stylesheets -->
        <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>

        <!-- jQuery -->
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <!-- jQuery UI -->
        <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <!-- TinyMCE -->
        <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
        <!-- AngularJS -->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.4/angular.js"></script>
        <!-- AngularJS Sanitize -->
        <script type="text/javascript" src='https://ajax.googleapis.com/ajax/libs/angularjs/1.2.4/angular-sanitize.min.js'></script>

        
        
        
        <script src="/js/admin.js" type="text/javascript"></script>
            
<!--        <script>
            tinymce.init({
                selector: '#mycontent',
                height: 500,
                theme: 'modern',
                plugins: [
                    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                    'searchreplace wordcount visualblocks visualchars code fullscreen',
                    'insertdatetime media nonbreaking save table contextmenu directionality',
                    'emoticons template paste textcolor colorpicker textpattern imagetools'
                ],
                toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
                toolbar2: 'print preview media | forecolor backcolor emoticons',
                image_advtab: true,
                inline: true,
                templates: [
                    {title: 'Test template 1', content: 'Test 1'},
                    {title: 'Test template 2', content: 'Test 2'}
                ],
                content_css: [
                    '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
                    '//www.tinymce.com/css/codepen.min.css'
                ]
            });
        </script>-->
    </head>

    <body ng-app="adminApp">

        <div id="container" ng-controller="AdminController" style="width: 55%;  margin-left: 25%">
            <form name="form" novalidate class="form-horizontal"   ng-submit="saveMe()">
                <input type="text" ng-model="article.alias" />
                
                <button type="button" class="btn-sm btn-success" style="alignment-adjust: middle" ng-click="loadMe()">Load</button>
                
                <button type="submit" class="btn-sm btn-success" >Save</button>
                
                <textarea data-ui-tinymce id="tinymce1" style="height: 700px;" ng-model="article.content"></textarea>

                
            </form>
        </div>

    </body>

</html>