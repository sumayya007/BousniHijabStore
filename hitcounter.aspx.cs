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
        updatecounter();
        findView();
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
        Label5.Text =  ds.Tables[0].Rows[0]["viewcount"].ToString();
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
}