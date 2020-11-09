<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GamerTime.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
    
    <style>
    .dot {
        height: 20px;
         width: 20px;
         background-color: #ccc;
         border-radius: 50%;
        display: inline-block;
        /*position:relative;
        top:-40px;
        left: 20px;*/
        }

        .dot:hover{
            background: white;
            height: 25px;
            width: 25px;
            
        }

    </style>

    <script>
        function changeBanner(circleNo) {
            if (circleNo==1) {
                mainBanner.src = "img/sm-banner.jpg";
               
            }
            if (circleNo==2) {
              mainBanner.src = "img/xiaomi.jpg";
            }
            if (circleNo==3) {
              mainBanner.src = "img/huawei.jpg";
            }
            if (circleNo==4) {
              mainBanner.src = "img/redmi.jpg";
            }

             
        }


    </script>


    <div class="mybanner">
        <img id="mainBanner" src ="img/sm-banner.jpg" style="height:750px" />    
         <span style="position:absolute; top:780px; left: 30px" class ="dot" onclick="changeBanner(1)" onmouseover="changeBanner(1)" ></span>
         <span style="position:absolute; top:780px; left: 60px" class="dot" onclick="changeBanner(2)" onmouseover="changeBanner(2)" ></span>
         <span style="position:absolute; top:780px; left: 90px" class="dot" onclick="changeBanner(3)" onmouseover="changeBanner(3)" ></span>
         <span style="position:absolute; top:780px; left: 120px" class="dot" onclick="changeBanner(4)" onmouseover="changeBanner(4)" ></span>

	</div> 





    <div class="welcome">
		<div class="container">
			<div class="w3l-heading">
				<h3 class="w3ls_head"> AFFORDABLE PHONES & FAST SHIPPING </h3>
			</div>
        </div>
    </div>

    <!-- //content -->

    <div class="container">
       <div class="row" id="myRow">

          <div class="col-md-4" id="b_img1">

               <div class="card card-inverse card-info">
                    <img class="card-img-top" src="img/b_action.jpg">
                    <div class="card-block">
                        <h4 class="card-title">Action games</h4>
                        <div class="card-text">
                            The action role-playing game or action RPG is a type of role-playing video game which incorporates elements from action games or action-adventure games.
                        </div>
                    </div>
                    <div class="card-footer">
                       <a href="SearchGame.aspx" class="btn btn-danger btn-md" >  Shop now </a>
                    </div>
                </div>

          </div>


          <div class="col-md-4" id="b_img2">


               <div class="card card-inverse card-info">
                    <img class="card-img-top" src="img/b_star.jpg">
                    <div class="card-block">
                        <h4 class="card-title">Strategy games</h4>
                        <div class="card-text">
                            Strategy video game is a video game that focuses on skillful thinking and planning to achieve ..... Many 4X games also fit into the category of grand strategy.
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="SearchGame.aspx" class="btn btn-danger btn-md"> Shop now </a>
                    </div>
                </div>
               
          </div>


          <div class="col-md-4" id="b_img3">
        
              <div class="card card-inverse card-info">
                    <img class="card-img-top" src="img/b_sport.jpg">
                    <div class="card-block">
                        <h4 class="card-title">Sport games</h4>
                        <div class="card-text">
                            Sports games emulate the playing of traditional physical sports such as international football, baseball, boxing, basketball, Cricket, tennis, golf, rugby   etc.
                        </div>
                    </div>
                    <div class="card-footer">
                       <a href="SearchGame.aspx" class="btn btn-danger btn-md">   Shop now</a>
                    </div>
                </div>
            </div>
          </div>


     </div>
 
   <div class="welcome">
		<div class="container">
			<div class="w3l-heading">
				<h3 class="w3ls_head">  </h3>
			</div>
        </div>
    </div>

    
	



</asp:Content>
