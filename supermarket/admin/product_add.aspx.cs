using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace supermarket.admin
{
    public partial class product_add : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {

            if (Session["AId"] == null)
            {
                Response.Redirect("~/default.aspx");
            }

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.SelectCommand = "SELECT [category_id], [category_name] FROM [Category]";


            CategoryList.DataSource = SqlDataSource1;
            CategoryList.DataTextField = "category_name";
            CategoryList.DataValueField = "category_id";
            CategoryList.DataBind();
            SqlDataSource1.Dispose();
        }        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProductAdd_Click(object sender, EventArgs e)
        {
            string image1 = null;
            string image2 = null;
            string image3 = null;
            //string image4 = null;
            //string image5 = null;


            if (fuProductImg.HasFile)
            {

                try
                {
                    string imgName1 = Path.GetFileName(fuProductImg.FileName);
                    string imgPath1 = "~/Uploads/" + imgName1;

                    int imgSize1 = fuProductImg.PostedFile.ContentLength;
                    string ext1 = Path.GetExtension(this.fuProductImg.PostedFile.FileName).ToLower();

                    
                    if (fuProductImg.PostedFile.ContentLength > 100000000)
                    {
                        CustomValidator1.ErrorMessage = "File is Too Big";
                    }

                    if (ext1 != ".jpg" || ext1 != ".png" || ext1 != ".gif" || ext1 != ".jpeg")
                    {
                        CustomValidator1.ErrorMessage = "Please choose only .jpg, .png and .gif image types!";
                    }

                    fuProductImg.SaveAs(Server.MapPath("~/Uploads/") + imgName1);
                    image1 = "~/Uploads/" + imgName1.ToString();
                }
                catch (System.Exception ex)
                {
                    CustomValidator1.ErrorMessage = "Error! uploading Image";
                }
            }


            if (fuProductImg2.HasFile)
            {

                try
                {
                    string imgName2 = Path.GetFileName(fuProductImg2.FileName);
                    string imgPath2 = "~/Uploads/" + imgName2;

                    int imgSize2 = fuProductImg2.PostedFile.ContentLength;
                    string ext2 = Path.GetExtension(this.fuProductImg2.PostedFile.FileName).ToLower();


                    if (fuProductImg2.PostedFile.ContentLength > 100000000)
                    {
                        CustomValidator2.ErrorMessage = "File is Too Big";
                    }

                    if (ext2 != ".jpg" || ext2 != ".png" || ext2 != ".gif" || ext2 != ".jpeg")
                    {
                        CustomValidator2.ErrorMessage = "Please choose only .jpg, .png and .gif image types!";
                    }

                    fuProductImg2.SaveAs(Server.MapPath("~/Uploads/") + imgName2);
                    image2 = "~/Uploads/" + imgName2.ToString();
                }
                catch (System.Exception ex)
                {
                    CustomValidator2.ErrorMessage = "Error! uploading Image";
                }
            }


            if (fuProductImg3.HasFile)
            {

                try
                {
                    string imgName3 = Path.GetFileName(fuProductImg3.FileName);
                    string imgPath3 = "~/Uploads/" + imgName3;

                    int imgSize3 = fuProductImg3.PostedFile.ContentLength;
                    string ext3 = Path.GetExtension(this.fuProductImg3.PostedFile.FileName).ToLower();


                    if (fuProductImg3.PostedFile.ContentLength > 100000000)
                    {
                        CustomValidator3.ErrorMessage = "File is Too Big";
                    }

                    if (ext3 != ".jpg" || ext3 != ".png" || ext3 != ".gif" || ext3 != ".jpeg")
                    {
                        CustomValidator3.ErrorMessage = "Please choose only .jpg, .png and .gif image types!";
                    }

                    fuProductImg3.SaveAs(Server.MapPath("~/Uploads/") + imgName3);
                    image3 = "~/Uploads/" + imgName3.ToString();
                }
                catch (System.Exception ex)
                {
                    CustomValidator3.ErrorMessage = "Error! uploading Image";
                }
            }


            /*if (fuProductImg4.HasFile)
            {

                try
                {
                    string imgName4 = Path.GetFileName(fuProductImg4.FileName);
                    string imgPath4 = "~/Uploads/" + imgName4;

                    int imgSize4 = fuProductImg4.PostedFile.ContentLength;
                    string ext4 = Path.GetExtension(this.fuProductImg4.PostedFile.FileName).ToLower();


                    if (fuProductImg4.PostedFile.ContentLength > 100000000)
                    {
                        CustomValidator4.ErrorMessage = "File is Too Big";
                    }

                    if (ext4 != ".jpg" || ext4 != ".png" || ext4 != ".gif" || ext4 != ".jpeg")
                    {
                        CustomValidator4.ErrorMessage = "Please choose only .jpg, .png and .gif image types!";
                    }

                    fuProductImg4.SaveAs(Server.MapPath("~/Uploads/") + imgName4);
                    image4 = "~/Uploads/" + imgName4.ToString();
                }
                catch (System.Exception ex)
                {
                    CustomValidator4.ErrorMessage = "Error! uploading Image";
                }
            }


            if (fuProductImg5.HasFile)
            {

                try
                {
                    string imgName5 = Path.GetFileName(fuProductImg5.FileName);
                    string imgPath5 = "~/Uploads/" + imgName5;

                    int imgSize5 = fuProductImg5.PostedFile.ContentLength;
                    string ext5 = Path.GetExtension(this.fuProductImg5.PostedFile.FileName).ToLower();


                    if (fuProductImg5.PostedFile.ContentLength > 100000000)
                    {
                        CustomValidator5.ErrorMessage = "File is Too Big";
                    }

                    if (ext5 != ".jpg" || ext5 != ".png" || ext5 != ".gif" || ext5 != ".jpeg")
                    {
                        CustomValidator5.ErrorMessage = "Please choose only .jpg, .png and .gif image types!";
                    }

                    fuProductImg5.SaveAs(Server.MapPath("~/Uploads/") + imgName5);
                    image5 = "~/Uploads/" + imgName5.ToString();
                }
                catch (System.Exception ex)
                {
                    CustomValidator5.ErrorMessage = "Error! uploading Image";
                }
            }*/
























            int selectedValue = Convert.ToInt32(CategoryList.SelectedValue.ToString());
            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataSource1.InsertCommand = "INSERT INTO [Product] ([product_name], [product_desc], [product_price], [product_stock], [product_cdate], [product_image1],[product_image2],[product_image3], [category_id]) VALUES (@product_name, @product_desc, @product_price, @product_stock, @product_cdate, @product_image1, @product_image2, @product_image3, @category_id)";

            SqlDataSource1.InsertParameters.Add("product_name", txtProductName.Text.Trim().ToString());
            SqlDataSource1.InsertParameters.Add("product_desc", txtProductDesc.Text.Trim().ToString());
            SqlDataSource1.InsertParameters.Add("product_price", txtProductPrice.Text.Trim());
            SqlDataSource1.InsertParameters.Add("product_stock", txtProductQty.Text.Trim());
            SqlDataSource1.InsertParameters.Add("product_cdate", DateTime.Now.ToShortDateString());
            





            SqlDataSource1.InsertParameters.Add("product_image1", image1);
            SqlDataSource1.InsertParameters.Add("product_image2", image2);
            SqlDataSource1.InsertParameters.Add("product_image3", image3);
            //SqlDataSource1.InsertParameters.Add("product_image4", image4);
            //SqlDataSource1.InsertParameters.Add("product_image5", image5);
            





            SqlDataSource1.InsertParameters.Add("category_id", selectedValue.ToString());
            SqlDataSource1.Insert();
            SqlDataSource1.Dispose();

            Response.Redirect("products.aspx");
        }
    }
}