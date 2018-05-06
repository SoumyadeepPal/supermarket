using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

namespace supermarket.admin
{
    public partial class category_update : System.Web.UI.Page
    {
        protected string cat_id;
        protected void Page_Init(object sender, EventArgs e)
        {

            if (Session["AId"] == null)
            {
                Response.Redirect("~/default.aspx");
            }

            cat_id = Request.QueryString.Get("cat_id").ToString();
            if (string.IsNullOrEmpty(cat_id))
            {
                Response.Redirect("category_add.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT [category_id], [category_name] FROM [Category] WHERE [category_id] = @cat_id";
            SqlDataSource1.SelectParameters.Add("cat_id", cat_id);

            DataSourceSelectArguments args = new DataSourceSelectArguments();

            DataView dv = SqlDataSource1.Select(args) as DataView;
            string name = dv.Table.Rows[0][1].ToString();

            txtCateoryName.Text = name;
            dv.Dispose();
            SqlDataSource1.Dispose();
        }

        protected void btnCategoryEdit_Click1(object sender, EventArgs e)
        {

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.UpdateCommand = "UPDATE Category SET category_name = @category_name WHERE category_id = @cat_id";
            SqlDataSource1.UpdateCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.UpdateParameters.Add("cat_id", DbType.Int32, cat_id);
            SqlDataSource1.UpdateParameters.Add("category_name", txtCateoryName.Text.ToString().Trim());
            SqlDataSource1.Update();
            //SqlDataSource1.Dispose();
            Response.Redirect("categories.aspx");
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}