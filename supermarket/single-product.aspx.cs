using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket
{
    public partial class single_product : System.Web.UI.Page
    {
        protected string pro_id;
        protected string cat_id;
        protected int pid;
        protected string productName;
        protected string qty;
        protected string price_per_unit;


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


        protected void Page_Init(object sender, EventArgs e)
        {
            pro_id = Request.QueryString.Get("pid").ToString();
            if (string.IsNullOrEmpty(pro_id))
            {
                Response.Redirect("Default.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = @"SELECT [product_id], [product_name], [product_desc], [product_price], [product_stock], [product_cdate], [product_image1], [product_image2], [product_image3], [category_id] FROM [Product] WHERE [product_id] = @product_id";

            SqlDataSource1.SelectParameters.Add("product_id", pro_id);

            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;

            cat_id = dv.Table.Rows[0][9].ToString();
            pid = Convert.ToInt32(pro_id);
            productName = dv.Table.Rows[0][1].ToString();
            price_per_unit = dv.Table.Rows[0][3].ToString();

            Image1.ImageUrl = dv.Table.Rows[0]["product_image1"].ToString();
            Image2.ImageUrl = dv.Table.Rows[0]["product_image2"].ToString();
            Image3.ImageUrl = dv.Table.Rows[0]["product_image3"].ToString();

            Image4.ImageUrl = dv.Table.Rows[0]["product_image1"].ToString();
            Image5.ImageUrl = dv.Table.Rows[0]["product_image2"].ToString();
            Image6.ImageUrl = dv.Table.Rows[0]["product_image3"].ToString();

            product_nameLabel.Text = dv.Table.Rows[0]["product_name"].ToString();
            product_priceLabel.Text = dv.Table.Rows[0]["product_price"].ToString();
            product_descLabel.Text = dv.Table.Rows[0]["product_desc"].ToString();
            dv.Dispose();
            productQ.Text = "1";



            SqlDataSource1.Dispose(); 
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkViewMore_Click(object sender, EventArgs e)
        {
            if (Session["Id"] == null && Session["Tid"] == null)
            {
                Response.Redirect("login.aspx");
            }

            //qty = ((TextBox)(FormView1.FindControl("txtProductQty"))).Text.ToString();
            qty = productQ.Text.ToString();

            int iqty = Convert.ToInt32(qty);
            qty = iqty.ToString();

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.InsertCommand = "INSERT INTO [Cart] ([product_id], [cart_quantity], [cart_product_name], [cart_productSubPrice], [cart_subTotal], [cart_cdate], [cart_transid], [cart_status], [user_id]) VALUES (@product_id, @cart_quantity, @cart_product_name, @cart_productSubPrice, @cart_subTotal, @cart_cdate, @cart_transid, @cart_status, @user_id)";

            decimal cartSTotal = iqty * Convert.ToDecimal(price_per_unit);
            cartSTotal = iqty * Convert.ToDecimal(price_per_unit);
            string cartSubTotal = cartSTotal.ToString();

            SqlDataSource1.InsertParameters.Add("product_id", pro_id);
            SqlDataSource1.InsertParameters.Add("cart_quantity", qty);
            SqlDataSource1.InsertParameters.Add("cart_product_name", productName);
            SqlDataSource1.InsertParameters.Add("cart_productSubPrice", price_per_unit);
            SqlDataSource1.InsertParameters.Add("cart_subTotal", cartSubTotal);
            SqlDataSource1.InsertParameters.Add("cart_cdate", DateTime.Now.ToShortDateString().ToString());
            SqlDataSource1.InsertParameters.Add("cart_transid", Session["Tid"].ToString());
            SqlDataSource1.InsertParameters.Add("cart_status", "Pending");
            SqlDataSource1.InsertParameters.Add("user_id", Session["Id"].ToString());
            SqlDataSource1.Insert();

            SqlDataSource1.Dispose();


            //lblConfirm.Text = "Product Sucessfully added to the cart. <br/> Please visit <a href=\"cart.aspx\"><b> Cart Page</b></a> or do more <a href=\"Default.aspx\"> <b>Shopping</b></a>";



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
            html1.InnerHtml += "Product Sucessfully added to the cart. Please visit <a href=\"cart.aspx\"><b> Cart Page</b></a> or <a href=\"Default.aspx\"> <b>Continue Shopping</b></a>";
            html1.InnerHtml += "</span>";
            html1.InnerHtml += "</p>";
            html1.InnerHtml += "</div>";
        }
    }
}