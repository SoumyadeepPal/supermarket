using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class orders : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["AdminName"] == null && Session["AId"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT order_id, cart_transid, order_customerName, order_total, order_payment, user_id FROM [Order]";

            //SqlDataSource1.DataBind();

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}