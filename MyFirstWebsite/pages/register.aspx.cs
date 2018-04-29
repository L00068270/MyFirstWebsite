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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LibraryConnectionString"].ConnectionString);
        SqlConnection cmd = new SqlConnection();
        /*SqlDataReader dr = null;*/
        


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Write("Button Click");
            Boolean useravailable;
            useravailable = checkusername(tbxUsername.Text);
            if (useravailable)
            {
                if (tbxPassword.Text == tbxConfirmPassword.Text)
                {
                    String query = "insert into LibraryMember(NameFirst,NameInitial,NameLast,Username,Password,Address,Street,Town,County,Country,Postcode) values('" + tbxNameFirst.Text + "','" + tbxNameInitial.Text + "','" + tbxNameLast.Text + "','" + tbxUsername.Text + "','" + tbxPassword.Text + "','" + tbxAddress.Text + "','" + tbxStreet.Text + "','" + tbxTown.Text + "','" + tbxCounty.Text + "','" + tbxCountry.Text + "','" + tbxPostcode.Text + "')";
                    //String mycon = "Data Source=LibraryConnectionString; Initial Catalog=SignupDatabase; Integrated Security=true";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LibraryConnectionString"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    lblSuccessful.Text = "New Registration Successful - Thanks For Registration";

                    tbxNameFirst.Text = "";
                    tbxNameInitial.Text = "";
                    tbxNameLast.Text = "";
                    tbxUsername.Text = "";
                    tbxPassword.Text = "";
                    tbxAddress.Text = "";
                    tbxStreet.Text = "";
                    tbxTown.Text = "";
                    tbxCounty.Text = "";
                    tbxCountry.Text = "";
                    tbxPostcode.Text = "";
                }
                else
                {
                    lblReEnter.Text = "Password and Confirm Password Not Matched - ReEnter Password";
                }
            }
            else
            {
                lblUsernameNotAvailable.Text = "Username not available";
            }

        }
        public Boolean checkusername(String username)
        {
            Boolean userstatus;
            //String mycon = "Data Source=LibraryConnectionString; Initial Catalog=SignupDatabase; Integrated Security=True";
            String myquery = "Select * from LibraryMember where username='" + tbxUsername.Text + "'";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LibraryConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                userstatus = false;
            }
            else
            {
                userstatus = true;
            }
            con.Close();
            return userstatus;
        }
    }   
}