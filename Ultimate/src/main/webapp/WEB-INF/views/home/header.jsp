<!DOCTYPE html>
<html lang="en" ng-app="mainApp">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="${keywords}" >
        <meta name="description" content="${description}" >
        <meta content="en_US" property="og:locale">
        <meta content="javaultimate.com" name="author">
        <meta content="website" property="og:type">
        <title>${title}</title>       
        <link rel="icon" href="/images/favicon_new.ico">
        <!-- stylesheets -->
        <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="/css/app.css" rel="stylesheet" type="text/css"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
       <!-- <script src="/angular/js/angular.js" type="text/javascript"></script> -->
       <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
        <!--<script src="/angular/js/angular-animate.min.js" type="text/javascript"></script>-->


    </head>

    <div class="container-fluid">

        <div class="container">            
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" >
                <!--<div class="row" id="menuFirst" ng-controller="hideCtrl">-->
                <div class="container">  
                    <div class="row" id="menuFirst" >
                        <div class="col-sm-8 pull-left">
                            <ul> 
                                <li><a class="text-center" href="/">Home</a></li>
                                <li><a class="text-center" href="/products">Products</a></li>
                                <li><a class="text-center" href="/about">About Us</a></li>
                                <li><a class="text-center" href="/contact">Contact Us</a> </li>                        
                                <!-- <li class="text-center"  ng-show="hideMessage">$//{message}</li>-->
                            </ul>
                        </div>
                         
                        <div class="col-sm-4 pull-right" id="hideMsg" ng-hide="hideMessage" >
                            <ul>                         
                                <li>${message}</li>
                                <!-- <li class="text-center"  ng-show="hideMessage">$//{message}</li>-->
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/" style="padding: 0% 0% 0% 0%"> 

                            <img src="/images/home/JULogo6.png" width="110" height="60" style="border-radius:8px" class="" alt="Java Ultimate" class="img-responsive img-rounded"/>
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav" id="myFont">

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle text-left" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong>Core Java</strong> <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/java/java_introduction.htm" class="text-left">Basic Concepts</a></li>
                                    <li><a href="#" class="text-left">Oops Concepts</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#" class="text-left">Java I/O</a></li>
                                    <li><a href="#" class="text-left">Multithreading</a></li>
                                    <li><a href="#" class="text-left">Exception Handling</a></li>
                                    <li><a href="/java/collection_introduction.htm" class="text-left">Collection Framework</a></li>
                                    <li><a href="#" class="text-left">Jdbc</a></li>
                                    <li><a href="#" class="text-left">Regular Expression</a></li>
                                    <li><a href="#" class="text-left">java.lang package</a></li>
                                    <li><a href="#" class="text-left">Java Annotations</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#" class="text-left">Data Structures</a></li>
                                    <li><a href="#" class="text-left">Design Patterns</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="/blog/main" class="text-left" style="color:yellow;" ><strong>Blog</strong></a></li>

                            <!-- <li class="dropdown">
                                <a href="#" class="dropdown-toggle text-left" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong>Spring</strong> <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="text-left">Spring Core</a></li>
                                    <li><a href="#" class="text-left">Spring Jdbc</a></li>
                                    <li><a href="#" class="text-left">Spring Mvc</a></li>
                                    <li><a href="#" class="text-left">Spring Security</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#" class="text-left">Spring Aop</a></li>
                                    <li><a href="#" class="text-left">Spring Mail</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#" class="text-left">Spring Data(Mongodb)</a></li>
                                    <li><a href="#" class="text-left">Spring Demo standard project</a></li>
                                </ul>
                            </li>

		             -->

				<li class="dropdown">
                                <a href="#" class="dropdown-toggle text-left" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong>Computer Basics</strong><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/computer/computer_introduction.htm" class="text-left">Basic Concepts</a></li>
                                    <li><a href="/computer/ms_office_intro.htm" class="text-left">MS Office</a></li>
                                </ul>
                            	</li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle text-left" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong>Interview Questions</strong><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="text-left">Core Java</a></li>
                                    <li><a href="#" class="text-left">Advance Java</a></li>
                                    <li><a href="#" class="text-left">Spring</a></li>
                                    <li><a href="#" class="text-left">Data Structures</a></li>
                                    <li><a href="#" class="text-left">Sample programs</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle text-left" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><strong>Sample projects</strong><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#" class="text-left">Core Java</a></li>
                                    <li><a href="#" class="text-left">Java Web</a></li>
                                    <li><a href="#" class="text-left">Spring core</a></li>
                                    <li><a href="#" class="text-left">Spring Mvc</a></li>
                                    <li><a href="#" class="text-left">Spring + Mongodb</a></li>
                                    <li><a href="#" class="text-left">Mongodb + Spring security</a></li>
                                </ul>
                            </li>
                            
                        </ul>


                        <ul class="nav navbar-nav navbar-right" ng-if="${isLoggedIn} == 0">
                            <!--<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
                            <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>                       
                        <ul class="nav1 navbar-nav navbar-right" ng-if="${isLoggedIn} == 1">
                            <li class="dropdown1">
                                <a class="dropdown-toggle" data-toggle="dropdown"> 
                                    <button type="button" class="btn btn-default btn-lg btn-round" title="${loggedUser}">
                                        <span class="glyphicon glyphicon-user"></span></button>
                                    <!--   <span class="glyphicon glyphicon-user pull-right"></span>
                                          <span class="glyphicon glyphicon-log-out"></span>Logout-->
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Account Settings <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">User stats <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Messages <span class="badge pull-right"> 42 </span></a></li>
                                    <li class="divider"></li>
                                    <!--<li><a href="#">Favourite Snippets <span class="glyphicon glyphicon-heart pull-right"></span></a></li>-->
                                    <li><a href="#">Hi :<small>&nbsp;${loggedUser}&nbsp;</small><span class="glyphicon glyphicon-user pull-right"></span></a></li>
                                    <li class="divider"></li>
                                    <li><a href="/logout">Logout <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                                </ul>
                            </li>
                            <!--<li><p id="successMessage"><h5 class="text-default text-right">$//{message}</h5></p></li>-->
                        </ul>        

                    </div>

                    <!-- <div class="navbar-form navbar-right" ng-if="$//{isLoggedIn} == 1"></div>-->
                </div>
                <!-- /.container -->
            </nav>


        </div>  
    </div>


    <body role="document">
        <script src="/js/app.js" type="text/javascript"></script>

        <!-- Modal Login -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Login Here</h4>
                    </div>
        <div class="modal-body" ng-if="${isLoggedIn} == 0">

                        <form  role="search" name='f' action='/login' method='POST'>
                            <table>
                                <div class="form-group">
                                    <input type="email" required="true" name='username' class="form-control input-sm" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="password" required="true" name='password' class="form-control input-sm" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <a href="/forgotpassword_template">Forgot Password?</a>
                                </div>
                                <button type="submit" class="btn btn-success">Login</button>
                            </table>
                        </form>

                    </div>         
                </div>
            </div>
        </div>

        <!-- Modal Logout -->   
        <!--   
        <div class="modal fade" id="myModalOne" role="dialog">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>           
              </div>
               <div class="modal-body">            
                    <span>   $//{message} 
              </div> 
              
            </div>
          </div>
        </div>-->
                         
