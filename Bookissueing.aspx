<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bookissueing.aspx.cs" Inherits="WebApp1.Bookissueing" %>
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
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                            </div>
 
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/book.png" />
                                </center>
                            </div>
                        </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-6">
                                <label>Member Id</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox3" 
                                     runat="server" placeholder="Member Id"></asp:TextBox>    
                             </div>
                            </div>       
                            <div class="col-md-6">
                                 <label >Book Id</label>
                             <div class="form-group">
                                  <div class="input-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox1" runat="server" placeholder="Book Id">
                                    </asp:TextBox>
                                  <input class="btn btn-info" id="Button2" type="button"
                                        value="Go" /> 
                                      </div>
                             </div>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox2" 
                                     runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>    
                             </div>
                            </div>       
                            <div class="col-md-6">
                                 <label >Book Name</label>
                             <div class="form-group">
                                  <div class="input-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True">
                                    </asp:TextBox>
                                 
                                      </div>
                             </div>
                            </div>
                            </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox5" 
                                     runat="server" placeholder="Start Date" Wrap="True" TextMode="Date"></asp:TextBox>    
                             </div>
                            </div>       
                            <div class="col-md-6">
                                 <label >End Date</label>
                             <div class="form-group">
                                  <div class="input-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date">
                                    </asp:TextBox>
                                 
                                      </div>
                             </div>
                            </div>
                            </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="d-grid gap-2">
                                <asp:Button  ID="Button1" class="btn btn-info" runat="server" 
                                    Text="Issue" />
                                    </div>
                            </div>
                           
                            <div class="col-md-6">
                                <div class="d-grid gap-2">
                                <asp:Button  ID="Button4" class="btn btn-success " runat="server" 
                                    Text="Delete" />
                                    </div>
                            </div>
                            
                            </div>
            

                            
                        
                            </div>
                            
                        </div></div>
                  
        <div class="col-md-7">
             <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issue Book List</h4>
                                </center>
                            </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                            <div class="col">
                                <asp:gridView class="table table-striped table-bordered" ID="GridView1"  runat="server"></asp:gridView>
                            </div>
                            </div>
                            
                            
                         </div><!--row-->

                            
                     
                            </div>
                            </div>
         
            </div>
                 
            </div>   
           <a href="Homepage.aspx"> >>back to home</a>
    </div>
</asp:Content>
