<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SearchGame.aspx.cs" Inherits="GamerTime.search2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container" ng-app="myApp" ng-controller="GetAllGamesCtrl" >
 <!-- row search -->
    <div  class="row col-lg-12">
        <div class="panel panel-primary">
		    <div class="panel-heading">
			    <h3 class="panel-title"></h3>
            </div>
            <div class="panel-body">
                <!-- Search-->
                <div class="input-group  col-md-3">
                    <div class="input-group-addon"><i class="glyphicon glyphicon-search"></i></div>
                    <input type="text" class="form-control" placeholder="Search" ng-model="mySearch"/>
                </div>
            </div>
        </div>
    </div><!-- end row search -->
         

           <!-- row 1 -->
         <div  class="row col-lg-12">
             <div class="panel panel-primary">
			    <div class="panel-heading">
				    <h3 class="panel-title">Search filters</h3>
                </div>
             <div class="panel-body">


              <div class="col-md-3"> 
                  <div class="form-group">
                       <label>Category:</label><br />
                       <select  class="form-control" ng-model="fields_category.category">
                            <option></option>
                            <option>High-End</option>
                            <option>Middle-End</option>
                            <option>Low-End</option>
                       </select>
                  </div>
              </div>

             
               
              <div class="col-md-3"> 
                  <div class="form-group">
                       <label>Stars Rating:</label><br />
                       <select  class="form-control" ng-model="fields_rating.rating">
                            <option></option>
                            <option>5</option>
                            <option>4</option>
                            <option>3</option>
                            <option>2</option>
                            <option>1</option>
                       </select>
                  </div>
              </div>

                 </div><!-- body panel 1  -->


                 </div><!-- panel 1  -->
            </div><!-- END row 1  -->
        
     
      <hr />

        <!-- row 2 -->
       <div class="row col-lg-12" id="myRow_search">
           <div class="panel panel-primary">
		    <div class="panel-heading">
			    <h3 class="panel-title">Smartphones List</h3>
            </div>
            <div class="panel-body">


        
          <div class="col-md-4" ng-repeat="x in mytbl | orderBy:sortType:sortReverse | filter: mySearch | filter: fields_category | filter: fields_rating">
               <a href="GameInfo.aspx?id={{x.Id}}"> 
              <div class="card card-inverse card-info">
                    <img class="card-img-top"  ng-src="../img/{{x.img}}" >
                    <div class="card-block">
                        <h4 class="card-title">{{x.name}}</h4>
                         <hr />
                        
                        <div class="card-text">
                            <span  style="color:gold" class="glyphicon glyphicon-star" ng-repeat="n in [].constructor(x.rating) track by $index"></span>
                           
                        </div>
                        <div class="card-text">
                             {{x.category}}
                        </div>
                        <div class="card-text">
                             {{x.year}}
                        </div>
                    </div>
                    <div class="card-footer">
                         <strong style="color:red">{{x.price}}$</strong>  
                    </div>
                </div></a>
          </div>
        
            </div></div><!-- panel -->

         
          </div> <!-- row 2 -->
 
    </div> <!-- container -->


</asp:Content>
