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
        showgrid();
    }
    public void showgrid()
    {
        
        SqlConnection conn = new SqlConnection("Data Source = CO\\SQLEXPRESS; Initial Catalog = ShoppingData; Integrated Security = true");
        conn.Open();
        SqlCommand obj = new SqlCommand("select productid,productname,price,quantity from orderhistory where regid='" + Session["regid"] + "'", conn);
        SqlDataAdapter ds = new SqlDataAdapter(obj);
        DataTable dt = new DataTable();
        ds.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        conn.Close();
    }
}