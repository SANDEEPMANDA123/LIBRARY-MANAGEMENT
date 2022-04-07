<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminpublishermanage.aspx.cs" Inherits="WebApp1.Adminpublishermanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                </center>
                            </div>
                            </div>
 
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/publisher.png" />
                                </center>
                            </div>
                        </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-4">
                                <label>Publisher Id</label>
                             <div class="form-group">
                                 <div class="input-group">
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox3" 
                                     runat="server" placeholder="Id" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                     <asp:Button ID="Button5" class="btn btn-info" runat="server" OnClick="Button5_Click" Text="Go" />
                                   
                                    
                                     </div>                
                             </div>
                            </div>       
                            <div class="col-md-8">
                                 <label >Publisher name</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control" 
                                     ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                             </div>
                            </div>
                            </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <div class="d-grid gap-2">
                                <asp:Button  ID="Button1" class="btn btn-block btn-success" runat="server" 
                                    Text="Add" OnClick="Button1_Click" />
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <div class="d-grid gap-2">
                                <asp:Button  ID="Button3" class="btn btn-block btn-warning" runat="server" 
                                    Text="Update" OnClick="Button3_Click" />
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <div class="d-grid gap-2">
                                <asp:Button  ID="Button4" class="btn btn-block btn-danger" runat="server" 
                                    Text="Delete" OnClick="Button4_Click" />
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
                                    <h4>Publisher List</h4>
                                </center>
                            </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Author_master_tblConnectionString2 %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                    </Columns>
                                </asp:GridView>
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
