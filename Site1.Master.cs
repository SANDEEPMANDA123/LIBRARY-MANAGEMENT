using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user log in
                    LinkButton2.Visible = true; //sign up

                    LinkButton3.Visible = false; // log out
                    LinkButton7.Visible = false; //hello user

                    LinkButton6.Visible = true; //admin
                    LinkButton11.Visible = false; //author

                    LinkButton12.Visible = false; //publisher
                    LinkButton8.Visible = false; //book inventory
                    LinkButton9.Visible = false; // book inventory
                    LinkButton10.Visible = false; //member management

                }
                else if(Session["role"].Equals("user"))
                {

                    LinkButton1.Visible = false; //user log in
                    LinkButton2.Visible = false; //sign up

                    LinkButton3.Visible = true; // log out
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "hello" +Session["usernamne"].ToString();

                    LinkButton6.Visible = true; //admin
                    LinkButton11.Visible = false; //author

                    LinkButton12.Visible = false; //publisher
                    LinkButton8.Visible = false; //book inventory
                    LinkButton9.Visible = false; // book issueing
                    LinkButton10.Visible = true; //member management


                }
                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false; //user log in
                    LinkButton2.Visible = false; //sign up

                    LinkButton3.Visible = true; // log out
                    LinkButton7.Visible = true; //hello user
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false; //admin
                    LinkButton11.Visible = true; //author

                    LinkButton12.Visible = true; //publisher
                    LinkButton8.Visible = true; //book inventory
                    LinkButton9.Visible = true; // book inventory
                    LinkButton10.Visible = true; //member management


                }
            }
            catch
            {

            }
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminauthormanage.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminpublishermanage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookissueing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminmembermanage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

       

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user log in
            LinkButton2.Visible = true; //sign up

            LinkButton3.Visible = false; // log out
            LinkButton7.Visible = false; //hello user

            LinkButton6.Visible = true; //admin
            LinkButton11.Visible = false; //author

            LinkButton12.Visible = false; //publisher
            LinkButton8.Visible = false; //book inventory
            LinkButton9.Visible = false; // book inventory
            LinkButton10.Visible = true; //member management

            Response.Redirect("homepage.aspx");
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }
    }
}