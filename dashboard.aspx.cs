using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
            updatecounter();
            findView();
            findordercount();
        }
    }
    public void show()
    {
        
            SqlConnection conn = new SqlConnection("Data Source=co\\sqlexpress;Initial Catalog=HaritiShopping;Integrated Security=true");
            conn.Open();
            SqlCommand obj1 = new SqlCommand("select * from Registration", conn);
            DataTable dt1 = new DataTable();
            SqlDataAdapter myobj1 = new SqlDataAdapter(obj1);
            myobj1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                Label1.Text = dt1.Rows.Count.ToString();
               
            }

            
        
       
        

    }
    private void findView()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select * from ViewCounter";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label2.Text = ds.Tables[0].Rows[0]["viewcount"].ToString();
        con.Close();
    }
    private void updatecounter()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String updatedata = "Update ViewCounter set viewcount=viewcount+1";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    public void findordercount()
    {

        SqlConnection conn = new SqlConnection("Data Source=co\\sqlexpress;Initial Catalog=ShoppingData;Integrated Security=true");
        conn.Open();
        SqlCommand obj1 = new SqlCommand("select * from OrderDetails", conn);
        DataTable dt1 = new DataTable();
        SqlDataAdapter myobj1 = new SqlDataAdapter(obj1);
        myobj1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Label3.Text = dt1.Rows.Count.ToString();
        }

        conn.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String updatedata = "insert into Notification(message) values('" + TextBox1.Text + "')";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        Label7.Text = "Notification sent";
        TextBox1.Text = "";
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        clearsavedcart();
    }
    private void clearsavedcart()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";

        String updatedata = "delete from Notification";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("dashboard.aspx");
        Label8.Visible = true;
        Label8.Text = "Notifications cleared";
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        LinkButton1.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int totalemailsent = 0;
        if (DropDownList1.SelectedValue == "Registered Customer")
        {
            String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery = "Select * from Registration";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rowcounter = ds.Tables[0].Rows.Count;
            int i = 0;
            for (i = 0; i < rowcounter; i++)
            {

                sendemail(ds.Tables[0].Rows[i]["email"].ToString(), ds.Tables[0].Rows[i]["name"].ToString(), TextBox2.Text, TextBox3.Text);
                totalemailsent = totalemailsent + 1;
                Label9.Text = rowcounter.ToString();
            }
            Label10.Text = "Total number of " + totalemailsent + " emails sent to Registered Customers Successfully";
        }
        else if(DropDownList1.SelectedValue == "Subscriber")
        {
            String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery = "Select * from Subscribe";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rowcounter = ds.Tables[0].Rows.Count;
            int i = 0;
            for (i = 0; i < rowcounter; i++)
            {

                sendemailtosub(ds.Tables[0].Rows[i]["email"].ToString(), TextBox2.Text, TextBox3.Text);
                totalemailsent = totalemailsent + 1;
               
            }
            Label10.Text = "Total number of " + totalemailsent + " emails sent to Subscribers Successfully";
        }
        
       
    }
    public void sendemail(String email, String name, String subject, String message)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("myusername@gmail.com", "mypassword");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = subject;
        msg.Body = "Dear " + name + "\n\n\n" + message + "\n\nThanks & Regards\nThe Hijab Store Team";
        string toaddress = email;
        msg.To.Add(toaddress);
        string fromaddress = "The Hijab Store <myusername@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
    }
    public void sendemailtosub(String email, String subject, String message)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("myusername@gmail.com", "mypassword");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = subject;
        msg.Body = "Dear subscriber" + "\n\n\n" + message + "\n\nThanks & Regards\nThe Hijab Store Team";
        string toaddress = email;
        msg.To.Add(toaddress);
        string fromaddress = "The Hijab Store <myusername@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Registered Customer")
        {
            String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery = "Select * from Registration";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rowcounter = ds.Tables[0].Rows.Count;
            int i = 0;
            for (i = 0; i < rowcounter; i++)
            {
                Label9.Text = rowcounter.ToString();
            }
        }
        else if (DropDownList1.SelectedValue == "Subscriber")
        {
            String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery = "Select * from Subscribe";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rowcounter = ds.Tables[0].Rows.Count;
            int i = 0;
            for (i = 0; i < rowcounter; i++)
            {
                Label9.Text = rowcounter.ToString();
            }
        }
    }

}
