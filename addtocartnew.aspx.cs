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
    static Boolean availabledesignid = false;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["addproduct"].ToString() == "true")
        {
            Session["addproduct"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("productimage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from ProductDetail where ProductID=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                    dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                   
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = Request.QueryString["price"];
                    int price = Convert.ToInt16(Request.QueryString["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                }
                else
                {
                    checkdesignid();
                    if (availabledesignid == true)
                    {
                        //Response.Write("productid " + Request.QueryString["id"] + " " + availabledesignid);
                        updatequantity();
                        DataTable dt1;
                        dt1 = (DataTable)Session["buyitems"];
                        GridView1.DataSource = dt1;
                        GridView1.DataBind();
                        availabledesignid = false;
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from ProductDetail where ProductID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                       
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = Request.QueryString["price"];
                        int price = Convert.ToInt16(Request.QueryString["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }


                }
            }


        }
        else
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
       Label1.Text= GridView1.Rows.Count.ToString();
        if (GridView1.Rows.Count == 0)
        {
            LinkButton3.Enabled = false;
        }
        else
        {
            LinkButton3.Enabled = true;
        }

    }
    private void checkdesignid()
    {
        DataTable dt1;
        int designid;
        int querydesignid = Convert.ToInt16(Request.QueryString["id"]);
        dt1 = (DataTable)Session["buyitems"];
        foreach (DataRow row in dt1.Rows)
        {
            designid = Convert.ToInt16(row["productid"].ToString());
            if (designid == querydesignid)
            {
                availabledesignid = true;
            }
        }
    }
    private void updatequantity()
    {
        DataTable dt1;
        int designid;
        int querydesignid = Convert.ToInt16(Request.QueryString["id"]);
        dt1 = (DataTable)Session["buyitems"];
        foreach (DataRow row in dt1.Rows)
        {
            designid = Convert.ToInt16(row["productid"].ToString());
            if (designid == querydesignid)
            {
                int newquantity = Convert.ToInt16(row["quantity"].ToString()) + Convert.ToInt16(Request.QueryString["quantity"].ToString());
                row["quantity"] = newquantity;
                int price = Convert.ToInt16(Request.QueryString["price"].ToString());
                int totalprice = price * newquantity;
                row["totalprice"] = totalprice;
                break;
            }
        }
        Session["buyitems"] = dt1;
    }
    //public int grandtotal()
    //{
    //    DataTable dt = new DataTable();
    //    dt = (DataTable)Session["buyitems"];
    //    int nrow = dt.Rows.Count;
    //    int i = 0;
    //    int gtotal = 0;
    //    while (i < nrow)
    //    {
    //        gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

    //        i = i + 1;
    //    }
    //    return gtotal;
    //}

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                Label2.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }
        Session["buyitems"] = dt;
        Response.Redirect("addtocartnew.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["buyitems"] = null;
        clearsavedcart();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //Session["buyitems"] = null;
        clearsavedcart();
    }

    private void clearsavedcart()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";

        String updatedata = "delete from SavedCartDetail where username='" + Session["username"].ToString() + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("newdefault.aspx");
    }
}
    