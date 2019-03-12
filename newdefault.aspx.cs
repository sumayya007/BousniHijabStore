using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newdefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getMenu();
            if (Request.QueryString["addtowishlist"] != null && Session["username"] != null)
            {

                String query = "insert into Wishlist(name,ProductID) values('" + Session["username"].ToString() + "'," + Request.QueryString["addtowishlist"].ToString() + ")";
                String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                // Response.Write("<script>alert('Product Added in Wishlist');</script>");
            }
            if (Session["username"] == null)
            {
                if (Request.QueryString["addtowishlist"] != null)
                {
                    Response.Write("<script>alert('Login to Your Account First. No Product Added in WishList');</script>");
                }
                //Label7.Text = "Hello Guest,";
                //LinkButton1.Visible = true;
                //LinkButton2.Visible = false;
                //LinkButton3.Visible = false;
            }
        }
        //else
        //{
        //    Label7.Text = "Hello " + Session["username"].ToString();
        //    LinkButton2.Visible = true;
        //    LinkButton1.Visible = false;
        //    LinkButton3.Visible = true;
        //}


        Session["addproduct"] = "false";

        Label20.Text = Session["username"].ToString();

        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

            Label3.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label3.Text = "0";

        }


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
    private void getMenu()
    {
        String mycon = "Data Source=CO\\SQLEXPRESS;Initial Catalog=HaritiShopping;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        String myquery = "Select * from Menu";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);

        //SqlConnection con = new SqlConnection("Data Source=co\\express;Initial Catalog=HaritiShopping;Integrated Security=true");
        //con.Open();
        //DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        //string sql = "Select * from Menu";
        //SqlDataAdapter da = new SqlDataAdapter(sql, con);
        //da.Fill(ds);
        dt = ds.Tables[0];
        DataRow[] drowpar = dt.Select("ParentID=" + 0);

        foreach (DataRow dr in drowpar)
        {
            menuBar.Items.Add(new MenuItem(dr["MenuName"].ToString(),
                    dr["MenuID"].ToString(), "",
                    dr["MenuLocation"].ToString()));
        }

        foreach (DataRow dr in dt.Select("ParentID >" + 0))
        {
            MenuItem mnu = new MenuItem(dr["MenuName"].ToString(),
                           dr["MenuID"].ToString(),
                           "", dr["MenuLocation"].ToString());
            menuBar.FindItem(dr["ParentID"].ToString()).ChildItems.Add(mnu);
        }
        con.Close();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string disprice1 = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label7")).Text;
        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString()+"&price="+disprice1);
        }
        ImageButton btn3 = e.Item.FindControl("ImageButton3") as ImageButton;
        if (btn3.Enabled == true)
        {
            Response.Redirect("newdefault.aspx?addtowishlist=" + e.CommandArgument.ToString());
        }

        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        
        string lb = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label8")).Text;
        string warning = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label13")).Text;
        Session["addproduct"] = "true";
        int qnty = Convert.ToInt16(dlist.SelectedItem.ToString());
        int stock = Convert.ToInt16(lb.ToString());
        
        if (qnty > stock)
        {
            ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label13")).Text = "Ordered amount has exceeded the stock available";
        }
        else
        {
            
            Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString()+"&price="+disprice1);
        }




    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string disprice2 = ((System.Web.UI.WebControls.Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label11")).Text;
        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString() + "&price=" + disprice2);
        }
        ImageButton btn4 = e.Item.FindControl("ImageButton4") as ImageButton;
        if (btn4.Enabled == true)
        {
            Response.Redirect("newdefault.aspx?addtowishlist=" + e.CommandArgument.ToString());
        }

        DropDownList dlist2 = (DropDownList)(e.Item.FindControl("DropDownList5"));
        
        string lb2 = ((System.Web.UI.WebControls.Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label12")).Text;
        string warning2 = ((System.Web.UI.WebControls.Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label14")).Text;
        Session["addproduct"] = "true";
        int qnty = Convert.ToInt16(dlist2.SelectedItem.ToString());
        int stock = Convert.ToInt16(lb2.ToString());
        if (qnty > stock)
        {
            ((System.Web.UI.WebControls.Label)DataList2.Items[e.Item.ItemIndex].FindControl("Label14")).Text = "Ordered amount has exceeded the stock available";
        }
        else
        {
            Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist2.SelectedItem.ToString() + "&price=" + disprice2);
        }

    }








    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (Session["username"] != null)
        {
            //System.Web.UI.WebControls.Label lbb = e.Item.FindControl("Label6") as System.Web.UI.WebControls.Label;
            ImageButton btnn = e.Item.FindControl("ImageButton3") as ImageButton;
            System.Web.UI.WebControls.Label lbb1 = e.Item.FindControl("Label5") as System.Web.UI.WebControls.Label;
            String mycon1 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery1 = "Select * from Wishlist where ProductID=" + lbb1.Text + " and name='" + Session["username"] + "'";
            SqlConnection con1 = new SqlConnection(mycon1);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = con1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            if (ds1.Tables[0].Rows.Count > 0)
            {
                //lbb.Text = "Already in Wishlist ";

                btnn.ImageUrl = "images/wishtrue.png";
                btnn.Enabled = false;
            }
            else
            {
                // lbb.Text = "Click Heart to Add in Wishlist";
                btnn.ImageUrl = "images/wishfalse.png";
            }
            con1.Close();
        }
        else
        {
            // System.Web.UI.WebControls.Label lbb = e.Item.FindControl("Label6") as System.Web.UI.WebControls.Label;
            ImageButton btnn = e.Item.FindControl("ImageButton3") as ImageButton;
            // lbb.Text = "Click Heart to Add in Wishlist";
            btnn.ImageUrl = "images/iconfalse.png";

        }



        System.Web.UI.WebControls.Label lb = e.Item.FindControl("Label8") as System.Web.UI.WebControls.Label;
        ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
        System.Web.UI.WebControls.Label lb1 = e.Item.FindControl("Label5") as System.Web.UI.WebControls.Label;
        DropDownList dp = e.Item.FindControl("DropDownList1") as DropDownList;

        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select * from StockDetail where productid=" + lb1.Text;
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String stockdata = "";

        if (ds.Tables[0].Rows.Count > 0)
        {
            stockdata = ds.Tables[0].Rows[0]["stockavailable"].ToString();

        }
        con.Close();

        if (stockdata == "0")
        {
            lb.Text = "0";
            btn.Enabled = false;
            dp.Enabled = false;
            btn.ImageUrl = "images/soldout.png";

        }
        else
        {
            lb.Text = stockdata;
        }



        Int64 originalprice;
        Int64 discount;
        Int64 discountprice;
        Int64 newprice;
        HyperLink hyp = e.Item.FindControl("sticker") as HyperLink;
        System.Web.UI.WebControls.Label label2 = e.Item.FindControl("Label21") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label labelll2 = e.Item.FindControl("Label22") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label labb1 = e.Item.FindControl("Label7") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label lab3 = e.Item.FindControl("Label5") as System.Web.UI.WebControls.Label;
        String mycon11 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery11 = "Select * from ProductDetail where ProductID=" + lab3.Text;
        SqlConnection con11 = new SqlConnection(mycon11);
        SqlCommand cmd11 = new SqlCommand();
        cmd11.CommandText = myquery11;
        cmd11.Connection = con11;
        SqlDataAdapter da11 = new SqlDataAdapter();
        da11.SelectCommand = cmd11;
        DataSet ds11 = new DataSet();
        da11.Fill(ds11);


        if (ds11.Tables[0].Rows.Count > 0)
        {
            originalprice = Convert.ToInt64(ds11.Tables[0].Rows[0]["Price"].ToString());
            discount = Convert.ToInt64(ds11.Tables[0].Rows[0]["discount"].ToString());
            if (discount > 0)
            {
                discountprice = (originalprice * discount) / 100;
                newprice = originalprice - discountprice;
                //label2.Text = "Discount ( " + discount.ToString() + "% ) Rs." + discountprice.ToString();
                hyp.Visible = true;
                label2.Visible = true;
                label2.Text = "" + discount.ToString() + "% Off";
                labb1.Text = newprice.ToString();
                labelll2.Text = originalprice.ToString();
            }
            else
            {
                //labb1.Text = "Rs." + originalprice.ToString();
                label2.Visible = false;
                labelll2.Visible = false;

                //label2 = System.Drawing.Color.Transparent;
            }
        }

        con11.Close();


    }
    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (Session["username"] != null)
        {
            //System.Web.UI.WebControls.Label lbb = e.Item.FindControl("Label6") as System.Web.UI.WebControls.Label;
            ImageButton btnn = e.Item.FindControl("ImageButton4") as ImageButton;
            System.Web.UI.WebControls.Label lbb1 = e.Item.FindControl("Label9") as System.Web.UI.WebControls.Label;
            String mycon1 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery1 = "Select * from Wishlist where ProductID=" + lbb1.Text + " and name='" + Session["username"] + "'";
            SqlConnection con1 = new SqlConnection(mycon1);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = con1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            if (ds1.Tables[0].Rows.Count > 0)
            {
                //lbb.Text = "Already in Wishlist ";

                btnn.ImageUrl = "images/wishtrue.png";
                btnn.Enabled = false;
            }
            else
            {
                // lbb.Text = "Click Heart to Add in Wishlist";
                btnn.ImageUrl = "images/wishfalse.png";
            }
            con1.Close();
        }
        else
        {
            // System.Web.UI.WebControls.Label lbb = e.Item.FindControl("Label6") as System.Web.UI.WebControls.Label;
            ImageButton btnn = e.Item.FindControl("ImageButton4") as ImageButton;
            // lbb.Text = "Click Heart to Add in Wishlist";
            btnn.ImageUrl = "images/iconfalse.png";

        }

        System.Web.UI.WebControls.Label lb = e.Item.FindControl("Label12") as System.Web.UI.WebControls.Label;
        ImageButton btn = e.Item.FindControl("ImageButton2") as ImageButton;
        System.Web.UI.WebControls.Label lb1 = e.Item.FindControl("Label9") as System.Web.UI.WebControls.Label;
        DropDownList dp = e.Item.FindControl("DropDownList5") as DropDownList;

        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select * from StockDetail where productid=" + lb1.Text;
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String stockdata = "";

        if (ds.Tables[0].Rows.Count > 0)
        {
            stockdata = ds.Tables[0].Rows[0]["stockavailable"].ToString();

        }
        con.Close();

        if (stockdata == "0")
        {
            lb.Text = "0";
            btn.Enabled = false;
            dp.Enabled = false;
            btn.ImageUrl = "images/soldout.png";

        }
        else
        {
            lb.Text = stockdata;
        }

        Int64 originalprice;
        Int64 discount;
        Int64 discountprice;
        Int64 newprice;
        HyperLink hyp = e.Item.FindControl("sticker") as HyperLink;
        System.Web.UI.WebControls.Label label2 = e.Item.FindControl("Label23") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label labelll2 = e.Item.FindControl("Label24") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label labb1 = e.Item.FindControl("Label11") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label lab3 = e.Item.FindControl("Label9") as System.Web.UI.WebControls.Label;
        String mycon11 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery11 = "Select * from ProductDetail where ProductID=" + lab3.Text;
        SqlConnection con11 = new SqlConnection(mycon11);
        SqlCommand cmd11 = new SqlCommand();
        cmd11.CommandText = myquery11;
        cmd11.Connection = con11;
        SqlDataAdapter da11 = new SqlDataAdapter();
        da11.SelectCommand = cmd11;
        DataSet ds11 = new DataSet();
        da11.Fill(ds11);


        if (ds11.Tables[0].Rows.Count > 0)
        {
            originalprice = Convert.ToInt64(ds11.Tables[0].Rows[0]["Price"].ToString());
            discount = Convert.ToInt64(ds11.Tables[0].Rows[0]["discount"].ToString());
            if (discount > 0)
            {
                discountprice = (originalprice * discount) / 100;
                newprice = originalprice - discountprice;
                hyp.Visible = true;
                label2.Visible = true;
                label2.Text = "" + discount.ToString() + "% Off";
                // label2.Text = "Discount ( " + discount.ToString() + "% ) Rs." + discountprice.ToString();
                labb1.Text =newprice.ToString();
                labelll2.Text = originalprice.ToString();
            }
            else
            {
                labb1.Text = "Rs." + originalprice.ToString();
                label2.Visible = false;
                labelll2.Visible = false;
            }
        }

        con11.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("addtocartnew.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        Panel1.Visible = true;
        Panel2.Visible = false;
        DataList2.Visible = false;
        DataList1.Visible = true;
        Panel3.Visible = false;
        DataList3.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        DataList1.Visible = false;
        DataList2.Visible = true;
        Panel3.Visible = false;
        DataList3.Visible = false;
        DataList2.DataSource = null;
        if (DropDownList6.SelectedItem.Text == "Low to High")
        {

            DataList2.DataSource = SqlDataSource3;
            DataList2.DataBind();
        }
        else
        {

            DataList2.DataSource = SqlDataSource4;
            DataList2.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            DataList2.Visible = false;
            DataList1.Visible = false;
            Panel3.Visible = true;
            DataList3.Visible = true;
            DataList3.DataSourceID = null;
            DataList3.DataSource = SqlDataSource5;
            DataList3.DataBind();
        }

    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string disprice3 = ((System.Web.UI.WebControls.Label)DataList3.Items[e.Item.ItemIndex].FindControl("Label17")).Text;
        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString() + "&price=" + disprice3);
        }
        ImageButton btn6 = e.Item.FindControl("ImageButton6") as ImageButton;
        if (btn6.Enabled == true)
        {
            Response.Redirect("newdefault.aspx?addtowishlist=" + e.CommandArgument.ToString());
        }

        DropDownList dlist3 = (DropDownList)(e.Item.FindControl("DropDownList6"));
        
        string lb3 = ((System.Web.UI.WebControls.Label)DataList3.Items[e.Item.ItemIndex].FindControl("Label18")).Text;
        string warning3 = ((System.Web.UI.WebControls.Label)DataList3.Items[e.Item.ItemIndex].FindControl("Label19")).Text;
        Session["addproduct"] = "true";
        int qnty = Convert.ToInt16(dlist3.SelectedItem.ToString());
        int stock = Convert.ToInt16(lb3.ToString());
        if (qnty > stock)
        {
            ((System.Web.UI.WebControls.Label)DataList3.Items[e.Item.ItemIndex].FindControl("Label19")).Text = "Ordered amount has exceeded the stock available";
        }
        else
        {
            Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist3.SelectedItem.ToString() + "&price=" + disprice3);
        }

    }

    protected void DataList3_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (Session["username"] != null)
        {
            //System.Web.UI.WebControls.Label lbb = e.Item.FindControl("Label6") as System.Web.UI.WebControls.Label;
            ImageButton btnn = e.Item.FindControl("ImageButton6") as ImageButton;
            System.Web.UI.WebControls.Label lbb3 = e.Item.FindControl("Label15") as System.Web.UI.WebControls.Label;
            String mycon1 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
            String myquery1 = "Select * from Wishlist where ProductID=" + lbb3.Text + " and name='" + Session["username"] + "'";
            SqlConnection con1 = new SqlConnection(mycon1);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = con1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            if (ds1.Tables[0].Rows.Count > 0)
            {
                //lbb.Text = "Already in Wishlist ";

                btnn.ImageUrl = "images/wishtrue.png";
                btnn.Enabled = false;
            }
            else
            {
                // lbb.Text = "Click Heart to Add in Wishlist";
                btnn.ImageUrl = "images/wishfalse.png";
            }
            con1.Close();
        }
        else
        {
            // System.Web.UI.WebControls.Label lbb = e.Item.FindControl("Label6") as System.Web.UI.WebControls.Label;
            ImageButton btnn = e.Item.FindControl("ImageButton6") as ImageButton;
            // lbb.Text = "Click Heart to Add in Wishlist";
            btnn.ImageUrl = "images/iconfalse.png";

        }

        System.Web.UI.WebControls.Label lb = e.Item.FindControl("Label18") as System.Web.UI.WebControls.Label;
        ImageButton btn = e.Item.FindControl("ImageButton5") as ImageButton;
        System.Web.UI.WebControls.Label lb1 = e.Item.FindControl("Label15") as System.Web.UI.WebControls.Label;
        DropDownList dp = e.Item.FindControl("DropDownList6") as DropDownList;

        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select * from StockDetail where productid=" + lb1.Text;
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String stockdata = "";

        if (ds.Tables[0].Rows.Count > 0)
        {
            stockdata = ds.Tables[0].Rows[0]["stockavailable"].ToString();

        }
        con.Close();

        if (stockdata == "0")
        {
            lb.Text = "0";
            btn.Enabled = false;
            dp.Enabled = false;
            btn.ImageUrl = "images/soldout.png";

        }
        else
        {
            lb.Text = stockdata;
        }

        Int64 originalprice;
        Int64 discount;
        Int64 discountprice;
        Int64 newprice;
        HyperLink hyp = e.Item.FindControl("sticker") as HyperLink;
        System.Web.UI.WebControls.Label label2 = e.Item.FindControl("Label25") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label labelll2 = e.Item.FindControl("Label26") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label labb1 = e.Item.FindControl("Label17") as System.Web.UI.WebControls.Label;
        System.Web.UI.WebControls.Label lab3 = e.Item.FindControl("Label15") as System.Web.UI.WebControls.Label;
        String mycon11 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery11 = "Select * from ProductDetail where ProductID=" + lab3.Text;
        SqlConnection con11 = new SqlConnection(mycon11);
        SqlCommand cmd11 = new SqlCommand();
        cmd11.CommandText = myquery11;
        cmd11.Connection = con11;
        SqlDataAdapter da11 = new SqlDataAdapter();
        da11.SelectCommand = cmd11;
        DataSet ds11 = new DataSet();
        da11.Fill(ds11);


        if (ds11.Tables[0].Rows.Count > 0)
        {
            originalprice = Convert.ToInt64(ds11.Tables[0].Rows[0]["Price"].ToString());
            discount = Convert.ToInt64(ds11.Tables[0].Rows[0]["discount"].ToString());
            if (discount > 0)
            {
                discountprice = (originalprice * discount) / 100;
                newprice = originalprice - discountprice;
                hyp.Visible = true;
                label2.Visible = true;
                label2.Text = "" + discount.ToString() + "% Off";
                //label2.Text = "Discount ( " + discount.ToString() + "% ) Rs." + discountprice.ToString();
                labb1.Text =newprice.ToString();
                labelll2.Text = originalprice.ToString();
            }
            else
            {
                labb1.Text = "Rs." + originalprice.ToString();
                label2.Visible = false;
                labelll2.Visible = false;
            }
        }

        con11.Close();
    }


}
