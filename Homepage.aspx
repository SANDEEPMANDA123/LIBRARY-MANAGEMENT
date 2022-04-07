<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApp1.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our features</h2>
                    <p><b>Our 3 Primary Features</b></p>

                    </center>
                </div>
            </div>
             <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="100px" src="imgs/digital-inventory.png" /> 
                    <h4>Digital Book Inventory</h4>
                    <p ALIGN=LEFT>This digital book library consist of the books that are readable by the user also user can read and right the data from it</p>
                    </center>
                </div>
                  <div class="col-md-4">
                    <center>
                        <img width="100px" src="imgs/search.png" />
                    <h4>Search books</h4>
                    <p ALIGN=LEFT>This search bar used to search the books that are present in the library </p>
                    </center>
                </div>
                  <div class="col-md-4">
                    <center>
                    <img width="100px" src="imgs/defaulters-list.png" /> 
                    <h4>Defaulter list</h4>
                    <p ALIGN=LEFT>This Default list consist of some default books </p>
                    </center>
                </div>

            </div>
        </div>
    </section>
     <section>
         <img src="imgs/in-homepage-banner.jpg" class="img-fluid" />
        
    </section>
     <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Services</h2>
                    <p><b>We have a simple steps process</b></p>

                    </center>
                </div>
            </div>
             <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="100px" src="imgs/sign-up.png" />
                    <h4>Sign up</h4>
                    <p>click here to sign up</p>
                   
                    </center>
                </div>
                  <div class="col-md-4">
                    <center>
                        <img width="100px" src="imgs/search.png" />
                    <h4>Search books</h4>
                    <p ALIGN=LEFT>This search bar used to search the books that are present in the library </p>
                    </center>
                </div>
                  <div class="col-md-4">
                    <center>
                        <img width="100px" src="imgs/library.png" />
                    <h4>Visit us</h4>
                    <p ALIGN=LEFT>thank you for refering this site visit again </p>
                    </center>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
