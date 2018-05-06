using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace supermarket.admin
{
    public partial class single_user_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AId"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }

            string uid = Request.QueryString.Get("uid").ToString();
            if (string.IsNullOrEmpty(uid))
            {
                Response.Redirect("error.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT [user_id], [user_fname], [user_lname], [user_email], [user_ph_num], [user_addr1], [user_addr2], [user_city], [user_state], [user_country], [user_zip] FROM [UserInfo] WHERE [user_id] = @uid";

            SqlDataSource1.SelectParameters.Add("uid", uid);

            FormView1.DataSource = SqlDataSource1;
            FormView1.DataBind();
            SqlDataSource1.Dispose();
        }
    }
}