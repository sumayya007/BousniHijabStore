using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aboutusstart : System.Web.UI.Page
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

}