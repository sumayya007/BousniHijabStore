using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (checkemail() == true)
        {
            Label1.Text = "Your Email Already Registered with Us";
            TextBox3.BackColor = System.Drawing.Color.PaleGreen;
           // Label1.Text = "";


        }
        else
        {
           /*captcha1.ValidateCaptcha(TextBox4.Text.Trim());
            if (captcha1.UserValidated)
            {
                Label3.ForeColor = System.Drawing.Color.Green;
                Label3.Text = "You Have Entered Valid Captcha";
                //Panel1.Visible = false;
                //String query = "insert into Registration(name,email,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                //String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=true";
                //SqlConnection con = new SqlConnection(mycon);
                //con.Open();
                //SqlCommand cmd = new SqlCommand();
                //cmd.CommandText = query;
                //cmd.Connection = con;  */
                SqlConnection conn = new SqlConnection("Data Source = CO\\SQLEXPRESS; Initial Catalog = HaritiShopping; Integrated Security = true");
                conn.Open();
                SqlCommand obj1 = new SqlCommand("insert into Registration(name,email,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", conn);
                SqlCommand obj2 = new SqlCommand("insert into Login(name,password) values('" + TextBox1.Text + "','" + TextBox3.Text + "')", conn);
                obj1.ExecuteNonQuery();
                obj2.ExecuteNonQuery();


                Session["username"] = TextBox1.Text;
                Label4.Text = "You are successfully registered with us.Please Login to continue";
                Response.Redirect("login.aspx");
                conn.Close();

           /* }

            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "You Have Entered Invalid Captcha";
               // Label2.Text = "";

            }*/

        }

    }

    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select * from Registration where email='" + TextBox2.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from Notification order by notifyid DESC";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            tag.Visible = true;
            Label2.Text = ds.Tables[0].Rows[0]["message"].ToString();
        }
        else
        {
            tag.Visible = false;
        }
        scon.Close();
    }

   
}