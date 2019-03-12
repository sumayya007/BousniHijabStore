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
        if (!IsPostBack)
        {
            getmenuid();
        }
    }
    public void getmenuid()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select MenuID from Menu";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            Label7.Text = "1";

        }
        else
        {



            String mycon1 = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(MenuID) from Menu";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label7.Text = ds1.Tables[0].Rows[0][0].ToString();
            int a;
            a = Convert.ToInt16(Label7.Text);
            a = a + 1;
            Label7.Text = a.ToString();
            scon1.Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string location = "~/Default.aspx";
        string parentid = "2";
        String query = "insert into Menu(MenuID,MenuName,MenuLocation,ParentID) values('" + Label7.Text + "','" + TextBox1.Text + "','" + location + "','" + parentid + "')";
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=true";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label2.Visible = true;
        Label2.Text = "Category Has Been Successfully Saved";
        getmenuid();
    }
}