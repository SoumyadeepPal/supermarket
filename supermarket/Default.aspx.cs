using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace supermarket
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session.IsNewSession != true && Session["Id"] != null && Session["Tid"] != null)
            {
                this.Page.MasterPageFile = "~/RegisteredUserHomePage.master";
            }
            else
            {
                this.Page.MasterPageFile = "~/HomePage.master";
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource SqlData = new SqlDataSource();
            SqlData.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            SqlData.SelectCommand = "SELECT [product_id], [product_name], [product_desc], [product_price], [product_stock], [product_cdate], [product_image1], [product_image2], [category_id] FROM [Product]";

            Repeater1.DataSource = SqlData;
            Repeater1.DataBind();
        }
    }
}