<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GameInfo.aspx.cs" Inherits="GamerTime.GameInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <!-- Angular contoller -->
<div  ng-app="myApp" ng-controller="GetGameInfoCtrl">
    

    	<!--start-single-->
	    <hr />
    <br />
		<div class="container">
            <div class="row col-lg-12">

           
		
				<div class="col-md-9 single-main-left">
				<div class="sngl-top" ng-repeat="x in mytbl">
                    <div class="col-md-5 single-top-left">	

                        <div class="product-one  product-left">
                            <div class="product-main simpleCart_shelfItem">
								    <img class="img-responsive zoom-img drinks" src="img/{{x.img}}" alt="" />	
							    </div>
                            </div>
                        </div>

                  
					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h1><strong>{{x.name}}</strong> </h1>
							
							
							<h2 style="color:red" class="item_price"> {{x.price}} $</h2>
                            <p>
                                Year: {{x.year}}
							</p>
                           
                             <p>
                                Rating:  <span  style="color:gold" class="glyphicon glyphicon-star" ng-repeat="n in [].constructor(x.rating) track by $index"></span>
							</p>
                             <p>
                                Category: {{x.category}}
							</p>
							<br />
							
                            
                            <h2><strong>Description:</strong></h2>
							
							<p class="txt" style="font-size:20px;font-family:Calibri;margin-bottom:20px;" ng-repeat="paragraph  in x.description|nlToArray track by $index">{{paragraph}}</p>
                          
						</div>
					</div>
				
				</div>
				 </div>
				
				

		</div>
	</div>
	<!--end-single-->
    	<div style="height:357px;"> </div>
</div><!-- Angular contoller -->


</asp:Content>
