using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label2.Text = Session["username"].ToString();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security = True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from Login where name='" + Session["username"].ToString() + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String pass;
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        scon.Close();
        if (pass == TextBox1.Text)
        {
            if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
            {
                SqlConnection conn = new SqlConnection("Data Source=CO\\SQLEXPRESS;Initial Catalog = HaritiShopping; Integrated Security = True");
                conn.Open();
                SqlCommand obj1 = new SqlCommand("update Login set password='" + TextBox2.Text + "' where name='" + Session["username"].ToString() + "'", conn);
                SqlCommand obj2 = new SqlCommand("update Registration set password='" + TextBox2.Text + "' where name='" + Session["username"].ToString() + "'", conn);
                obj1.ExecuteNonQuery();
                obj2.ExecuteNonQuery();
                conn.Close();


                Session.Abandon();
                Label1.Text = "Password has been changed successfully!!";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }
            else
            {
                Label1.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
            }
        }
        else
        {
            Label1.Text = "Invalid Username or Password - Cannot Change Password with User Authentication";
        }
    }
}