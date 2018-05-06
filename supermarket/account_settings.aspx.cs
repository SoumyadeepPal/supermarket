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


namespace supermarket
{
    public partial class account_settings : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            string user_id = Session["Id"].ToString();

            if (string.IsNullOrEmpty(user_id))
            {
                Response.Redirect("login.aspx");
            }


            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT [user_fname], [user_lname], [user_email], [user_ph_num], [user_addr1], [user_addr2], [user_city], [user_state], [user_country], [user_zip] FROM [UserInfo] WHERE [user_id] = @user_id";

            SqlDataSource1.SelectParameters.Add("user_id", user_id);

            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;

            fname_ip.Text = dv.Table.Rows[0]["user_fname"].ToString();
            lname_ip.Text = dv.Table.Rows[0]["user_lname"].ToString();
            email_ip.Text = dv.Table.Rows[0]["user_email"].ToString();
            phnum_ip.Text = dv.Table.Rows[0]["user_ph_num"].ToString();
            addr1_ip.Text = dv.Table.Rows[0]["user_addr1"].ToString();
            addr2_ip.Text = dv.Table.Rows[0]["user_addr2"].ToString();
            city_ip.Text = dv.Table.Rows[0]["user_city"].ToString();
            state_ip.Text = dv.Table.Rows[0]["user_state"].ToString();
            countrylist.Text = dv.Table.Rows[0]["user_country"].ToString();
            zip_ip.Text = dv.Table.Rows[0]["user_zip"].ToString();
             


            /*fname_ip.Text = dv.Table.Rows[0][1].ToString();
            lname_ip.Text = dv.Table.Rows[0][2].ToString();
            email_ip.Text = dv.Table.Rows[0][3].ToString();
            phnum_ip.Text = dv.Table.Rows[0][5].ToString();
            addr1_ip.Text = dv.Table.Rows[0][6].ToString();
            addr2_ip.Text = dv.Table.Rows[0][7].ToString();
            city_ip.Text = dv.Table.Rows[0][10].ToString();
            state_ip.Text = dv.Table.Rows[0][9].ToString();
            countrylist.Text = dv.Table.Rows[0][8].ToString();
            zip_ip.Text = dv.Table.Rows[0][11].ToString();
             */

            SqlDataSource1.Dispose();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("login.aspx");
            }

            string uid = Session["Id"].ToString();

            if (string.IsNullOrEmpty(uid))
            {
                Response.Redirect("login.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.UpdateCommand = @"UPDATE [UserInfo] SET [user_fname] = @user_fname, [user_lname] = @user_lname, [user_email] = @user_email, [user_pass] = @user_pass, [user_ph_num] = @user_ph_num, [user_addr1] = @user_addr1, [user_addr2] = @user_addr2, [user_city] = @user_city, [user_state] = @user_state, [user_country] = @user_country, [user_zip] = @user_zip WHERE [user_id] = @user_id";

            SqlDataSource1.UpdateParameters.Add("user_fname", fname_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_lname", lname_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_email", email_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_pass", pass_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_ph_num", phnum_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_addr1", addr1_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_addr2", addr2_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_city", city_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_state", state_ip.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_country", countrylist.Text.Trim().ToString());
            SqlDataSource1.UpdateParameters.Add("user_zip", zip_ip.Text.Trim().ToString());

            SqlDataSource1.UpdateParameters.Add("user_id", Session["Id"].ToString());

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