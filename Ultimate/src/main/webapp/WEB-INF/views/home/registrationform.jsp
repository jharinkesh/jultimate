   <div class="panel panel-success">
        <div class="panel-heading">Quick register now</div>
        <div class="panel-body">
            <form class="form-horizontal" ng-submit="registerMe()" name="registerFrm">
  
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                    <input class="form-control" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" ng-model="registration.email" required="true" placeholder="Email address">
                </div>
                <br/>
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon"><i class="fa fa-phone-square fa-fw"></i></span>
                    <input class="form-control" type="phone" pattern="[789][0-9]{9}" ng-model="registration.phone" required="true" placeholder="Phone number">
                </div>
                <br/>
                <div class="input-group margin-bottom-sm">
                    <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                    <input class="form-control" type="password" pattern=".{6,8}" title="Six to eight characters" ng-model="registration.password" required="true" placeholder="Password">
                </div>
             
                
                <br/>
                <div class="control-group">
                    
                    <div class="controls"> <button type="submit" class="btn btn-success" >Register</button> </div>
                </div>
    
            </form>
        </div>
    </div>