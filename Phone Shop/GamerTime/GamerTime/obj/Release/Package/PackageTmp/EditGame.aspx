<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditGame.aspx.cs" Inherits="GamerTime.EditGame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      <div class="container" >
     <div class="login-panel panel panel-default col-md-8 col-md-offset-2">
     <div class="panel-heading"><h3><b>Edit Game</b></h3></div>
                        
                        <div class="panel-body">

                            <div class="form-group">
                                  <label class="col-md-4 control-label text-right" for="txtName">ID:</label>  
                                  <div class="col-md-4">
                                      <asp:TextBox class="form-control input-md"  TextMode="SingleLine" runat="server" ID="txtID" ReadOnly="true" />
                                  </div>
                               </div>
                            <br />
                            <br />

                            <div class="form-group">
                                  <label class="col-md-4 control-label text-right" for="txtName">Name:</label>  
                                  <div class="col-md-4">
                                      <asp:TextBox class="form-control input-md"  TextMode="SingleLine" runat="server" ID="txtName" />
                                  </div>
                               </div>
                            <br />
                            <br />

                            <div class="form-group">
                                  <label class="col-md-4 control-label text-right" for="txtPrice">Price:</label>  
                                  <div class="col-md-4">
                                      <asp:TextBox class="form-control input-md" TextMode="Number" runat="server" ID="txtPrice" />
                                  </div>
                               </div>

                            <br />
                            <br />
                           
                             <div class="form-group">
                                  <label class="col-md-4 control-label text-right" for="txtYear">Year:</label>  
                                  <div class="col-md-4">
                                      <asp:TextBox class="form-control input-md"  TextMode="number" runat="server" ID="txtYear" />
                                  </div>
                               </div>
                            <br />
                            <br />

                            
                          

                            <div class="form-group">
                            <label class="col-md-4 control-label text-right" for="RatingList">Rating:</label>  
                                  <div class="col-md-4">
                                      <asp:DropDownList runat="server"  class="form-control input-md" id="RatingList"></asp:DropDownList>
                                  </div>
                               </div>
                             <br />
                            <br />

                            <div class="form-group">
                            <label class="col-md-4 control-label text-right" for="CategoryList">Category:</label>  
                                  <div class="col-md-4">
                                      <asp:DropDownList runat="server"  class="form-control input-md" id="CategoryList"></asp:DropDownList>
                                  </div>
                               </div>
                             <br />
                            <br />



                             <div class="form-group">
                                  <label class="col-md-4 control-label text-right" for="txtImage">Image name:</label>  
                                  <div class="col-md-4">
                                      <asp:TextBox class="form-control input-md"  TextMode="SingleLine" runat="server" ID="txtImage" />
                                  </div>
                               </div>
                            <br />
                            <br />

                             <div class="form-group">
                                  <label class="col-md-4 control-label text-right" for="txtDesc">Description:</label>  
                                  <div class="col-md-4">
                                      <asp:TextBox class="form-control input-md"  TextMode="MultiLine" runat="server" ID="txtDesc" />
                                  </div>
                               </div>
                            <br />
                            <br />

                         
                                
                                  <label class="col-md-4 control-label" for="resulttext"></label>  
                                  <div class="col-md-4">
                                      <asp:Label runat="server" Text="" class="control-label" ID="resulttext" ForeColor="Red" Font-Bold="true"/>
                                  </div>

                                  
                                    <hr />
                                <div class="form-group">
                                     <label class="col-md-4 control-label"></label>
                                     <div class="col-md-4">
                                        <a href="Admin.aspx" class="btn btn-default">Cancel</a>
                                        <asp:Button class="btn btn-danger" runat="server" Text="Delete"  id="Delete" OnClick="Delete_Click"/>
                                        <asp:Button class="btn btn-primary" runat="server" Text="Add"  id="Edit" OnClick="Edit_Click"/>
                                    </div>
                                </div>
                          
                     </div><!-- panel body-->
                   </div><!-- panel-->
    </div>     


</asp:Content>
