<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="GamerTime.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- contact -->		
	<div class="contact"> 
		<div class="container">
			<div class="w3l-heading">
				<h2 class="w3ls_head">Mail Us</h2>
			</div>
			<div class="contact-agileinfo">
				<div class="col-md-7 contact-right"> 
					<form action="mailto:help@GamerTime.com" method="post">  
						<input type="text" name="Name" placeholder="Name" required=""/>
						<input type="text" class="email" name="Email" placeholder="Email" required=""/>
						<input type="text" name="Phone no" placeholder="Phone" required=""/>
						<textarea name="Message" placeholder="Message" required=""></textarea>
						<input type="submit" value="SUBMIT" /> 
					</form>
				</div>
				<div class="col-md-5 contact-left">
					<div class="address">
						<h5>Address:</h5>
						<p><i class="glyphicon glyphicon-home"></i>  Tel aviv , Israel </p>
					</div>
					
					<div class="address">
						<h5>Email:</h5>
						<p><i class="glyphicon glyphicon-envelope"></i> <a href="mailto:help@GamerTime.com">help@GamerTime.com</a></p>
					</div>
				</div>
		
			</div>
		</div> 
	</div>
	
	<!-- //contact -->	

</asp:Content>
