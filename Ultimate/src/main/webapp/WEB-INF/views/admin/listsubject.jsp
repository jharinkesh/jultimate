<div clas="container">
    <div class="row"  ng-controller="SubjectController">
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
                            <div class="panel-heading">List all the subjects name</div>
                            <div class="panel-body">
                                 <div class="row"> 
                                    <div class="col-sm-12">                                        
                                        <div class="pull-left">
                                            <input type="text"  placeholder="enter title" class="form-control" ng-model="statusType.title" />
                                        </div>
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
                                <br/>
                                <div class="row">
                                    <div class="col-lg-12">
                                           <table class="table table-responsive">
                                                <thead>
                                                    <tr class="table table-bordered">
                                                        <th>#</th>
                                                        <th>ID</th>
                                                        <th>Order</th>
                                                        <th>Title</th> 
                                                         <th>Status</th> 
                                                        <th colspan="3">Action</th> 
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!--<tr ng-repeat="practitioner in practitionerData 
                                                                | orderBy:predicate:reverse
                                                                | filter: { practitionerType:searchObj.practitionerType,
                                                            practitioner_master_id:searchObj.practitioner_master_id,
                                                            organizationName:searchObj.organizationName}">-->            
              
                                                    <tr ng-repeat="subject in subjects | filter:statusType" ng-class="{statusDanger: true, statusSuccess: subject.status>0}">                                                                                         
                                                        <td>{{$index+1}}</td>
                                                        <td>{{subject.id}}</td> 
                                                        <td>{{subject.order}}</td> 
                                                        <td>{{subject.title}}</td> 
                                                        <td>{{subject.status}}</td>                                                   
                                                        <td>
                                                            <button type="submit" ng-hide="subject.status == 0"><img src="/images/home/disabled2.ico" style="height:25px;width:25px;"/></button>
                                                            <button type="submit" ng-hide="subject.status == 1"><img src="/images/home/enable.ico" style="height:25px;width:25px;"/></button></td>
                                                         
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


