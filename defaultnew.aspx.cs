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
        Session["addproduct"] = "false";

        Label9.Text = Session["username"].ToString();

        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

            Label1.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label1.Text = "0";

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        DataList2.Visible = false;
        DataList1.Visible = true;
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        DataList1.Visible = false;
        DataList2.Visible = true;
        DataList2.DataSource = null;
        if (DropDownList2.SelectedItem.Text == "Low to High")
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

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString());
    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        Response.Redirect("addtocartnew.aspx?id=" + e.CommandArgument.ToString());
    }
}