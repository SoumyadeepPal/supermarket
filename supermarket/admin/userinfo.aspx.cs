using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace supermarket.admin
{
    public partial class userinfo : System.Web.UI.Page
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
            SqlDataSource1.SelectCommand = @"SELECT user_id, user_fname, user_lname, user_email, user_ph_num, user_addr1, user_addr2, user_city, user_state, user_country, user_zip FROM UserInfo";

            SqlDataSource1.DataBind();

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}