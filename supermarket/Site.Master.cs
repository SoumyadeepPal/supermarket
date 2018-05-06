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
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubscribeButton_Click(object sender, EventArgs e)
        {
            SqlDataSource SqlData1 = new SqlDataSource();
            SqlData1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            SqlData1.InsertCommand = "INSERT INTO [Subscriber] ([subscriber_email]) VALUES (@subscriber_email)";

            SqlData1.InsertParameters.Add("subscriber_email", newsletter_email_ip.Text.Trim().ToString());

            SqlData1.Insert();
            SqlData1.Dispose();

            Response.Redirect("subscribe.aspx");

        }  
    }
}