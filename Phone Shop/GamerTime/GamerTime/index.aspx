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
                    <img style="width:120%" class="card-img-top" src="img/High-End.jpg"/>
                    <div class="card-block">
                        <h4 class="card-title">High-End Phones</h4>
                        <div class="card-text">
                            The flag ship smartphones. These phones has the highest performance, and usually they come with higher price tag. The users are young people. Brands: Samsung, Apple, LG.
                        </div>
                    </div>
                    <div class="card-footer">
                       <a href="SearchGame.aspx" class="btn btn-danger btn-md" >  Shop now </a>
                    </div>
                </div>

          </div>


          <div class="col-md-4" id="b_img2">


               <div class="card card-inverse card-info">
                    <img style="width:100%" class="card-img-top" src="img/Middle-End.jpg"/>
                    <div class="card-block">
                        <h4 class="card-title">Middle-End Phones</h4>
                        <div class="card-text">
                             Smartphones for users who look for cost - benefit ratio. These smartphones gives some performance and quality with compromises. Brands: Xiaomi, OnePlus, ‏Huawei.
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="SearchGame.aspx" class="btn btn-danger btn-md"> Shop now </a>
                    </div>
                </div>
               
          </div>


          <div class="col-md-4" id="b_img3">
        
              <div class="card card-inverse card-info">
                    <img style="width:120%" class="card-img-top" src="img/Low-End.jpg"/>
                    <div class="card-block">
                        <h4 class="card-title">Low-End Phones</h4>
                        <div class="card-text">
                            Smartphones for non technological users who don't need them too much except on calls. These phones have low performances and price tag. Brands: Xiaomi, Nokia, ‏Motorola.
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
