using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class canceledorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AId"] == null)
            {
                Response.Redirect("~/default.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = "SELECT [cart_id], [product_id], [cart_quantity], [cart_product_name], [cart_productSubPrice], [cart_subTotal], [cart_cdate], [cart_transid], [cart_status], [user_id] FROM [Cart] WHERE [cart_status] = @cart_status";

            SqlDataSource1.SelectParameters.Add("cart_status", "Pending");

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}