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
    public partial class AdminAccount : System.Web.UI.MasterPage
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["Id"] == null && Session["Tid"] == null)
            {
                Response.Redirect("~/admin/default.aspx");
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null) Session.Remove("UserName");
            if (Session["Id"] != null) Session.Remove("Id");
            if (Session["Tid"] != null) Session.Remove("Tid");
            Session.Clear();

            Response.Redirect("~/admin/default.aspx");
        }
    }
}