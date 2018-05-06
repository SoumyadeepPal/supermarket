<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="product_delete.aspx.cs" Inherits="supermarket.admin.product_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">











    <div class="body">

        <div class="container">


            <h1 class="page-heading">Products</h1>
            <nav class="navBar navBar--sub navBar--account">
                <ul class="navBar-section">
                    <li class="navBar-item is-active">Products</li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="categories.aspx">Categories</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="userinfo.aspx">Customers</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="orders.aspx">Orders</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="account_settings.aspx">Account Settings</a>
                    </li>
                </ul>
            </nav>

            <main class="account account--fixed">
    <div class="account-head">
    </div>
    <div class="account-body">
        








        <div class="row">




                    <ul class="tabs tabs--alt">
            <li class="tab">
                <a class="tab-title" href="/admin/products.aspx" aria-selected="true" tabindex="0">View All Product</a>
            </li>
                <li class="tab">
                    <a class="tab-title" href="/admin/product_add.aspx" aria-selected="false" tabindex="0">Add New Product</a>
                </li>
        </ul>



                    <!-- User Contet goes here-->
                    <!-- Add Product Section-->
                    <div class="col-lg-9">
                        <h1 class="heading1"><span class="maintext">Delete product Details</span></h1>
                        <div class="form-horizontal">

                            <div class="col-lg-6">
                                <div class="registerbox">
                                    <asp:FormView ID="FormView1" runat="server">
                                        <ItemTemplate>

                                            <div class="form-field">
                                                <div class="control-group">
                                                <label class="control-label">Product Name : </label>
                                                <label class="control-label">
                                                        <asp:Label ID="lblproductName" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("product_name") %>'></asp:Label>
                                                </label>
                                                </div>
                                            </div>

                                                <div class="form-field">
                                                    <div class="control-group">
                                                <label class="control-label">Product Price : </label>
                                                <div class="controls">
                                                    <label class="control-label">
                                                    <asp:Label ID="lblProductPrice" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("product_price") %>'></asp:Label>
                                                </label>
                                                </div>
                                            </div>
                                                    </div>

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Quantity : </label>
                                                <label class="control-label">
                                                    <asp:Label ID="lblProductQty" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("product_stock") %>'></asp:Label>
                                                </label>
                                            </div>
                                                </div>

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Product Image 1:</label>

                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("product_image1") %>' CssClass="img-thumbnail" />

                                            </div>
                                                </div>

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Product Image 2:</label>

                                                <asp:Image ID="imgProduct2" runat="server" ImageUrl='<%# Eval("product_image2") %>' CssClass="img-thumbnail" />

                                            </div>
                                                </div>

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Product Image 3:</label>

                                                <asp:Image ID="imgProduct3" runat="server" ImageUrl='<%# Eval("product_image3") %>' CssClass="img-thumbnail" />

                                            </div>
                                                </div>

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Product Category : </label>
                                                <label class="control-label">
                                                    <asp:Label ID="ProductPageList" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("category_name") %>'></asp:Label>
                                                </label>
                                            </div>
                                                </div>

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Product Description : </label>
                                                <label class="control-label">
                                                    <asp:Label ID="lblProductDesc" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("product_desc") %>'></asp:Label>
                                                </label>

                                            </div>
                                                </div>

                                        </ItemTemplate>
                                    </asp:FormView>
                                </div>
                                <br />
                                <div><b>Are you sure, you want to delte this product details?</b></div>
                                <br />
                                <br />
                                <div class="form-actions">
                                    <asp:Button ID="btnProductYes" runat="server" Text="Yes" CssClass="button button--primary" OnClick="btnProductYes_Click" />
                                    <asp:Button ID="btnProductNo" runat="server" Text="No" CssClass="button button--primary" OnClick="btnProductNo_Click" />
                                </div>
                            </div>


                            <div class="clearfix">
                            </div>
                            <br />
                        </div>

                    </div>
                </div>











    </div>
</main>


        </div>
        <div id="modal" class="modal" data-reveal="" data-prevent-quick-search-close="">
            <a href="#" class="modal-close" aria-label="Close" role="button">
                <span aria-hidden="true">×</span>
            </a>
            <div class="modal-content"></div>
            <div class="loadingOverlay" style="display: none;"></div>
        </div>
    </div>








</asp:Content>
