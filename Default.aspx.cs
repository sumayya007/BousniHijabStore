using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        Session["addproduct"] = "false";

        Label9.Text = Session["username"].ToString();  
      
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
   

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
         
        string lb = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label8")).Text;
        string warning = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label13")).Text;
        Session["addproduct"] = "true";
        int qnty = Convert.ToInt16(dlist.SelectedItem.ToString());
        int stock = Convert.ToInt16(lb.ToString());
        if(qnty>stock)
        {
            ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label13")).Text= "Ordered amount has exceeded the stock available";
        }
        else
        {
            Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
        

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
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
            Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist2.SelectedItem.ToString());
        }
    }






    

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

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


    }
    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {

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
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        DataList1.Visible = false;
        DataList2.Visible = true;
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
}