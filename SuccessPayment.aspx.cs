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
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Transaction ID :" + Request.Form["txnid"] + " has been successfully Completed";
        if (Session["buyitems"] != null)
        {
            if (!IsPostBack)
            {
                DataTable dt1;
                dt1 = (DataTable)Session["buyitems"];
                int designid;
                int quantity;
                foreach (DataRow row in dt1.Rows)
                {
                    designid = Convert.ToInt16(row["productid"].ToString());
                    quantity = Convert.ToInt16(row["quantity"].ToString());

                    updatestock(designid, quantity);
                }
                clearsavedcart();
                Session["buyitems"] = null;
                //Response.Redirect("SuccessPayment.aspx");
            }
        }


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
        con.Close();

    }

    private void updatestock(int designid, int numbersold)
    {
        int pavailable = 0;
        int psold = 0;
        String mycon = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        String myquery = "Select * from ProductDetail where ProductID=" + designid;
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            pavailable = Convert.ToInt16(ds.Tables[0].Rows[0]["Stockavailable"].ToString());
            psold = Convert.ToInt16(ds.Tables[0].Rows[0]["Soldout"].ToString());

        }
        con.Close();
        String mycon1 = "Data Source=CO\\SQLEXPRESS; Initial Catalog=HaritiShopping; Integrated Security=True";
        int newavailable;
        int newsold;
        if (pavailable >= numbersold)
        {
            newavailable = pavailable - numbersold;
            newsold = psold + numbersold;
            String updatedata = "Update ProductDetail set Stockavailable=" + newavailable + ", Soldout=" + newsold + " where ProductID=" + designid;
            SqlConnection con1 = new SqlConnection(mycon1);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatedata;
            cmd1.Connection = con1;
            cmd1.ExecuteNonQuery();
            con1.Close();
        }



    }



}