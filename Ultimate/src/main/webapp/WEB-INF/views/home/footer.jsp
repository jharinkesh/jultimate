<!-- --------------------------code modified by uds --------------------------------->

<!-- scrips -->
<script src="/jquery/jquery.min.js" type="text/javascript"></script>
<script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href="/css/footer.css" rel="stylesheet" type="text/css"/>
<!--<link href="/css/animate.css" rel="stylesheet" type="text/css"/>-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-83142848-1', 'auto');
  ga('send', 'pageview');

</script>   


    <!-- Custom CSS -->
    <!--<link href="/bootstrap/css/scrolling-nav.css" rel="stylesheet">-->

    <!-- jQuery -->
    <!--<script src="/bootstrap/js/jquery.js"></script>-->
    <!-- Scrolling Nav JavaScript -->
    <!--<script src="/bootstrap/js/jquery.easing.min.js"></script>-->
    <!--<script src="/bootstrap/js/scrolling-nav.js"></script>-->
 
 
 
<footer class="footer-distributed">

    <div class="footer-left">

        <div ng-controller="SubscriptionController" class="row">
           
            <form class="form-horizontal"   ng-submit="subscribeMe()">
                 <div class="col-sm-8"> 
                     <input type="email"  required="true" class="form-control" ng-model="subscription.email" placeholder="Email address"/>
                 </div>
                <div class="col-sm-2">
                <button type="submit" class="btn btn-primary style bold" >Subscribe</button>
                </div>
            </form>

        </div>


        <p class="footer-links">
            <a href="/" class="text-left">Home</a>
            ·
            <a href="/products" class="text-left">Products</a>
            ·          
            <a href="/about" class="text-left">About Us</a>
            ·            
            <a href="/contact" class="text-left">Contact Us</a>
            ·          
            <!--<a href="#" class="text-uppercase text-left">Blog</a>-->
            
        </p>
        <p class="footer-company-name">Java Ultimate &copy; 2016</p>
    </div>

    <div class="footer-center">

        <div>
            <i class="fa fa-map-marker"></i>
            <p><span>Java Ultimate Learning Solutions</span> Anand Nagar, Bhopal, India</p>
        </div>

       <!-- <div>
            <i class="fa fa-phone"></i>
            <p>+91- </p>
        </div>
        -->
        <div>
            <i class="fa fa-envelope"></i>
            <p><a href="mailto:info@javaultimate.com">info@javaultimate.com</a></p>
        </div>

    </div>

    <div class="footer-right">

        <p class="footer-company-about">
            <span class="text-uppercase text-left">Follow us </span>
            
        </p>

        <div class="footer-icons">

            <a href="https://www.facebook.com/Java-Ultimate-1063534330404945"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="https://plus.google.com/116348838462775223431"><i class="fa fa-google-plus"></i></a>

        </div>

    </div>

</footer>



</body>
</html>
