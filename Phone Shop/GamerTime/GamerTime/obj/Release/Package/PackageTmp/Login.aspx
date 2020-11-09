<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GamerTime.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="contact"> 
		<div class="container">
			<div class="w3l-heading">
				<h2 class="w3ls_head">Login</h2>
			</div>
			<div class="contact-agileinfo">
                    <div class="col-md-4 col-md-offset-4"> 
						<input type="text" class="id" name="id" placeholder="id" required="required"/>
						<input type="text" name="password" placeholder="Password" required="required"/>
                        <div style="color:red;font-weight:bold;font-size:16px;">
                           <p><asp:Label ID="resText" Text="" runat="server"></asp:Label></p>
                       </div>
						
                        <asp:Button id="button1" runat="server" Text="Login" OnClick="button1_Click"  />				   
				    </div>
            </div>
				
		
		</div> 
	</div>

    <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />


</asp:Content>
