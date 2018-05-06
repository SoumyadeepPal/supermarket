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

namespace supermarket
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource SqlData1 = new SqlDataSource();
            SqlData1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            SqlData1.InsertCommand = "INSERT INTO [UserInfo] ([user_fname], [user_lname], [user_email], [user_pass], [user_ph_num], [user_addr1], [user_addr2], [user_city], [user_state], [user_country], [user_zip], [user_cdate], [user_ctime]) VALUES (@user_fname, @user_lname, @user_email, @user_pass, @user_ph_num, @user_addr1, @user_addr2, @user_city, @user_state, @user_country, @user_zip, @user_cdate, @user_ctime)";

            SqlData1.InsertParameters.Add("user_fname", fname_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_lname", lname_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_email", email_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_pass", pass_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_ph_num", phnum_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_addr1", addr1_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_addr2", addr2_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_city", city_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_state", state_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_country", countrylist.SelectedItem.ToString());
            SqlData1.InsertParameters.Add("user_zip", zip_ip.Text.Trim().ToString());
            SqlData1.InsertParameters.Add("user_cdate", DateTime.Now.ToShortDateString());
            SqlData1.InsertParameters.Add("user_ctime", DateTime.Now.ToShortTimeString());

            SqlData1.Insert();
            SqlData1.Dispose();

            Response.Redirect("login.aspx");
        }
    }
}