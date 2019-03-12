using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void fillsavedCart()
    {
        System.Data.DataTable dt = new System.Data.DataTable();
        DataRow dr;
        dt.Columns.Add("sno");
        dt.Columns.Add("productid");
        dt.Columns.Add("productname");
        dt.Columns.Add("quantity");
        dt.Columns.Add("price");
        dt.Columns.Add("totalprice");
        dt.Columns.Add("productimage");

        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from SavedCartDetail where username='" + Session["username"].ToString() + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int i = 0;
            int counter = ds.Tables[0].Rows.Count;
            while (i < counter)
            {
                dr = dt.NewRow();
                dr["sno"] = i + 1;
                dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
                dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                dr["productimage"] = ds.Tables[0].Rows[i]["productimage"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price1 = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity1 = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice1 = price1 * quantity1;
                dr["totalprice"] = totalprice1;
                dt.Rows.Add(dr);
                i = i + 1;
            }

        }
        else
        {
            Session["buyitems"] = null;
        }
        Session["buyitems"] = dt;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=co\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=true");
        conn.Open();
        SqlCommand obj = new SqlCommand("select * from Login where name='" + TextBox1.Text + "'", conn);
        SqlDataAdapter myobj = new SqlDataAdapter(obj);
        DataTable dt = new DataTable();
        myobj.Fill(dt);
        string uname;
        string pass;
        uname = dt.Rows[0]["name"].ToString();
        pass = dt.Rows[0]["password"].ToString();
        if (uname == TextBox1.Text && pass == TextBox2.Text)
        {
            Session["username"] = uname;
            Session["buyitems"] = null;
            fillsavedCart();
            getregid();
            Response.Redirect("newdefault.aspx");
        }
        else
        {
            Label1.Text = "Invalid username or password";
        }
        conn.Close();
    }
    public void getregid()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select regid from Registration where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
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
            Session["regid"] = ds.Tables[0].Rows[0]["regid"].ToString();
        }
        con.Close();
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