<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminbookinventory.aspx.cs" Inherits="WebApp1.Adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }

      </script>
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
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" height="150px" width="100px" src="book_inventory/bookss1.png"/>
                                 
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <asp:FileUpload class="form-control" onchange="readURL(this);" ID="FileUpload" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label>Book Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3"
                                            runat="server" placeholder="Member Id"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-success" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
                                         <i class="fa-solid fa-circle-check"></i>Go</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"
                                        ID="TextBox1" runat="server" placeholder="Full Name">
                                    </asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="select" Value="select"></asp:ListItem>
                                            <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                            <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                            <asp:ListItem Text="Telugu" Value="Telugu"></asp:ListItem>
                                            <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    
                                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Suraj" Value="Suraj"></asp:ListItem>
                                            <asp:ListItem Text="Sandeep" Value="Sandeep"></asp:ListItem>
                                            <asp:ListItem Text="Akshay" Value="Akshay"></asp:ListItem>
                                            <asp:ListItem Text="Pavan" Value="Pavan"></asp:ListItem>
                                        </asp:DropDownList>    
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem Text="Author 1" Value="Author 1"></asp:ListItem>
                                            <asp:ListItem Text="Author 2" Value="Author 2"></asp:ListItem>
                                            <asp:ListItem Text="Author 3" Value="Author 3"></asp:ListItem>
                                            <asp:ListItem Text="Author 4" Value="Author 4"></asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <label>Publisher Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Publisher Date" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>

                            </div>
                         
                            
                        
                        
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <div class="input-group">
                                       
                                        <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server">
                                            <asp:ListItem text="Action" value="Action"></asp:ListItem>
                                            <asp:ListItem text="Adventure" value="Adventure"></asp:ListItem>
                                            <asp:ListItem text="Entertainment" value="Entertainment"></asp:ListItem>
                                           
                                        </asp:ListBox> 
                                        
                                    </div>
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                            <asp:ListItem Text="select" Value="select"></asp:ListItem>
                                            <asp:ListItem Text="1st" Value="1st"></asp:ListItem>
                                            <asp:ListItem Text="2nd" Value="2nd"></asp:ListItem>
                                            <asp:ListItem Text="3rd" Value="3rd"></asp:ListItem>
                                            <asp:ListItem Text="4th" Value="4th"></asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7"
                                        runat="server" placeholder="Stock" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Book Price[unit]</label>
                                <div class="form-group">
                                    <div class="input-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" placeholder="price" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>

                            </div>
                         
                            
                        
                        
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <div class="input-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Page no" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <div class="input-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox8"
                                        runat="server" placeholder="Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"
                                        ID="TextBox10" runat="server" placeholder="Book Description" TextMode="MultiLine">
                                    </asp:TextBox>


                                </div>
                            </div>
                        </div>
                      
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                   <div class="d-grid gap-2">
                                    <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Add" OnClick="Button1_Click"  />
                               </div>
                            </div>
                            <div class="col-md-4">
                                <div class="d-grid gap-2">
                                    <asp:Button ID="Button2" class="btn btn-primary" runat="server"
                                        Text="Update" OnClick="Button2_Click" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="d-grid gap-2">
                                    <asp:Button ID="Button3" class="btn btn-danger" runat="server"
                                        Text="Delete" OnClick="Button3_Click" />
                                </div>
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
                                    <h4>Book Inventory List</h4>
                                </center>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                              <div class="row">
                                 
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Author_master_tblConnectionString6 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>

                                <asp:gridView class="table table-striped table-bordered" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                        <asp:BoundField DataField="publisher_date" HeaderText="publisher_date" SortExpression="publisher_date" />
                                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                        <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                        <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                        <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                        <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                        <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                        <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />
                                    </Columns>
                                    
                                </asp:gridView>
                            </div>
                            </div>


                        </div>
                        <!--row-->



                    </div>
                </div>

            </div>

        </div>
        <a href="Homepage.aspx">>>back to home</a>
    </div>
</asp:Content>
