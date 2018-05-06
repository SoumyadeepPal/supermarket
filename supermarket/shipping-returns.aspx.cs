using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class shipping_returns : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session.IsNewSession != true && Session["Id"] != null && Session["Tid"] != null)
            {
                this.Page.MasterPageFile = "~/RegisteredUserSite.master";
            }
            else
            {
                this.Page.MasterPageFile = "~/Site.master";
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}