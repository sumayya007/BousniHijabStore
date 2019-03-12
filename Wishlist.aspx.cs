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
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "select * from ProductDetail where ProductID IN(select ProductID from Wishlist where name='" + Session["username"].ToString() + "')";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        clearwishlist();
        Label1.Text = "Your WishList is empty!!";
        Response.Write("<script>alert('Items from your Wish List has been removed');</script>");
    }
    private void clearwishlist()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";

        String updatedata = "delete from Wishlist where name='" + Session["username"].ToString() + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str = GridView1.DataKeys[e.RowIndex].Value.ToString();
        SqlConnection conn = new SqlConnection("Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True");
        conn.Open();
        SqlCommand obj = new SqlCommand("delete from Wishlist where name='" + Session["username"].ToString() + "' and ProductID ='" + str + "'", conn);
        obj.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("WishList.aspx");


    }
}