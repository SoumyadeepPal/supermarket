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
    public partial class category_add : System.Web.UI.Page
    {
        protected void btnCategoryAdd_Click(object sender, EventArgs e)
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.InsertCommand = "INSERT INTO Category (category_name) VALUES (@category_name)";
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            SqlDataSource1.InsertParameters.Add("category_name", System.Data.DbType.String, txtCateoryName.Text.ToString().Trim());
            SqlDataSource1.Insert();

            Response.Redirect("categories.aspx");
        }   
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}