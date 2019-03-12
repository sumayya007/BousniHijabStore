using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        if (TextBox1.Text == "SajnaHijab" && TextBox2.Text == "Bismillah")
        {
            Session["username"] = "SajnaHijab";
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            Label1.Text = "Invalid username or password";
        }
    }
}