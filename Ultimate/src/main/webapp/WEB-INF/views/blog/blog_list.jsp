<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="container" ng-controller="BlogController"
				style="margin-bottom: 2%;">

				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"></h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"></h1>
					</div>
				</div>
				<div class="row" style="margin-left: -4%; margin-right: -4%;">

					<div class="clearfix visible-xs"></div>
					<div class="col-md-10" id="middle">
						<div class="article_title_header">Blog Topics</div>
						<div ng-repeat="element in data">
							<h4 style="color: green">
								<b>{{element.category_title}}</b>
							</h4>
							<p ng-repeat="article in element.articles"
								style="font-size: medium;">
								<a ng-href="{{'/blog/'+article.alias+'.htm'}}">{{article.title}}</a>
							</p>
						</div>
					</div>

					<div class="col-md-2" id="right">
						<p>This website is intended to the beginners,developers and
							researchers , who want to learn about java related
							technologies,who want to develop something new & want to give an
							useful software component to the people</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>