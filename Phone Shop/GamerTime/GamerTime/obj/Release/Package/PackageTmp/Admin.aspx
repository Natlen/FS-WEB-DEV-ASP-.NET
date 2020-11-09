<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GamerTime.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      <div class="container">
 <div  class="row col-lg-12"  ng-app="myApp" ng-controller="GetAllGamesCtrl">
    <div class="panel panel-primary">
   
    <div class="panel-body">
    <!-- Search-->
        <div class="input-group col col-md-3">
            <div class="input-group-addon"><i class="glyphicon glyphicon-search"></i></div>
            <input type="text" class="form-control" placeholder="Search" ng-model="mySearch">
        </div>

        <hr />
        

                   
       <br /><br />
    <div  class="table-responsive">
                <table class="table table-bordered table-hover table-striped" >
                    <thead>
                        <tr>
                         
                           

                            <td>
                                <a href="#"><b>Image</b>
                                    
                                 </a>
                            </td>

                             <td>
                                <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse"><b>Name</b>
                                    <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
                                    <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
                               </a>
                            </td>
                            
                            <td>
                                <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse"><b>Price </b>
                                <span ng-show="sortType == 'price' && !sortReverse" class="fa fa-caret-down"></span>
                                <span ng-show="sortType == 'price' && sortReverse" class="fa fa-caret-up"></span></a>
                            </td>
                            
                            <td>
                                <a href="#" ng-click="sortType = 'type'; sortReverse = !sortReverse"><b>Type</b>
                                    <span ng-show="sortType == 'type' && !sortReverse" class="fa fa-caret-down"></span>
                                    <span ng-show="sortType == 'type' && sortReverse" class="fa fa-caret-up"></span>
                                </a>
                            </td>
                            
                            <td>
                                <a href="#" ng-click="sortType = 'rating'; sortReverse = !sortReverse"><b>Rating</b>
                                <span ng-show="sortType == 'rating' && !sortReverse" class="fa fa-caret-down"></span>
                                <span ng-show="sortType == 'rating' && sortReverse" class="fa fa-caret-up"></span></a>
                            </td>  
                         
                            <td>
                                <a href="#" ng-click="sortType = 'category'; sortReverse = !sortReverse"><b>Category</b>
                                <span ng-show="sortType == 'category' && !sortReverse" class="fa fa-caret-down"></span>
                                <span ng-show="sortType == 'category' && sortReverse" class="fa fa-caret-up"></span></a>
                            </td>
                            <td>Edit</td>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="x in mytbl | orderBy:sortType:sortReverse | filter: mySearch ">
                             <td data-title="x.img"><img height="100"  ng-src="../img/{{x.img}}" /></td>
                             <td data-title="x.name">{{x.name}}</td>
                             <td data-title="x.price">{{x.price}} </td>
                             <td data-title="x.year">{{x.year}}</td>
                             <td data-title="x.rating">{{x.rating}}</td>
                             <td data-title="x.category">{{x.category}}</td>
                             <td><a class="btn btn-primary btn-xs"  href="EditGame.aspx?id={{x.Id}}" ><span class="glyphicon glyphicon-pencil"></span></a></td>
                            
                        </tr>
                    </tbody>           
                </table>
    </div> 
        
         </div>   <!-- body pannel -->
        </div> <!-- pannel -->
    
 
 
 



 

 
 
 
 
 
 </div><!-- controller -->


</div><!-- container -->


   




</asp:Content>
