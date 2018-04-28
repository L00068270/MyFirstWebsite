using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyFirstWebsite.pages
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LibraryConnectionString"].ConnectionString);
        SqlCommand cmd = null;
        SqlDataReader dr = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("SELECT Password from LibraryMember where Username='" + tbxUsername.Text + "'", con);
            con.Open();
            dr = cmd.ExecuteReader();
            bool flag = false;
            while (dr.Read())
            {
                if (dr[0].Equals(tbxPassword.Text))
                {
                    Session["username"] = tbxUsername.Text;
                    //lblMsg.Text = "You Have Successfully Logged In"; 
                    //lblMsg.ForeColor=System.Drawing.Color.Green;
                    Response.Redirect("~/Pages/reports.aspx");
                    flag = true;
                }
            }
            if (!false)
            {
                lblMsg.Text = "Username or Password is Incorrect, Try Again";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();

        }
    }
}