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
    public partial class checkout : System.Web.UI.Page
    {
        protected string customerName;
        protected string totalprice;
        protected string payment;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session.IsNewSession != true && Session["Id"] != null && Session["Tid"] != null)
            {
                //this.Page.MasterPageFile = "~/RegisteredUserSite.master";
            }
            else
            {
                //this.Page.MasterPageFile = "~/Site.master";
            }

        }


        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["Id"] == null && Session["Tid"] == null)
            {
                Response.Redirect("Default.aspx");
            }

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
            GetTotalPayment();
            //GetUserInfo1();
            GetUserInfo2();
        }

        private void BindGrid()
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = "SELECT [cart_id], [product_id], [cart_quantity], [cart_product_name], [cart_productSubPrice], [cart_subTotal], [cart_cdate], [cart_transid] FROM [Cart] WHERE [cart_transid] = @cart_transid";

            SqlDataSource1.SelectParameters.Add("cart_transid", Session["Tid"].ToString());

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.Dispose();
        }

        private void GetTotalPayment()
        {

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = "SELECT SUM(cart_subTotal) AS TotalPayment FROM Cart WHERE [cart_transid] = @cart_transid";

            SqlDataSource1.SelectParameters.Add("cart_transid", Session["Tid"].ToString());

            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;
            totalprice = dv.Table.Rows[0]["TotalPayment"].ToString();
            dv.Dispose();

            FormView1.DataSource = SqlDataSource1;
            FormView1.DataBind();
            SqlDataSource1.Dispose();
        }
        
        /*private void GetUserInfo1()
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT [user_fname], [user_lname], [user_email], [user_ph_num], [user_addr1], [user_addr2], [user_city], [user_state], [user_country], [user_zip] FROM [UserInfo] WHERE [user_id] = @user_id";

            SqlDataSource1.SelectParameters.Add("user_id", Session["Id"].ToString());


            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;
            string fname = dv.Table.Rows[0]["user_fname"].ToString();
            string lname = dv.Table.Rows[0]["user_lname"].ToString();
            customerName = fname + " " + lname;
            Session["fullname"] = customerName;
            dv.Dispose();


            FormView1.DataSource = SqlDataSource1;
            FormView1.DataBind();

            SqlDataSource1.Dispose();

        }*/
        
        private void GetUserInfo2()
        {
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT [user_fname], [user_lname], [user_email], [user_ph_num], [user_addr1], [user_addr2], [user_city], [user_state], [user_country], [user_zip] FROM [UserInfo] WHERE [user_id] = @user_id";

            SqlDataSource1.SelectParameters.Add("user_id", Session["Id"].ToString());


            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;            
            string fname = dv.Table.Rows[0]["user_fname"].ToString();
            string lname = dv.Table.Rows[0]["user_lname"].ToString();
            customerName = fname + " " + lname;
            Session["fullname"] = customerName;
            dv.Dispose();


            FormView2.DataSource = SqlDataSource1;
            FormView2.DataBind();

            SqlDataSource1.Dispose();

        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {

            if (cc.Checked == true)
            {
                payment = "Credit Card";
            }
            else if (paypal.Checked == true)
            {
                payment = "Paypal";
            }
            else if (bd.Checked == true)
            {
                payment = "Bank Deposit";
            }
            else if (cod.Checked == true)
            {
                payment = "Cash on Delivery";
            }
            else
            {
                payment = null;
            }
        }

        protected void btnCheckout_Click1(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(payment))
            {
                lblPaymentWarning.Text = "Please Select any Payment Method to complete the buying Process.";
                cod.Focus();
            }
            else
            {

                SqlDataSource SqlDataSource1 = new SqlDataSource();
                SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                SqlDataSource1.InsertCommand = "INSERT INTO [Order] ([cart_transid], [order_customerName], [order_total], [order_payment],[user_id]) VALUES (@cart_transid, @order_customerName, @order_total, @order_payment, @user_id)";

                SqlDataSource1.InsertParameters.Add("cart_transid", Session["Tid"].ToString());
                SqlDataSource1.InsertParameters.Add("order_customerName", customerName);
                SqlDataSource1.InsertParameters.Add("order_total", totalprice);
                SqlDataSource1.InsertParameters.Add("order_payment", payment.ToString());
                SqlDataSource1.InsertParameters.Add("user_id", Session["Id"].ToString());

                SqlDataSource1.Insert();

                SqlDataSource1.UpdateCommand = @"UPDATE [Cart] SET [cart_status] = @cart_status WHERE [cart_transid] = @cart_transid ";

                SqlDataSource1.UpdateParameters.Add("cart_status", "Paid");
                SqlDataSource1.UpdateParameters.Add("cart_transid", Session["Tid"].ToString());
                SqlDataSource1.Update();

                SqlDataSource1.Dispose();
                Response.Redirect("thankyou.aspx");
            }
        }
    }
}