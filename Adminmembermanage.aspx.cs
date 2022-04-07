using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class Adminmembermanage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberById();

        }
        //success button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberstatusbyId("active");
        }
        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberstatusbyId("pending");

        }
        //deactivate button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberstatusbyId("deactive");

        }
        //delete button
        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteMemberById();
           

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //user define function
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox3.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }

        }
        

        /// <summary>
        //DELETE MEMBER DETAILS
        void deleteMemberById()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM  member_master_tbl  WHERE member_id ='" + TextBox3.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member deleted successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
              
            }
            else
            {
                Response.Write("<script>alert('invalid member id');</script>");
            }
        }
        /// </summary>
        //GETTING DETAILS BY ID
        void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox3.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr.GetValue(0).ToString();
                        TextBox2.Text = dr.GetValue(10).ToString();
                        TextBox4.Text = dr.GetValue(1).ToString();
                        TextBox5.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox7.Text = dr.GetValue(4).ToString();
                        TextBox8.Text = dr.GetValue(5).ToString();
                        TextBox9.Text = dr.GetValue(6).ToString();
                        TextBox10.Text = dr.GetValue(7).ToString();


                        // Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        //Session["username"] = dr.GetValue(0).ToString();
                        //Session["fullname"] = dr.GetValue(2).ToString();
                        //Session["role"] = "admin";
                        // Session["status"] = dr.GetValue(10).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('invalid Member');</script>");
                }
            }



            catch (Exception ex)

            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        //UPDATE STATUS USING ID 
        void updateMemberstatusbyId(string status)  
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE  member_master_tbl SET account_status ='" + status + "' where member_id='" + TextBox3.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('updated status successfully');</script>");
                }

                catch (Exception ex)

                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid member id');</script>");
            }

        }
        void clearForm()
        {

            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";


        }


    }
}