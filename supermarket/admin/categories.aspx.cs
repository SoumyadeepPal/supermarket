using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class categories : System.Web.UI.Page
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
            if (Session["AId"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }


            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT [category_id], [category_name] FROM [Category]";

            SqlDataSource1.DataBind();

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}