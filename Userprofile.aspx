<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="WebApp1.Userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                                    <h4>Your Profile</h4>
                                    <span> Account Status-</span>
                                    <asp:Label class="badge rounded-pill bg-success" ID="Label" runat="server" Text="Your Status"></asp:Label>
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
                                     runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
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
                                

                        <div class="row">
                            <div class="col-md-4">
                                <label>Member Id</label>
                             <div  class="form-group">
                                 <asp:TextBox class="form-control"  ID="TextBox8" 
                                     runat="server" placeholder="User Id" ReadOnly="True"></asp:TextBox>
                            </div>
                            </div>
                               
                            <div class="col-md-4">
                                 <label >Old assword</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control" 
                                     ID="TextBox9" runat="server" placeholder="Password"
                                     TextMode="Password" ReadOnly="True"></asp:TextBox>
                                 
                             </div>
                            </div>
                               
                            <div class="col-md-4">
                                 <label >New Password</label>
                             <div class="form-group">
                                 <asp:TextBox class="form-control" 
                                     ID="TextBox10" runat="server" placeholder="Password"
                                     TextMode="Password"></asp:TextBox>
                                 
                             </div>
                            </div>
                            </div>
                    
                    <br />

                            
                        <div class="row">
                            <div class="col">
                                <center>
                                 <div class="form-group">
                                      <div class="d-grid gap-8">
                                    <input class="btn btn-primary btn-lg" id="Button2" type="button"
                                        value="Update" />  
                                     </center> 
                                </div>
                                </div>
                            </div>
                            </div>
                        </div>
                  
        <div class="col-md-7">
             <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books1.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your issued Books</h4>
                                    
                                    <asp:Label class="badge rounded-pill bg-success" ID="Label1" runat="server" 
                                        Text="Your books info"></asp:Label>
                                </center>
                            </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"  runat="server"></asp:GridView>
                            </div>
                            </div>
                            
                            
                         </div>

                            
                     
                            </div>
                            </div>

        </div>

            </div>

            </div>
</asp:Content>
