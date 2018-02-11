<div class="container">
    <div class="row">
        <div class="col-lg-12">
      <div class = "container" ng-controller="PageController" style="margin-bottom: 2%;">

               <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"  >  

                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"  > 

                    </h1>
                </div>
            </div>
             <div class = "row" style=" margin-left: -4%; margin-right: -4%;">
              
            <input type="hidden" id="alias" value="${alias}" />
           
                <!--  <div class = "col-md-2 left-col" > --> 
                <div class = "col-md-2" id="left">
                    <div class="subject-title" ng-bind="data.result.topic_title"></div>

                    <ul class="nav nav-list primary left-menu article_menu">          
                        <li  class="article_title" ng-repeat="article in data.result.articles">
                            <a ng-href="{{article.article_alias+'.htm'}}" ng-bind="article.article_title">
                              
                            </a>
                        </li>
                    </ul>

                </div>


                <div class = "clearfix visible-xs"></div>
                <!--  <div class = "col-md-7 content-col" > -->    
                <div class = "col-md-8" id="middle">            
                    <div class="article_title_header" ng-bind="data.result.select_article_title"></div>
                    <div class="page_content" ng-bind-html="data.result.content | unsafe"></div>
                </div>
                <!--  <div class = "col-md-3 right-col" > --> 
                <div class="col-md-2" id="right">

                    <p> This website is intended to the beginners,developers and researchers , who want to
                        learn about java related technologies,who want to develop something new & want to give an
                        useful software component to the people</p>

                    <p>This website is intended to the beginners,developers and researchers , who want to
                        learn about java related technologies,who want to develop something new & want to give an
                        useful software component to the people</p>

                </div>



            </div>
        </div>
        </div>
    </div>

</div>