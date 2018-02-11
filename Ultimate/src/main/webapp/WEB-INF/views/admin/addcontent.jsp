<div class="container">
    <!--<div class="row">
         <div class="col-md-10">
 
             <div class="page-header">
 
             </div>
         </div>
     </div>-->
    <div class="row" >
        <div class="content"> 
            <div class="container">
                <div class="row" >
                    <div class="col-lg-8" style="float: right;">
                        <h1>Java Ultimate</h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-10" style="float: right;">
                        <div class="panel panel-default">
                            <div class="panel-heading">Add Content in your page </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-10">
                                        <div style="float: left;">
                                            <div class="dropdown">
                                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Categories
                                                    <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>

                                        </div>
                                        <div style="float :right;">

                                            <div class="dropdown">
                                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sub Categories
                                                    <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--<div class="row"> 
                                    <div class="col-sm-12">
                                        <p><label>Enter alias here </label></p>
                                        <p><input type="text"  placeholder="enter alias here" class="form-control" style="width:25%;"/></p>
                                    </div>
                                </div>-->
                                <div class="row">
                                    <div class="col-sm-12">
                                        <label>Enter alias here</label>
                                        <div id="container" ng-controller="AdminController">
                                            <form name="form" novalidate class="form-horizontal" >
                                                <input type="text" ng-model="article.alias" placeholder="enter alias here" class="form-control" style="width:20%;"/>

                                                <button type="button" class="btn-sm btn-success" style="alignment-adjust: middle" ng-click="loadMe()">Load Page</button>
                                                <button type="submit" class="btn-sm btn-success" ng-click="saveMe()">Save Page</button>
												<button type="button" class="btn-sm btn-success" style="alignment-adjust: middle" ng-click="loadBlog()">Load Blog</button>
                                                <button type="submit" class="btn-sm btn-success" ng-click="saveBlog()">Save Blog</button><br/>

                                                <textarea data-ui-tinymce id="tinymce1" style="min-height:100%;" ng-model="article.content"></textarea>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>   
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>


</div><!--EOF CONTAINER-->


