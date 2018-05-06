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
        //Connect to Database, the SqlConnection class makes the connection with the database. 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LibraryConnectionString"].ConnectionString);
        SqlCommand cmd = null;
        SqlDataReader dr = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }       
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Do this on clicking button
            //Reteieving password from Database, this is sql script, this puts password into the cmd field
            cmd = new SqlCommand("SELECT Password from LibraryMember where Username='" + tbxUsername.Text + "'", con);
            con.Open();
            //Send contents of field to sql data reader
            dr = cmd.ExecuteReader();
            bool flag = false;
            while (dr.Read())
            {
                //checking contents of field against contents of tbxPassword
                if (dr[0].Equals(tbxPassword.Text))
                {
                    Session["username"] = tbxUsername.Text;
                    //script on to page to test
                    //lblMsg.Text = "You Have Successfully Logged In"; 
                    //lblMsg.ForeColor=System.Drawing.Color.Green;
                    //When the code worked, connected to the Members Only Page
                    Response.Redirect("~/Pages/members.aspx");
                    flag = true;          
                }
            }
            //If the username and password are no good,show mwssage in red
            if (!false)
            {
                lblMsg.Text = "Username or Password is Incorrect, Try Again";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();         
        }
    }
}