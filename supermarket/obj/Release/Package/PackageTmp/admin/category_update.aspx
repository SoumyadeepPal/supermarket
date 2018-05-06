<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="category_update.aspx.cs" Inherits="supermarket.admin.category_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">







    <div class="body">

        <div class="container">


            <h1 class="page-heading">Categories</h1>
            <nav class="navBar navBar--sub navBar--account">
                <ul class="navBar-section">
                    <li class="navBar-item">
                        <a class="navBar-action" href="products.aspx">Products</a>
                    </li>
                    <li class="navBar-item is-active">Categories</li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="userinfo.aspx">Customers</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="orders.aspx">Orders</a>
                    </li>
                </ul>
            </nav>

            <main class="account account--fixed">
    <div class="account-head">
    </div>
    <div class="row">


                    <ul class="tabs tabs--alt">
            <li class="tab">
                <a class="tab-title" href="/admin/categories.aspx" aria-selected="true" tabindex="0">View All Categories</a>
            </li>
                <li class="tab">
                    <a class="tab-title" href="/admin/category_add.aspx" aria-selected="false" tabindex="0">Add New Category</a>
                </li>
        </ul>

                    <!-- User Contet goes here-->
                    <div class="col-lg-9">


                        <h1 class="heading1"><span class="maintext">Update Existing Category Details</span></h1>
                        <div class="form-horizontal">

                            <div class="col-lg-6">
                                <div class="registerbox">

                                    <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
                                <small>Required</small>
                            </label>
                  <div class="controls">
                                            <asp:TextBox ID="txtCateoryName" runat="server" CssClass="form-input"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCateoryName" Display="Dynamic" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Alphabets and Space is allowed" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtCateoryName"></asp:RegularExpressionValidator>
                                        </div>

                                        <div class="controls">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" />
                                        </div>
                                    </div>

                                </div>

                                <div class="form-actions">
                                    <asp:Button ID="btnCategoryEdit" runat="server" Text="Update Category" CssClass="button button--primary" OnClick="btnCategoryEdit_Click1" />
                                </div>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>


                            <div class="clearfix">
                            </div>

                            <br />
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
