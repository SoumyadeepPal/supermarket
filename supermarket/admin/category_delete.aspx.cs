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
    public partial class category_delete : System.Web.UI.Page
    {
        protected string cat_id;
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["AId"] == null)
            {
                Response.Redirect("~/default.aspx");
            }

            cat_id = Request.QueryString.Get("cat_id").ToString();
            if (cat_id == String.Empty)
            {
                Response.Redirect("category_add.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT [category_id], [category_name] FROM [Category] WHERE [category_id] = @cat_id";
            SqlDataSource1.SelectParameters.Add("cat_id", cat_id);

            DataSourceSelectArguments args = new DataSourceSelectArguments();

            //DataView dv = SqlDataSource1.Select(args) as DataView;
            //string id = dv.Table.Rows[0][0].ToString();
            //string name = dv.Table.Rows[0][1].ToString();

            FormView1.DataSource = SqlDataSource1;
            FormView1.DataBind();
            //txtCateoryName.Text = name;
            //dv.Dispose();
            SqlDataSource1.Dispose();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCategoryYes_Click(object sender, EventArgs e)
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.DeleteCommand = "DELETE FROM [Category] WHERE [category_id] = @category_id";
            SqlDataSource1.DeleteParameters.Add("category_id", cat_id);
            SqlDataSource1.Delete();
            Response.Redirect("categories.aspx");
        }

        protected void btnCategoryNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("categories.aspx");
        }
    }
}