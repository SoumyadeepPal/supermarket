using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();

            string selectSql = @"SELECT admin_id, admin_name, admin_email, admin_pass FROM Admin WHERE admin_email = @admin_email AND  admin_pass = @admin_pass";

            //Create SQL connection
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSql, con);

            //Create SQL Command And Sql Parameters
            con.Open();
            cmd.Connection = con;

            cmd.Parameters.AddWithValue("@admin_email", email_ip.Text.Trim().ToString());
            cmd.Parameters.AddWithValue("@admin_pass", pass_ip.Text.Trim().ToString());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            try
            {
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows.Count > 0)
                    {
                        if (Session.IsNewSession && Session["AId"] == null)
                        {
                            Session["AdminName"] = dt.Rows[0]["admin_name"].ToString();
                            Session["AId"] = Convert.ToInt32(dt.Rows[0]["admin_id"]);
                            Response.Redirect("~/admin/products.aspx");
                        }
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