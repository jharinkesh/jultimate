<!DOCTYPE html>
<!-- saved from url=(0032)http://www.javain.com/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
        <link rel="stylesheet" type="text/css" href="/css/home/home.css" media="all">
        
        <script type="text/javascript" src="/js/home/jquery.min.js"></script>
        <script type="text/javascript" src="/js/home/bootstrap.js"></script>
        <script type="text/javascript" src="/js/home/jquery.hoverIntent.js"></script>
        
        <script type="text/javascript">
            
 jQuery(document).ready(function ($) {
                
               $(".dropdown").hoverIntent(
            function () {
                $('.dropdown-menu', this).show();
                var thisDropdown = $(".mega-dropdown-menu", $(this));
                if(!thisDropdown.hasClass("adjusted")) {
                    var windowWidth = $(window).width();
                    var containerWidth = $("header .container").outerWidth();
                    var paddingHalf = (windowWidth - containerWidth) / 2;
                    thisDropdown.css("left", -thisDropdown.offset().left);
                    thisDropdown.width(windowWidth);
                    thisDropdown.css("padding-left", paddingHalf);
                    thisDropdown.css("padding-right", paddingHalf);
                    thisDropdown.addClass("adjusted");
                }
                $(".navigation_product_image", $(this)).lazyload();
            },
            function () {
                $('.dropdown-menu', this).hide();
            }
    ); 
                    
    $(window).scroll(function () {
        if ($(this).scrollTop() < 150) {
            $(".headersticky").removeClass("headersticky_show");
            $(".headersticky").addClass("headersticky_hide");
        } else {
            $(".headersticky").removeClass("headersticky_hide");
            $(".headersticky").addClass("headersticky_show");
        }
    });

    $(window).scroll(function () {
        if ($(this).scrollTop() < 580) {
            $('.headersticky_cat').hide();
            $('.catalog-category-view .headersticky').show();
        } else {
            $('.headersticky_cat').show();
            $('.catalog-category-view .headersticky').hide();
        }
    });

    

    $(window).scroll(function () {
        if ($(this).scrollTop() < 800) {
            $('.backtotopbtn').hide();
        }
        else {
            $('.backtotopbtn').show();
        }
    });




});
            
            
        </script>
      

    <body class="cms-index-index cms-home">

        <!-- Contact Us Modal -->
        <div class="modal contactusmodal fade" id="contactus_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myModalLabel">Send Us Your Query</h4>
                    </div>
                    <div class="modal-body">
                        <form id="cont_frm">
                            <table>
                                <tbody><tr>
                                        <td class="smallwidth">Name</td>
                                        <td class="largewidth"><input type="text" name="name" class="form-control required-entry" placeholder="Your Name" maxlength="50"></td>
                                    </tr>
                                    <tr>
                                        <td class="smallwidth">Email</td>
                                        <td class="largewidth"><input type="text" name="email" class="form-control required-entry validate-email-allcondition" placeholder="Your Email Id" maxlength="100"></td>
                                    </tr>
                                    <tr>
                                        <td class="smallwidth">Comment</td>
                                        <td class="largewidth"><textarea name="comment" class="form-control required-entry" placeholder="Your Comment" maxlength="200"></textarea>
                                            <p class="smalltext grey">Max 200 characters</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="smallwidth"></td>
                                        <td class="largewidth"><input type="text" name="hideit" id="hideit" value="" style="display:none !important;"><button type="submit" class="btn btn-primary">Send</button></td>
                                    </tr>
                                </tbody></table>
                            <div id="cont-frm-ajax-response-message" class="text-center">
                                <p class="lead"></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- TOP STRIP -->
        <div class="topstrip">
            <div class="container">
                <div class="col-sm-4 thanks_for_hittin">
                    <div class="row">
                        <p style="color:#fff;">Hey Good looking! Thanks for hitting on us!</p>
                    </div>
                </div>

                <div class="col-sm-3 text-center">
                    <span>Welcome to the world of java</span>        
                </div>

                <div class="col-sm-5 striplinks_div">
                    <div class="row">
                        <ul class="strip_links nav navbar-nav">
                            <li><a href="">top1</a></li>
                            <li><a href="">top1</a></li>
                            <li><a data-target="#contactus_modal" data-toggle="modal" href="#">Contact Us</a></li>
                            <li><a href="">top1</a></li>
                            <li><a href="">top1</a></li>
                    </div>
                </div>
            </div>
        </div>

        <header class="headerstart">
            <div class="container">

                <div class="header col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 main_header_logo">
                            <div class="row">
                                LOGO
                            </div>
                        </div>
                        <div class="col-sm-6 search_cart">
                            <div class="row">
                                <div class="newoverlay" id="newblack" style="display: none;"></div>
                                <form id="search_mini_form" action="http://www.javain.com/elastic/search/result/" method="get">
                                    <div class="input-group">
                                        <input id="search" type="text" name="q" value="" class="form-control" autocomplete="off" placeholder="Your search is my command">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit" title="Search" id="search_btn">
                                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- NAVIGATION -->
            <div class="container">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <!-- Sub-categories featured images should not be more than 3 & rest dropdown images should not be more than 6 -->
                    <div class="navbar-collapse js-navbar-collapse collapse" aria-expanded="false" style="display: none; height: 1px;">
                        <div class="row">
                            <ul class="nav navbar-nav">

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Core Java <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Basic Concepts</a></li>
                                        <li><a href="#">Oops Concepts</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Java I/O</a></li>
                                        <li><a href="#">Multithreading</a></li>
                                        <li><a href="#">Exception Handling</a></li>
                                        <li><a href="#">Collection Framework</a></li>
                                        <li><a href="#">Jdbc</a></li>
                                        <li><a href="#">Regular Expression</a></li>
                                        <li><a href="#">java.lang package</a></li>
                                        <li><a href="#">Java Annotations</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Data Structures</a></li>
                                        <li><a href="#">Design Patterns</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Spring <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Spring Core</a></li>
                                        <li><a href="#">Spring Jdbc</a></li>
                                        <li><a href="#">Spring Mvc</a></li>
                                        <li><a href="#">Spring Security</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Spring Aop</a></li>
                                        <li><a href="#">Spring Mail</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Spring Data(Mongodb)</a></li>
                                        <li><a href="#">Spring Demo standard project</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Interview Questions <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Core Java</a></li>
                                        <li><a href="#">Advance Java</a></li>
                                        <li><a href="#">Spring</a></li>
                                        <li><a href="#">Data Structures</a></li>
                                        <li><a href="#">Sample programs</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sample projects<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Core Java</a></li>
                                        <li><a href="#">Java Web</a></li>
                                        <li><a href="#">Spring core</a></li>
                                        <li><a href="#">Spring Mvc</a></li>
                                        <li><a href="#">Spring + Mongodb</a></li>
                                        <li><a href="#">Mongodb + Spring security</a></li>
                                    </ul>
                                </li>

                                <li><a href="#">Misc</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.nav-collapse -->
                </nav>
                <!-- guest user -->

                <div class="logindiv text-right">
                    <button type="button" id="mainlogin" class="btn btn-default" data-toggle="modal" data-target="#login" data-opentab="0">Login</button>
                    <button type="button" id="mainsignup" class="btn btn-primary" data-toggle="modal" data-target="#login" data-opentab="1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Sign Up</button>
                </div>

            </div>
            <!-- </div> -->
        </header>

        <!-- Modal -->
        <div class="modal fade " id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content signin_modal">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                            <ul id="myTab" class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="http://www.javain.com/#logintab" id="login-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Login</a></li>
                                <li role="presentation"><a href="http://www.javain.com/#signuptab" role="tab" id="signup-tab" data-toggle="tab" aria-controls="profile">Create a New Account</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content overflowstyle">
                                <div role="tabpanel" class="tab-pane fade in active" id="logintab" aria-labelledby="login-tab">
                                    <h2 class="text-center">Login</h2>
                                    <div class="circleor">or</div>

                                    <div class="col-sm-6 rightborder">

                                        <div class="clearer happy_facebook_login">
                                            <a href="http://www.javain.com/#" type="button" class="btn btn-danger btn-facebook" onclick="window.location.href = & #39; https://graph.facebook.com/oauth/authorize?client_id=173705852809625&amp;redirect_uri=http%3A%2F%2Fwww.happilyunmarried.com%2Fsocialconnect%2Ffacebook%2Fconnect%2F&amp;state=0b98f42178c016264dc2ad993bdf1cf1&amp;scope=email%2Cuser_birthday&#39;">
                                                <i class="fa fa-facebook"></i>
                                                <span class="btntext">Connect with Facebook</span>
                                            </a>
                                        </div>
                                        <div class="clearer happy_google_login">
                                            <a href="http://www.javain.com/#" type="button" class="btn btn-danger btn-googleplus" onclick="window.location.href = & #39; https://accounts.google.com/o/oauth2/auth?response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.happilyunmarried.com%2Fsocialconnect%2Fgoogle%2Fconnect%2F&amp;client_id=171302767681-g4dphd0ct8qkbl4guj570c5dp4s494un.apps.googleusercontent.com&amp;scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email&amp;state=36f826f4b19be8872182da2f52ea78d6&amp;access_type=offline&amp;approval_prompt=auto&#39;">
                                                <i class="fa fa-google-plus"></i>
                                                <span class="btntext">Connect with Google</span>
                                            </a>
                                        </div>

                                    </div>

                                    <div class="col-sm-6 rightpanel">
                                        <p class="login-error"></p>
                                        <p class="login-success"></p>
                                        <form id="login_form_ajax">
                                            <input id="youama-email-login" name="youama-email" type="email" class="form-control required-entry validate-email-allcondition" placeholder="Email Address">
                                            <input id="youama-password-login" name="youama-password" type="password" class="form-control required-entry" placeholder="Password">
                                            <button type="button" id="login-submit" class="btn btn-primary youama-ajaxlogin-button-signin" onclick="getidforAjax(this.id);">
                                                <span class="pull-left">Login</span>
                                                <span class="caret-right pull-right"></span>
                                            </button>
                                        </form>

                                        <div class="forgotpassword">
                                            <a href="http://www.javain.com/#" id="forgot-pass-id">Forgot Password?</a>
                                        </div>

                                        <div class="forgotpassword_section chupja" id="fg_pass_sec">
                                            <form id="forgot_pass">
                                                <input type="email" class="form-control forgottenpassword_email required-entry validate-email-allcondition" placeholder="enter your email address" required="">
                                                <button type="submit" class="btn btn-primary forgot-pass-submit-button">
                                                    <span class="pull-left">Send Email Id</span>
                                                    <span class="caret-right pull-right"></span>
                                                </button>
                                            </form>
                                            <div class="go_back_login_sec">
                                                <a href="http://www.javain.com/#" id="go_back_login">Go Back To Login</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="signuptab" aria-labelledby="signup-tab">
                                    <h2 class="text-center">Create a New Account</h2>
                                    <div class="circleor">or</div>

                                    <div class="col-sm-6 rightborder">

                                        <div class="clearer happy_facebook_login">
                                            <a href="http://www.javain.com/#" type="button" class="btn btn-danger btn-facebook" onclick="window.location.href = & #39; https://graph.facebook.com/oauth/authorize?client_id=173705852809625&amp;redirect_uri=http%3A%2F%2Fwww.happilyunmarried.com%2Fsocialconnect%2Ffacebook%2Fconnect%2F&amp;state=0b98f42178c016264dc2ad993bdf1cf1&amp;scope=email%2Cuser_birthday&#39;">
                                                <i class="fa fa-facebook"></i>
                                                <span class="btntext">Connect with Facebook</span>
                                            </a>
                                        </div>
                                        <div class="clearer happy_google_login">
                                            <a href="http://www.javain.com/#" type="button" class="btn btn-danger btn-googleplus" onclick="window.location.href = & #39; https://accounts.google.com/o/oauth2/auth?response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.happilyunmarried.com%2Fsocialconnect%2Fgoogle%2Fconnect%2F&amp;client_id=171302767681-g4dphd0ct8qkbl4guj570c5dp4s494un.apps.googleusercontent.com&amp;scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email&amp;state=36f826f4b19be8872182da2f52ea78d6&amp;access_type=offline&amp;approval_prompt=auto&#39;">
                                                <i class="fa fa-google-plus"></i>
                                                <span class="btntext">Connect with Google</span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="col-sm-6 rightpanel">
                                        <p class="register-error"></p>
                                        <form id="register_submit">
                                            <input type="text" class="form-control required-entry" placeholder="First Name" id="youama-firstname" name="youama-firstname">
                                            <input type="text" class="form-control required-entry" placeholder="Last Name" id="youama-lastname" name="youama-lastname">
                                            <input type="email" class="form-control required-entry validate-email-allcondition" id="youama-email-register" name="youama-email" placeholder="Email Address">
                                            <input type="password" class="form-control required-entry validate-password" placeholder="Password" id="youama-password-register" name="youama-password">
                                            <div class="controls">
                                                <label style="margin-right:20px" for="youama-gender-female">
                                                    <input name="youama-gender" id="youama-gender-female" value="2" type="radio" checked="checked">
                                                    <span class="lbl padding-4"> Female</span>
                                                </label>

                                                <label for="youama-gender-male">
                                                    <input name="youama-gender" id="youama-gender-male" value="1" type="radio">
                                                    <span class="lbl padding-4"> Male</span>
                                                </label>
                                            </div>
                                            <button id="signup_submit" type="submit" class="btn btn-primary youama-register-button" onclick="getidforAjax(this.id);">
                                                <span class="pull-left">Create a New Account</span>
                                                <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                                            </button>
                                            <div class="termsquote">
                                                <span style="font-size: 11px;color: #999999;">By clicking create a new account you agree to tour</span><a href="http://www.javain.com/terms-and-conditions/" style="color:#f15a29;">
                                                    terms of service
                                                </a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /example -->
                    </div>

                    <div class="modal-footer">
                        <div class="benefits">Benefits of Logging In</div>
                        <div class="col-sm-12 options">
                            <div class="row">
                                <div class="col-sm-3"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Place orders easily</div>
                                <div class="col-sm-3"><span class="glyphicon glyphicon-screenshot" aria-hidden="true"></span> Track Past Orders</div>
                                <div class="col-sm-3"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span> Manage Wishlists</div>
                                <div class="col-sm-3"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> New Product News</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!----------------STICKY HEADER CODE ----------------->

        <!-- LOGO AND SEARCH BAR SECTION -->
        <header class="headersticky headersticky_hide">
            <div class="container">
                <div class="row" style="margin-left: 0px;">
                    <div class="header col-sm-12">
                        <div class="col-sm-1">
                            <div class="row">
                                LOGO
                            </div>
                        </div>
                        <div class="col-sm-6 sticky_nav_container">
                            <div class="row">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header">
                                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>

                                    <div class="navbar-collapse js-navbar-collapse collapse" aria-expanded="false" style="display: none; height: 1px;">
                                        <div class="row">
                                            <ul class="nav navbar-nav">

                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Core Java <span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Basic Concepts</a></li>
                                                        <li><a href="#">Oops Concepts</a></li>
                                                        <li role="separator" class="divider"></li>
                                                        <li><a href="#">Java I/O</a></li>
                                                        <li><a href="#">Multithreading</a></li>
                                                        <li><a href="#">Exception Handling</a></li>
                                                        <li><a href="#">Collection Framework</a></li>
                                                        <li><a href="#">Jdbc</a></li>
                                                        <li><a href="#">Regular Expression</a></li>
                                                        <li><a href="#">java.lang package</a></li>
                                                        <li><a href="#">Java Annotations</a></li>
                                                        <li role="separator" class="divider"></li>
                                                        <li><a href="#">Data Structures</a></li>
                                                        <li><a href="#">Design Patterns</a></li>
                                                    </ul>
                                                </li>

                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Spring <span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Spring Core</a></li>
                                                        <li><a href="#">Spring Jdbc</a></li>
                                                        <li><a href="#">Spring Mvc</a></li>
                                                        <li><a href="#">Spring Security</a></li>
                                                        <li role="separator" class="divider"></li>
                                                        <li><a href="#">Spring Aop</a></li>
                                                        <li><a href="#">Spring Mail</a></li>
                                                        <li role="separator" class="divider"></li>
                                                        <li><a href="#">Spring Data(Mongodb)</a></li>
                                                        <li><a href="#">Spring Demo standard project</a></li>
                                                    </ul>
                                                </li>

                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Interview Questions <span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Core Java</a></li>
                                                        <li><a href="#">Advance Java</a></li>
                                                        <li><a href="#">Spring</a></li>
                                                        <li><a href="#">Data Structures</a></li>
                                                        <li><a href="#">Sample programs</a></li>
                                                    </ul>
                                                </li>

                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sample projects<span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Core Java</a></li>
                                                        <li><a href="#">Java Web</a></li>
                                                        <li><a href="#">Spring core</a></li>
                                                        <li><a href="#">Spring Mvc</a></li>
                                                        <li><a href="#">Spring + Mongodb</a></li>
                                                        <li><a href="#">Mongodb + Spring security</a></li>
                                                    </ul>
                                                </li>

                                                <li><a href="#">Misc</a></li>
                                            </ul>
                                        </div>
                                    </div><!-- /.nav-collapse -->
                                </nav>

                            </div>
                        </div>
                        <div class="col-sm-5 search_cart">
                            <div class="row">
                                <span class="search_for_big_screen "><div class="newoverlay ekdamnew" id="newblack_sticky"></div>
                                    <form id="search_mini_form_sticky" action="http://www.javain.com/elastic/search/result/" method="get">
                                        <div class="input-group">
                                            <input id="search_sticky" type="text" name="q" value="" class="form-control ekdamnew_searchfield" autocomplete="off" placeholder="Your search is my command">                                           
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="submit" title="Search" id="search_btn_sticky">
                                                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                                </button>
                                            </span>
                                        </div>
                                    </form>

                                </span>
                                <span class="search_for_small_screen">
                                    <button class="btn btn-default" type="button" title="Search" id="tablet_overlay">
                                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                    </button>
                                    <span id="tablet_search" style="display:none;"><div class="newoverlay ekdamnew" id="newblack_sticky"></div>
                                        <form id="search_mini_form_sticky" action="http://www.javain.com/elastic/search/result/" method="get">
                                            <div class="input-group">
                                                <input id="search_sticky" type="text" name="q" value="" class="form-control ekdamnew_searchfield" autocomplete="off" placeholder="Your search is my command">
                                                <div class="search_dropdown">
                                                    <div id="search_search_autocomplete" class="search-autocomplete"></div>
                                                    <div id="giftdiv_sticky" class="looking_to_gift_btnsearch"><a href="http://www.javain.com/products/gifts.html/"><span class="pull-left">Looking to Gift Someone?</span> <span class="sidearrow pull-right"> &gt; </span></a></div>
                                                </div>
                                                <input type="hidden" name="order" value="relevance">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="submit" title="Search" id="search_btn_sticky">
                                                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                                    </button>
                                                </span>
                                            </div>
                                        </form>

                                    </span>
                                </span>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle btnwiddrop" data-toggle="dropdown" aria-expanded="false">
                                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span> <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu different_profilelook" role="menu">
                                        <li><a href="http://www.javain.com/#" id="mainlogin" data-toggle="modal" data-target="#login">Login</a></li>
                                        <li><a href="http://www.javain.com/#" id="mainsignup" data-toggle="modal" data-target="#login">Sign Up</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </header>


        <!-- Modal -->
        <div class="emailgrabber_hu modal fade" id="hupopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content signin_modal">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <div class="popupdiv" id="popup">
                            <div class="leftdiv col-sm-6">
                                <div class="row">
                                    <div class="left_wrap">
                                        <img class="img-responsive" src="./Buy funny & unique gifts from India's coolest company - Happily Unmarried_files/Graphic_1.jpg" width="366">
                                    </div>
                                </div>

                            </div>

                            <div class="rightdiv col-sm-6">
                                <div class="headers">
                                    <h2 class="heading head-title">Free Goodies...</h2>
                                    <p class="head-description">for you and your friend. Couple of winners every week. Sign-up and pray that you get lucky.</p>

                                </div>
                                <form class="email_grabber" id="popups" action="http://www.javain.com/hupopup/index/postPopup/" method="post">
                                    <div class="input-group input-field names">
                                        <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                        <input type="text" name="name" id="name" class="form-control required-entry" placeholder="Your Name">
                                    </div>
                                    <div class="input-group input-field names input-field emails">
                                        <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                                        <input type="text" name="urmail" id="urmail" class="form-control required-entry validate-email" placeholder="Your Email Address">
                                    </div>
                                    <div class="input-group input-field names input-field emails input-field emails-f">
                                        <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                                        <input type="text" name="friendmail" id="friendmail" class="form-control required-entry validate-email" placeholder="Your Friend&#39;s Email Address">
                                    </div>
                                    <button id="submitFrm" class="btn btn-primary" type="button">
                                        <span class="pull-left">Fingers Crossed</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    </button>
                                    <p class="note">Strictly no spam. Only love.</p>
                                    <div class="success_msg"></div>
                                </form>

                                <p class="note2">By clicking past this page you agree to our <br><a href="http://www.javain.com/#" id="t_c">Terms and Conditions</a><a href="http://www.javain.com/#" id="t_c_hide" style="display: none;">Hide Terms and Conditions</a></p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="header-compensation"></div>

        <div class="main">
            <div class="col-main">
                <div class="std"></div>

                <!-- Carousel================================================== -->
                <div class="container home_page_slider">
                    <div id="myCarousel" class="carousel slide carousel-fade col-sm-8" data-ride="carousel">
                        <div class="row">
                            Main Content
                        </div>
                    </div>
                </div>
                <!-- Carousel END -->
                <!--PRODUCT CATEGORIES -->
                <div class="productcategories">
                    <div class="container">
                        <h4>OUR PRODUCT CATEGORIES</h4>
                    </div>
                </div>
                <!-- BRAND SECTION -->
                <div class="brandsection">
                    <div class="container">
                        <h1>brand section</h1>
                    </div>
                </div>

            </div>
        </div>

        <!-- NEWSLETTER SECTION STARTS -->
        <div class="newslettersection">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p>SUBSCRIBE TO OUR NEWSLETTER</p>
                        <div class="input-group">
                            <form id="subscription" name="newsletter-form" method="post" action="http://www.javain.com/newsletter/subscriber/new/">
                                <input id="subEmail" class="news required-entry validate-email form-control" type="email" name="email" placeholder="Enter Your Email Address" style="border-radius: 0px; color: rgb(51, 51, 51);">
                                <span class="input-group-btn">
                                    <button id="subSubmit" class="btn btn-default" type="button">Submit</button>
                                </span>
                            </form>
                        </div>
                        <div class="thanks_feedback" style="display:none;">
                            <p>Thanks for subscribing</p>
                        </div>
                    </div>
                    <div class="col-sm-6 paradiv_small">
                        <div class="row paradiv">
                            <p style="font-size:12px;font-family: &#39;Roboto&#39;, sans-serif;font-weight: 300;letter-spacing:0px;">Subscribe here. <br>We promise to not spam, be exciting and <br>not invade your inbox too often.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-------------FOOTER SECTION--- -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-6">
                                <h5>Company</h5>
                                <ul>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-6">
                                <h5>Company</h5>
                                <ul>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                    <li><a href="#" target="_blank">About Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="footerlogo_div"><span class="icon-happilyunmarried-logo footerlogo"></span></div>
                        <p style="margin-bottom: 0px;"> © 2015 Happily Unmarried. All Rights Reserved</p>
                    </div>
                </div>
            </div>
            <div>
                <div class="row basestrip">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="phonenumber">
                                    <table>
                                        <tbody><tr>
                                                <td><div class="round"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></div></td>
                                                <td class="tablecontent"><span class="boldwhite">Contact Us</span><br>1800 3000 5887 (10 AM - 6 PM, Mon-Fri)</td>
                                            </tr>
                                        </tbody></table>
                                </div>
                            </div>
                        </div>
                        <div class="backtotopbtn" style="display: none;"><a class="backtotop" href="" title="" style="bottom: -100px;"><span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span></a></div>
                    </div>
                </div>
            </div>
        </footer>

    </body>
</html>