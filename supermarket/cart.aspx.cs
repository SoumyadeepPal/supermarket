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
    public partial class cart : System.Web.UI.Page
    {
        protected string pro_id;
        protected string cat_id;
        protected int pid;
        protected string productName;
        protected string qty;
        protected int iqty;
        protected string price_per_unit;
        protected GridViewRow gr;

        protected string cart_id;
        protected decimal cartSTotal;
        protected string cartSubTotal;
        
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
            if (Session["Id"] == null && Session["Tid"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                GetTotalPayment();
            }
        }

        private void GetTotalPayment()
        {

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.SelectCommand = "SELECT SUM(cart_subTotal) AS TotalPayment FROM Cart WHERE [cart_transid] = @cart_transid";

            SqlDataSource1.SelectParameters.Add("cart_transid", Session["Tid"].ToString());

            FormView1.DataSource = SqlDataSource1;
            FormView1.DataBind();
            SqlDataSource1.Dispose();
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
            GetTotalPayment();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            gr = GridView1.Rows[e.RowIndex];
            qty = ((TextBox)gr.FindControl("TextBox1")).Text.Trim().ToString();

            price_per_unit = gr.Cells[5].Text.ToString();

            cart_id = gr.Cells[1].Text.ToString();

            


            iqty = Convert.ToInt32(qty);



            cartSTotal = iqty * Convert.ToDecimal(price_per_unit);
            cartSubTotal = cartSTotal.ToString();
            qty = iqty.ToString();

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.UpdateCommand = @"UPDATE [Cart] SET [cart_quantity] = @cart_quantity, [cart_subTotal] = @cart_subTotal WHERE [cart_id] = @cart_id ";

            SqlDataSource1.UpdateParameters.Add("cart_quantity", qty);
            SqlDataSource1.UpdateParameters.Add("cart_subTotal", cartSubTotal);
            SqlDataSource1.UpdateParameters.Add("cart_id", cart_id);
            //SqlDataSource1.UpdateParameters.Add("cart_transid", Session["Tid"].ToString());

            SqlDataSource1.Update();
            SqlDataSource1.Dispose();
            GridView1.EditIndex = -1;
            BindGrid();
            GetTotalPayment();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
            GetTotalPayment();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
            GetTotalPayment();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string cart_id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource1.DeleteCommand = "DELETE FROM [Cart] WHERE [cart_id] = @cart_id AND [cart_transid] = @cart_transid ";
            SqlDataSource1.DeleteParameters.Add("cart_id", cart_id);
            SqlDataSource1.DeleteParameters.Add("cart_transid", Session["Tid"].ToString());

            SqlDataSource1.Delete();
            SqlDataSource1.Dispose();
            GridView1.EditIndex = -1;
            BindGrid();
            GetTotalPayment();
        }
    }
}