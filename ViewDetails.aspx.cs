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
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string disprice = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label6")).Text;
        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        string lb = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label11")).Text;
        string warning = ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label12")).Text;
        Session["addproduct"] = "true";
        int qnty = Convert.ToInt16(dlist.SelectedItem.ToString());
        int stock = Convert.ToInt16(lb.ToString());
        if (qnty > stock)
        {
            ((System.Web.UI.WebControls.Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label12")).Text = "Ordered amount has exceeded the stock available !!";

        }
        else
        {
            Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString()+"&price="+disprice);
        }



    }


    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
        System.Web.UI.WebControls.Label lb1 = e.Item.FindControl("Label4") as System.Web.UI.WebControls.Label;
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

            btn.Enabled = false;
            dp.Enabled = false;
            btn.ImageUrl = "images/soldout.png";

        }



    }
}