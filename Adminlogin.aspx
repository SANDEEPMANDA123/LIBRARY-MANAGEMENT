<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="WebApp1.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120px" src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Admin Log In</h4>
                                </center>
                            </div>
                    
                        <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                         </div>
                        <div class="row">
                            <div class="col">
                                 <label >Admin Id</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox1" 
                                     runat="server" placeholder="Admin "></asp:TextBox>
                             </div>
                                 <label >Password</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox2" runat="server" placeholder="Password"
                                     TextMode="Password"></asp:TextBox>
                             </div>
                                <br />
                             <div class="form-group">
                                 <div class="d-grid gap-2">
                                 <asp:Button class="btn btn-primary " ID="Button1" 
                                     runat="server" Text="log in" OnClick="Button1_Click" />
                                     </div>
                             </div>
                                <br />
                                
                                </div>
                            </div>
                        </div>
                    </div>
                <a href="Homepage.aspx"> >>back to home</a>
                </div>
                </div>
            </div>
</asp:Content>
