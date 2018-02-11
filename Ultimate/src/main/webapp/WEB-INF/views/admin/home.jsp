<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html ng-app="adminApp">
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="/bootstrap/css/pure-min.css">
        <script src="/bootstrap/js/jquery.min.js"></script>
        <script src="/bootstrap/js/bootstrap.min.js"></script>

        <script src="/angular/js/angular.min.js"></script>
        <script src="/angular/js/angular-route.js"></script>
        <script type="text/javascript" src="/angular/js/jquery-2.0.2.js"></script>
        <link rel="stylesheet" href="/css/adminstyle.css">    
        <script type="text/javascript" src="//cdn.tinymce.com/4/tinymce.min.js"></script>
        <script src="/js/admin/admin.js" type="text/javascript"></script>

        <title>Admin | Panel</title>
        <style>
           .statusDanger {
  background-color: rgba(255, 12, 0, 0.21);
  color:black;
}

.statusSuccess {
  background-color:whitesmoke;
    color: black;
}
        </style>
    </head>
    <body >


        <div class="container-fluid" >
            <div class="row">
                <div id="top-panel" class="col-md-12">            
                    <p style="float:left;" class="glyphicon-user">ADMIN PANEL</p>
                    <p style="float:right;" id="logged-msg">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            Welcome : ${pageContext.request.userPrincipal.name} 
                            |&nbsp;&nbsp;<a href="/logout"><span style="color:white;" class="glyphicon glyphicon-log-out pull-right"></span></a> 
                            </c:if> 
                    </p>
                </div>
            </div>
            <div class="row">
                <div id="left-panel" class="col-md-2" >
                    <h1>Dashboard</h1><hr/>

                    <div ng-app="adminApp">

                        <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="/admin" class="text-uppercase">Dash</a></div>                             
                        </d-expand-collapse>

                        <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="javascript:void(0)" class="text-uppercase">Subject</a></div>
                            <div class="OpenMenu">
                                <ul class="submenu">				 
                                    <li><a href="#listsubject">List Subjects</a></li>									
                                    <li><a href="#">Add Subject</a></li>
                                </ul>				
                            </div>
                        </d-expand-collapse>
                        
                         <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="javascript:void(0)" class="text-uppercase">Topic</a></div>
                            <div class="OpenMenu">
                                <ul class="submenu">				 
                                    <li><a href="#listtopic">List Topics</a></li>									
                                    <li><a href="#">Add Topic</a></li>
                                </ul>				
                            </div>
                        </d-expand-collapse>
                        
                        <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="javascript:void(0)" class="text-uppercase">Article</a></div>
                            <div class="OpenMenu">
                                <ul class="submenu">				 
                                    <li><a href="#listarticle">List Articles</a></li>									
                                    <li><a href="#">Add Article</a></li>
                                </ul>				
                            </div>
                        </d-expand-collapse>
                        
                        <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="javascript:void(0)" class="text-uppercase">Category</a></div>
                            <div class="OpenMenu">
                                <ul class="submenu">				 
                                    <li><a href="#addcategory">Add category</a></li>									
                                    <li><a href="#addsubcategory">Add sub-category</a></li>
                                </ul>				
                            </div>
                        </d-expand-collapse>

                        <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="javascript:void(0)" class="text-uppercase">Content</a></div>
                            <div class="OpenMenu">
                                <ul class="submenu">				                                    
                                    <!-- -->
                                    <li><a href="#addcontent">Add content in page</a></li>									
                                    <li><a href="#allcontentlist">All content page list</a></li>
                                </ul>				
                            </div>
                        </d-expand-collapse>
                        <d-expand-collapse>
                            <div class="outer"><span class="faqPlus" ></span>
                                <a href="javascript:void(0)" class="text-uppercase">Settings</a></div>
                            <div class="OpenMenu">
                                <ul class="submenu">				 
                                    <li><a href="/editprofile">Edit profile</a></li>                                     
                                </ul>				
                            </div>
                        </d-expand-collapse>

                    </div>
                </div>
                <div class="col-sm-10" >
            <div id="main">

            <!-- angular templating -->
            <!-- this is where content will be injected -->
            <div ng-view></div>

            </div>
        </div>
            </div>

        </div> <!--EOF CONTAINER-FLUID-->

        
    </body>
</html>


