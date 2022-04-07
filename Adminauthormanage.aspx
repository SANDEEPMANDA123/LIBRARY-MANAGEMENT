<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminauthormanage.aspx.cs" Inherits="WebApp1.Adminauthormanage" %>
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
                                    <h4>Aauthor Details</h4>
                                </center>
                            </div>
                            </div>
 
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/writer.png" />
                                </center>
                            </div>
                        </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                        <!--author id name-->
                            <div class="row">
                            <div class="col-4">
                                <label>Author Id</label>
                             <div class="form-group">
                                 <div class="input-group">
                                     
                                 <asp:TextBox Cssclass="form-control"  ID="TextBox3" 
                                     runat="server" placeholder="Id"></asp:TextBox>
                                    <div class="d-grid gap-2">
                                <asp:Button  ID="Button2" class="btn btn-block btn-success" runat="server" 
                                    Text="go" OnClick="Button2_Click" />
                                    </div>
                                     </div>                
                             </div>
                            </div>       
                            <div class="col-md-8">
                                 <label >Author name</label>
                             <div class="form-group">
                                 <asp:TextBox Cssclass="form-control"
                                     ID="TextBox1" runat="server"  placeholder="Name"></asp:TextBox>
                             </div>
                            </div>
                            </div>
                        <!--author id name-->
                        <br />
                         <!--buttons-->
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
                            
                            </div>     <!--buttons-->
            

                            
                        
                            </div>
                            
                        </div></div>
                  
        <div class="col-md-7">
             <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author List</h4>
                                </center>
                            </div>
                            <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Author_master_tblConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                            </div>
                            
                            
                         </div><!--row-->

                            
                     
                            </div>
                            </div>
             
            
                 
            </div>       
    </div>
          </div>
</asp:Content>
