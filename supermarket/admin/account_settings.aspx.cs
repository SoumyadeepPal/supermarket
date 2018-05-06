using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace supermarket.admin
{
    public partial class account_settings : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["AdminName"] == null && Session["AId"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }

            string admin_id = Session["AId"].ToString();

            if (string.IsNullOrEmpty(admin_id))
            {
                Response.Redirect("~/admin/default.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT [admin_name], [admin_email] FROM [Admin] WHERE [admin_id] = @admin_id";

            SqlDataSource1.SelectParameters.Add("admin_id", admin_id);

            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;

            aname_ip.Text = dv.Table.Rows[0]["admin_name"].ToString();
            email_ip.Text = dv.Table.Rows[0]["admin_email"].ToString();


            

            SqlDataSource1.Dispose();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["AdminName"] == null && Session["AId"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }

            string admin_id = Session["AId"].ToString();

            if (string.IsNullOrEmpty(admin_id))
            {
                Response.Redirect("~/admin/default.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.UpdateCommand = @"UPDATE [Admin] SET [admin_name] = @admin_name, [admin_email] = @admin_email, [admin_pass] = @admin_pass WHERE [admin_id] = @admin_id";

            SqlDataSource1.UpdateParameters.Add("admin_name", aname_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("admin_email", email_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("admin_pass", pass_ip.Text.Trim().ToString());

            SqlDataSource1.UpdateParameters.Add("admin_id", Session["AId"].ToString());

            SqlDataSource1.Update();
            SqlDataSource1.Dispose();

            //Label1.Text = "Update Successful....!!!";



            html1.InnerHtml += "<div class=alertBox alertBox--success>";
            html1.InnerHtml += "<div class=alertBox-column alertBox-icon>";

            html1.InnerHtml += "<icon glyph=ic-success class=icon aria-hidden=true>";

            html1.InnerHtml += "<svg xmlns=http://www.w3.org/2000/svg width=24 height=24 viewBox=0 0 24 24>";

            html1.InnerHtml += "<path d=M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z>";

            html1.InnerHtml += "</path>";

            html1.InnerHtml += "</svg>";

            html1.InnerHtml += "</icon>";
            html1.InnerHtml += "</div>";


            html1.InnerHtml += "<p class=alertBox-column alertBox-message>";

            html1.InnerHtml += "<span>";
            html1.InnerHtml += "Your account details have been updated.";
            html1.InnerHtml += "</span>";
            html1.InnerHtml += "</p>";
            html1.InnerHtml += "</div>";
        }
    }
}