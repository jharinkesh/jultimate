<link href="/css/contact.css" rel="stylesheet" type="text/css"/>
<!-- Page Content -->
    <div class="container">
                 <div class="row">
                    <div class="col-lg-12">
                       <h1 class="page-header"> 
                           
                       </h1>
                    </div>
                </div>
   
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> 
                    <!--<small>Item Subheading</small>-->
                </h1>
            </div>
        </div>
         <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> 
                    <!--<small>Item Subheading</small>-->
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-12">
                
                            <div class="row">
                                <div class="col-md-6" ng-controller="enquiryAcceptController">                                        
                                        <h2>SEND US A MESSAGE </h2>
                                        <form method="post" id="contactform" ng-submit="acceptMessage()" name="contactform">
                                            <input type="text" id="name" name="name" class="contact-data" ng-model="contact.name" placeholder="Name *" >
                                            <input type="email" id="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" ng-model="contact.email" class="contact-data"  placeholder="email *">
                                            <textarea name="message" id="message" class="contact-data" ng-model="contact.message" placeholder="add your enquiry"></textarea>
                                            <br />						
                                            <!--<iframe src="#" name=""></iframe>-->
                                            <input type="text" id="verify" class="contact-data"  name="verify" placeholder="paste above code here"/>
                                            <br />						
                                            <input class="contact-submit" type="submit" value="Submit">      
                                        </form>
                                </div>
                                <div class="col-md-6">
                                    <div class="contact-page">
                                        <h2>Our Address</h2>
                                        <ul>
                                            <li>
                                                <i class="fa fa-home"></i>
                                                <p>Anand Nagar, Bhopal</p>
                                            </li>
                                            <li>
                                                <i class="fa fa-phone"></i>
                                                <p> Phone Number  8817772836, </p>
                                            </li>
                                            <li>
                                                <i class="fa fa-envelope-o"></i>
                                                <p>Email Address info@javaultimate.com</p>
                                            </li>  
                                        </ul>
                                    </div>
                                    <div class="contact-page">                        	
                                        <div class="location-map">
                                            <div id="map_list">Get our location : 
                                            <br/>
                                            <hr/>
                                              <script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script>
                                              <div style='overflow:hidden;height:456px;width:520px;'>
                                                  <div id='gmap_canvas' style='height:456px;width:520px;'></div>
                                                  <style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div>
                                                 <a href='https://embedmaps.org/'>adding google maps to a website</a>
                                              <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=a3fc8e14ee2ff3f4f8f954ec08ef4cc69053b546'></script><script type='text/javascript'>function init_map(){var myOptions = {zoom:12,center:new google.maps.LatLng(23.2599333,77.41261499999996),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(23.2599333,77.41261499999996)});infowindow = new google.maps.InfoWindow({content:'<strong>javaultimate contact </strong><br>anand nagar, perl palace, boys hostel <br>462021 bhopal<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
                                            
                                            <br/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
            </div>

             

        </div>
        <!-- /.row -->

        <!-- Related Projects Row -->
        <div class="panel panel-success">
        <div class="panel-heading">Related Area </div>
        <div class="panel-body">
                <div class="row">

                    <!--<div class="col-lg-12">
                        <h3 class="page-header"></h3>
                    </div>
                    -->
                    <div class="col-sm-4 col-xs-6">
                        <a href="#">
                            <img class="img-responsive " src="/images/home/learningpoint.png" width="200" alt="Learning Point">
                        </a>
                    </div>

                    <div class="col-sm-4 col-xs-6">
                        <a href="#">
                            <img class="img-responsive" src="/images/home/earningpoint.png" width="200" alt="Earning Point">
                        </a>
                    </div>

                    <div class="col-sm-4 col-xs-6">
                        <a href="#">
                            <img class="img-responsive " src="/images/home/servingpoint.png" width="200" alt="Serving Point">
                        </a>
                    </div>

                    <!--<div class="col-sm-3 col-xs-6">
                        <a href="#">
                            <img class="img-responsive portfolio-item" src="prj2.png" alt="">
                        </a>
                    </div>
                    -->
                </div>
        <!-- /.row -->
        </div>
        </div><!--EOF Panel --> 
        
        <hr>

        

    </div>
    <!-- /.container -->