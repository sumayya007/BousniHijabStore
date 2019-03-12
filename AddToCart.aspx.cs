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
    static Boolean orderconfirm;
    static int quantityavailable;
    static Boolean availabledesignid = false;
    protected void Page_Load(object sender, EventArgs e)
    {   if(!IsPostBack)
        {
            if (Session["addproduct"].ToString() == "false")
            {
                //directly going to show cart without purchase


                //if (GridView1.Rows.Count > 0)
                //{
                //    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                //    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                //}
                //SqlConnection conn = new SqlConnection(@"Data Source=co\sqlexpress;Initial Catalog=HaritiShopping;Integrated Security=true");
                //conn.Open();
                //SqlCommand obj = new SqlCommand("select sno,productid,productname,productimage,quantity,price,totalprice from SavedCartDetail where username='" + Session["username"] + "'", conn);
                //DataTable df = new DataTable();
                //SqlDataAdapter myobj = new SqlDataAdapter(obj);
                //myobj.Fill(df);
                //if (df.Rows.Count > 0)
                //{
                //    GridView1.DataSource = df;
                //    GridView1.DataBind();
                //}
                //conn.Close();
                //Session["buyitems"] = df;

                DataTable dt2;
                DataRow dr1;
                dt2 = (DataTable)Session["buyitems"];
                int sr;
                sr = dt2.Rows.Count;

                dr1 = dt2.NewRow();
                String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
                SqlConnection scon = new SqlConnection(mycon);
                String myquery = "select sno,productid,productname,productimage,quantity,price,totalprice from SavedCartDetail where username='" + Session["username"] + "'";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = scon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dr1["sno"] = sr + 1;
                dr1["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                dr1["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                dr1["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                dr1["quantity"] = ds.Tables[0].Rows[0]["quantity"].ToString();
                dr1["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                dr1["totalprice"] = ds.Tables[0].Rows[0]["totalprice"].ToString();



                dt2.Rows.Add(dr1);

                GridView1.DataSource = dt2;
                GridView1.DataBind();
                //savecartdetail(sr + 1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), quantity.ToString(), ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                Session["buyitems"] = dt2;
                //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();


                Response.Redirect("AddToCart.aspx");




            }
        }
       
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
                if (Session["Buyitems"] == null)
                {
                    dr = dt.NewRow();
                    String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from ProductDetail where productid=" + Request.QueryString["id"];
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
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                   
                   
                    dt.Rows.Add(dr);
                    //updatequantity();

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    //savecartdetail(1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), quantity.ToString(), ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                    Session["buyitems"] = dt;
                    //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                   
                    Response.Redirect("AddToCart.aspx");


                }
                else
                {
                    checkdesignid();
                    if (availabledesignid == true)
                    {
                        //DataTable dt1;
                        //dt1 = (DataTable)Session["buyitems"];



                        //updatequantity();
                        DataTable dt1;
                        int sr;

                        int designid;
                        int querydesignid = Convert.ToInt16(Request.QueryString["id"]);
                        dt1 = (DataTable)Session["buyitems"];
                        sr = dt1.Rows.Count;
                        foreach (DataRow row in dt1.Rows)
                        {
                            designid = Convert.ToInt16(row["productid"].ToString());
                            if (designid == querydesignid)
                            {
                                int newquantity = Convert.ToInt16(row["quantity"].ToString()) + Convert.ToInt16(Request.QueryString["quantity"].ToString());
                                row["quantity"] = newquantity;
                                Int64 price = Convert.ToInt64(row["price"].ToString());
                                Int64 totalprice = price * newquantity;
                                row["totalprice"] = totalprice;
                                GridView1.DataSource = dt1;
                                GridView1.DataBind();
                                Session["buyitems"] = dt1;

                                //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                                //GridView1.FooterRow.Cells[6].Text = totalprice.ToString();
                                //savecartdetail(sr + 1, row["productid"].ToString(), row["productname"].ToString(), row["productimage"].ToString(), newquantity.ToString(), row["price"].ToString(), totalprice.ToString());
                                break;
                            }
                        }
                        
                        /*grandtotal().ToString();*/

                        
                        availabledesignid = false;
                       

                    }
                    else //first purchase
                    {

                        DataTable dt2;
                        DataRow dr1;
                        dt2 = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt2.Rows.Count;

                        dr1 = dt2.NewRow();
                        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from ProductDetail where productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr1["sno"] = sr + 1;
                        dr1["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr1["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr1["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                        dr1["quantity"] = Request.QueryString["quantity"];
                        dr1["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr1["totalprice"] = totalprice;
                        //updatequantity();
                       
                        dt2.Rows.Add(dr1);

                        GridView1.DataSource = dt2;
                        GridView1.DataBind();
                        //savecartdetail(sr + 1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), quantity.ToString(), ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                        Session["buyitems"] = dt2;
                        //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                       
                        Response.Redirect("AddToCart.aspx");

                    }
                }
            }
            else//display from savedcart
            {
                DataTable dt3 = new DataTable();
                dt3 = (DataTable)Session["buyitems"];


                GridView1.DataSource = dt3;
                GridView1.DataBind();
            }
        }
       

        Label2.Text = GridView1.Rows.Count.ToString();
        if(Label2.Text=="0")
        {
            LinkButton2.Enabled = false;
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
        int sr;
       
        int designid;
        int querydesignid = Convert.ToInt16(Request.QueryString["id"]);
        dt1 = (DataTable)Session["buyitems"];
        sr = dt1.Rows.Count;
        foreach (DataRow row in dt1.Rows)
        {
            designid = Convert.ToInt16(row["productid"].ToString());
            if (designid == querydesignid)
            {
                int newquantity = Convert.ToInt16(row["quantity"].ToString()) + Convert.ToInt16(Request.QueryString["quantity"].ToString());
                row["quantity"] = newquantity;
                Int64 price = Convert.ToInt64(row["price"].ToString());
                Int64 totalprice = price * newquantity;
                row["totalprice"] = totalprice;
                //savecartdetail(sr + 1, row["productid"].ToString(), row["productname"].ToString(), row["productimage"].ToString(), newquantity.ToString(), row["price"].ToString(), totalprice.ToString());
                break;
            }
        }
        Session["buyitems"] = dt1;
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
            Label3.Text = gtotal.ToString();
            i = i + 1;
        }
        Session["tamount"] = gtotal;
        return gtotal;
        
    }

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
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("AddToCart.aspx");
    }

   

    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
    //}
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["buyitems"] = null;
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
        Response.Redirect("Default.aspx");
    }
    //private void savecartdetail(int sno, String productid, String Productname, String productimage, String quantity, String price, String totalprice)
    //{
    //    String query = "insert into SavedCartDetail(sno,productid,productname,productimage,quantity,price,totalprice,username) values(" + sno + ",'" + productid + "','" + Productname + "','" + productimage + "','" + quantity + "','" + price + "','" + totalprice + "','" + Session["username"].ToString() + "')";
    //    String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=true";
    //    SqlConnection con = new SqlConnection(mycon);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = query;
    //    cmd.Connection = con;
    //    cmd.ExecuteNonQuery();
    //}



    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Session.Abandon();
        Response.Redirect("startpage.aspx");
    }



    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //Session["buyitems"] = null;
        clearsavedcart();
    }
}
