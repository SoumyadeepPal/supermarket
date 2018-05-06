using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class product_delete : System.Web.UI.Page
    {
        protected string pro_id;
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["AId"] == null)
            {
                Response.Redirect("~/default.aspx");
            }

            pro_id = Request.QueryString.Get("pid").ToString();
            if (pro_id == String.Empty)
            {
                Response.Redirect("products.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT Category.category_id, Category.category_name, Product.product_name, Product.product_desc, Product.product_price, Product.product_stock, Product.product_image1, Product.product_image2, Product.product_image3, Product.category_id AS cat_id, Product.product_id FROM Product INNER JOIN Category ON Product.product_id = @product_id";

            SqlDataSource1.SelectParameters.Add("product_id", pro_id);

            DataSourceSelectArguments args = new DataSourceSelectArguments();

            FormView1.DataSource = SqlDataSource1;
            FormView1.DataBind();
            SqlDataSource1.Dispose();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProductYes_Click(object sender, EventArgs e)
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.DeleteCommand = "DELETE FROM [Product] WHERE [product_id] = @product_id";
            SqlDataSource1.DeleteParameters.Add("product_id", pro_id);
            SqlDataSource1.Delete();
            Response.Redirect("products.aspx");
        }

        protected void btnProductNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx");
        }
    }
}