<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="WebApp1.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign up</h4>
                                </center>
                            </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox3" 
                                     runat="server" placeholder="Full Name"></asp:TextBox>
                             </div>
                            </div>
                               
                            
                           
                            <div class="col-md-6">
                                 <label >Date of Birth</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox1" runat="server" placeholder="Date of Birth"
                                     TextMode="Date"></asp:TextBox>
                             </div>
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-6">
                                <label>Contact No</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox2" 
                                     runat="server" placeholder="Contact No"></asp:TextBox>
                             </div>
                            </div>
                               
                            <div class="col-md-6">
                                 <label >Email Id</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox4" runat="server" placeholder="Email Id"
                                     TextMode="Email"></asp:TextBox>
                             </div>
                            </div>
                            </div>
                         </div>
                         <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                             <div class="form-group">
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="select" value="select"/>
                                     <asp:ListItem Text="Telangana" value="Telangana"/>
                                     <asp:ListItem Text="Andhra Pradesh" value="Andhra Pradesh"/>
                                     <asp:ListItem Text="Karnataka" value="Karnataka"/>
                                     <asp:ListItem Text="Tamil Nadu" value="Tamil Nadu"/>
                                     <asp:ListItem Text="Maharastra" value="Maharastra"/>
                                     <asp:ListItem Text="Warangal" value="Warangal"/>
                                     <asp:ListItem Text="Siricilla" value="Siricilla"/>

                                 </asp:DropDownList>
                             </div>
                            </div>
                               
                            <div class="col-md-4">
                                 <label >City</label>
                             <div class="form-group">

                                 <asp:TextBox class="form-control" 
                                     ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                     
                             </div>
                            </div>
                              <div class="col-md-4">
                                 <label >Pin Code</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control" 
                                     ID="TextBox7" runat="server" placeholder="Pin Code"></asp:TextBox>
                                     
                             </div>
                            </div>
                            </div>

                          <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox5" 
                                     runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                             
                            </div>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <span class="badge rounded-pill bg-success">Log In Credintials</span></center>
                            </div>
                        </div>
                                </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>member id</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control"  ID="TextBox8" 
                                     runat="server" placeholder="member id"></asp:TextBox>
                            </div>
                            </div>
                               
                            <div class="col-md-6">
                                 <label >Password</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control" 
                                     ID="TextBox9" runat="server" placeholder="Password"
                                     TextMode="Password"></asp:TextBox>
                                 
                             </div>
                            </div>
                            </div>
                    
                    <br />

                            
                        <div class="row">
                            <div class="col">
                                  <div class="form-group">
                                 <div class="d-grid gap-2">
                                 <asp:Button OnClick="Button1_Click" class="btn btn-primary " ID="Button1" 
                                     runat="server" Text="Sign up" />
                                     </div>
                             </div>
                            </div>
                        </div>
                    </div>
                <a href="Homepage.aspx"> >>back to home</a>
                </div>
                </div>
        </div>
        
</asp:Content>
