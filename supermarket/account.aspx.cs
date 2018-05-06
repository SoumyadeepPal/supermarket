using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class account : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session.IsNewSession != true && Session["Id"] != null && Session["Tid"] != null)
            {
                this.Page.MasterPageFile = "~/RegisteredUserSite.master";
            }
            else
            {
                this.Page.MasterPageFile = "~/Site.master";
            }

        }


        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["Id"] == null && Session["Tid"] == null)
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = "SELECT [cart_id], [product_id], [cart_quantity], [cart_product_name], [cart_productSubPrice], [cart_subTotal], [cart_cdate], [cart_transid], [cart_status], [user_id] FROM [Cart] WHERE [cart_status] = @cart_status AND [user_id] = @user_id";

            SqlDataSource1.SelectParameters.Add("cart_status", "Paid");
            SqlDataSource1.SelectParameters.Add("user_id", Session["Id"].ToString());

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}