using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

            string selectSql = @"SELECT user_id, user_fname, user_email, user_pass FROM UserInfo WHERE user_email = @user_email AND  user_pass = @user_pass";

            //Create SQL connection
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSql, con);

            //Create SQL Command And Sql Parameters
            con.Open();
            cmd.Connection = con;

            cmd.Parameters.AddWithValue("@user_email", email_ip.Text.Trim().ToString());
            cmd.Parameters.AddWithValue("@user_pass", pass_ip.Text.Trim().ToString());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            try
            {
                if (dt.Rows.Count > 0)
                {
                    if (Session.IsNewSession && Session["Id"] == null)
                    {
                        Random r = new Random();
                        int tran = r.Next(1, 10000);
                        string tid = "ORDER-" + tran.ToString();
                        Session["UserName"] = dt.Rows[0]["user_fname"].ToString();
                        Session["Id"] = Convert.ToInt32(dt.Rows[0]["user_id"]);
                        Session["Tid"] = tid;
                        Response.Redirect("Default.aspx");

                    }
                }
                else
                {
                    //lblError.Visible = true;
                    //lblError.Text = "Email id does not Exist. Please <a href=\"register.aspx\"> Register </a>";
                }
            }
            catch (SqlException ex)
            {
                string errorMessage = "Error in Login Process";
                errorMessage += ex.Message;
                throw new Exception(errorMessage);
            }
            finally
            {
                con.Close();
            }
        }
    }
}