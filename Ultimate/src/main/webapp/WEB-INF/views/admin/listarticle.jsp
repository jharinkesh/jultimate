<div clas="container" ng-controller="ArticleController">
    <div class="row" >
        <div class="content"> 
            <div class="container">
                <div class="row" >
                    <div class="col-lg-12" style="float: right;padding-left:225px;">
                        <h1>Java Ultimate</h1>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12" style="float: right;padding-left:225px;">
                        <div class="panel panel-default">
                            <div class="panel-heading">List all the articles name</div>
                            <div class="panel-body">
                                 <div class="row"> 
                                     <div class="col-sm-12">                                        
                                         <div class="row">
                                             <div class="col-sm-3">
                                                 <div class="pull-left">
                                                     <input type="text"  placeholder="enter title" class="form-control" ng-model="statusType.title" />
                                                 </div>
                                             </div>
                                             <div class="col-sm-3">
                                                 <div>
                                                     <input type="text"  placeholder="enter topic name" class="form-control" ng-model="statusType.topicName"/>
                                                 </div>
                                             </div>
                                             <div class="col-sm-3">
                                                 <div>
                                                     <input type="text"  placeholder="enter subject name" class="form-control" ng-model="statusType.subjectName"/>
                                                 </div>
                                             </div>
                                             <div class="col-sm-3">
                                                 <div class="pull-right">
                                                      <select ng-model="statusType.status" class="dropdown btn btn-default">  
                                                         <option value="">--Status--</option>
                                                         <option value="true">true</option>
                                                         <option value="false">false</option> 
                                                     </select> 
                                                 </div>
                                             </div>
                                         </div>                                                                                                                                                              
                                     </div>
                                </div>
                                    <br/>
                                <div class="row">
                                    <div class="col-lg-12">
                                         
                                        <table class="table table-responsive">
                                                <thead>
                                                    <tr class="table table-bordered">
                                                        <th>#</th>
                                                        <th>ID</th>
                                                        <th>Order</th>
                                                        <th>Subject Id</th>
                                                        <th>Topic Id</th>
                                                        <th>Title</th>
                                                        <th>Alias</th>
                                                        <th>Status</th>
                                                        <th>Subject Name</th>                                                        
                                                        <th>Topic Name</th>
                                                        <th colspan="3">Action</th> 
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr ng-repeat="article in articles | filter:statusType" ng-class="{statusDanger: true, statusSuccess: article.status>0}">
                                                        <td>{{$index+1}}</td> 
                                                        <td>{{article.id}}</td> 
                                                        <td>{{article.order}}</td>
                                                        <td>{{article.topicId}}</td>
                                                        <td>{{article.subjectId}}</td>
                                                        
                                                        <td>{{article.title}}</td>
                                                        <td>{{article.alias}}</td>
                                                        <td>{{article.status}}</td>
                                                        <td>{{article.topicName}}</td> 
                                                         <td>{{article.subjectName}}</td>      
                                                        <td><button type="submit" ng-hide="article.status == 0"><img src="/images/home/disabled2.ico" style="height:25px;width:25px;"/></button>
                                                            <button type="submit" ng-hide="article.status == 1" class="btn btn-success"><img src="/images/home/enable.ico" style="height:25px;width:25px;"/></button>
                                                         </td> 
                                                        <td><button type="submit"><img src="/images/home/edit.ico" style="height:25px;width:25px;"/></button></td> 
                                                        <td><button type="submit"><img src="/images/home/delete2.png" style="height:25px;width:25px;"/></button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                         
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                             <!-- pagination -->
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


