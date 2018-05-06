using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class thankyou : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session.IsNewSession != true && Session["Id"] != null && Session["Tid"] != null)
            {
                this.Page.MasterPageFile = "~/Checkout.master";
            }
            else
            {
                
                Response.Redirect("Default.aspx");
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelName.Visible = true;
            LabelName.Text = Session["fullname"].ToString() + "!";
            LabelOrderNum.Visible = true;
            LabelOrderNum.Text = Session["Tid"].ToString();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null) Session.Remove("UserName");
            if (Session["Id"] != null) Session.Remove("Id");
            if (Session["Tid"] != null) Session.Remove("Tid");
            Session.Clear();

            Response.Redirect("Default.aspx");
        }

        protected void btnCtnShopping_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void chkorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("account.aspx");
        }
    }
}