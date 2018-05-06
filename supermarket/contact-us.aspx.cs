using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class contact_us : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            String myEmail = email_ip.Text;
            String myPass = pass_ip.Text;


            String toEmail = "upbw.mwf17@gmail.com";

            
            String sub = subject_ip.Text;
            String comment = comment_ip.Text + DateTime.Now.ToLongDateString();

            var smtp = new System.Net.Mail.SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new System.Net.NetworkCredential(myEmail, myPass);

            smtp.Send(myEmail, toEmail, sub, comment);
            Response.Redirect("contact-us-message.aspx");
        }
    }
}