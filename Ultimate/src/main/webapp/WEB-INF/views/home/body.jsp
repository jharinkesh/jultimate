
<script src="/js/home.js" type="text/javascript"></script>

<!-- Page Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header"></h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">
				<!--<small>Item Subheading</small>-->
			</h1>
		</div>
	</div>
	<!--         <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> 
                    <small>Item Subheading</small>
                </h1>
            </div>
        </div>-->
	<!-- /.row -->


	<div class="row">

		<div class="col-md-8" id="JumbortronMenu" ng-controller="BlogController">
			<header class="jumbotron hero-spacer"
				style="background-color: #F0F8FF;">
				<h2>
					A Warm Welcome to <font style="color: green">Java Ultimate !</font>
				</h2>
				<h4>It is an open source web portal for learning java & all its
					related technologies.</h4>
				<fieldset>
					<legend style="color: green">Popular Topics</legend>
					<table>
						<tr>
							<td style="padding-right: 20px;"><h4>
									<a href="/java/java_introduction.htm" class="text-left">Basic
										Concepts</a>
								</h4></td>
							<td style="padding-right: 10px;"><h4>
									<a href="/java/collection_introduction.htm" class="text-left">Collection
										Framework</a>
								</h4></td>
						</tr>
						<tr>
							<td style="padding-right: 20px;"><h4>
									<a href="/computer/computer_introduction.htm" class="text-left">Computer
										Basics</a>
								</h4></td>
							<td style="padding-right: 10px;"><h4>
									<a href="/computer/ms_office_intro.htm" class="text-left">MS
										Office</a>
								</h4></td>
						</tr>

					</table>

					<table ng-repeat="element in data">
						<tr ng-repeat="article in element.articles">
							<td style="padding-right: 20px;color:yellow;">
								<h4>
									<a ng-href="{{'/blog/'+article.alias+'.htm'}}">{{article.title}}</a>
								</h4>
							</td>
						</tr>
					</table>

				</fieldset>
			</header>
		</div>



		<div class="col-md-4" ng-controller="RegistrationController">
			<div ng-include="'/account/registrationform'"></div>
			<div class="panel panel-success">
				<div class="panel-body">
					<iframe src="https://www.youtube.com/embed/izfxEEsv1hY" frameborder="0"	allowfullscreen=""> </iframe>
				</div>
			</div>
		</div>

	</div>
	<!-- /.row -->

	<!-- Related Projects Row -->
	<div class="panel panel-success">
		<div class="panel-heading">Related Area</div>
		<div class="panel-body">
			<div class="row">

				<!--<div class="col-lg-12">
                        <h3 class="page-header"></h3>
                    </div>
                    -->
				<div class="col-sm-4 col-xs-6">
					<a href="#"> <img class="img-responsive "
						src="/images/home/learningpoint.png" width="200"
						alt="Learning Point">
					</a>
				</div>

				<div class="col-sm-4 col-xs-6">
					<a href="#"> <img class="img-responsive"
						src="/images/home/earningpoint.png" width="200"
						alt="Earning Point">
					</a>
				</div>

				<div class="col-sm-4 col-xs-6">
					<a href="#"> <img class="img-responsive "
						src="/images/home/servingpoint.png" width="200"
						alt="Serving Point">
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
	</div>
	<!--EOF Panel -->

	<hr>



</div>
<!-- /.container -->