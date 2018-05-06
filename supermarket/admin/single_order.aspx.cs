using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class single_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AId"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }

            string tid = Request.QueryString.Get("tid").ToString();
            if (string.IsNullOrEmpty(tid))
            {
                Response.Redirect("orders.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT cart_id, cart_quantity, cart_product_name, cart_productSubPrice, cart_subTotal, cart_cdate, cart_transid FROM Cart WHERE cart_transid = @tid";

            
            SqlDataSource1.SelectParameters.Add("tid", tid);

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}