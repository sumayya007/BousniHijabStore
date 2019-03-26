using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class startpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
            Label1.Text = ds.Tables[0].Rows[0]["message"].ToString();
        }
        else
        {
            tag.Visible = false;
        }
        scon.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String updatedata = "insert into Subscribe(email) values('" + TextBox1.Text + "')";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        Label2.Visible = true;
        Label2.Text = "You have been successfully Subscribed";

        sendEmailnew(TextBox1.Text);
        TextBox1.Text = "";
    }
   
    private void sendemail(String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("myusername@gmail.com", "mypassword");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello Subscriber ( The Hijab Store)";
        msg.Body = "Dear , Your Password is \n\n\nThanks & Regards\nThe Hijab Store Team";
        string toaddress = TextBox1.Text;
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
    public void sendEmailnew(string email)
    {
        if (String.IsNullOrEmpty(email))
            return;
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email);
           // mail.To.Add("xxx@gmail.com");
            mail.From = new MailAddress("myusername@gmail.com");
            mail.Subject = "sub";

            mail.Body = "Dear , Your Password is \n\n\nThanks & Regards\nThe Hijab Store Team";

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("myusername@gmail.com", "mypassword"); // ***use valid credentials***
            smtp.Port = 587;

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            Response.Write("Exception in sendEmail:" + ex.Message);
        }
    }
}
