using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstCsharpWebsite.Pages
{
    public partial class members : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                lblWelcome.Text = "Welcome, " + Session["Username"];
            }
            else
            {
                Response.Redirect("~/Pages/login.aspx");
            }
            
        }
    }
}