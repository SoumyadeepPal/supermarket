<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="category_delete.aspx.cs" Inherits="supermarket.admin.category_delete" %>

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


                        <h1 class="heading1"><span class="maintext">Delete Category Details</span></h1>
                        <div class="form-horizontal">

                            <div class="col-lg-6">
                                <div class="registerbox">

                                    <asp:FormView ID="FormView1" runat="server">
                                        <ItemTemplate>
                                            <!--<div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Category Id :</label>
                                                <div class="controls">
                                                    <asp:Label ID="lblCatId" runat="server" Text='<%# Eval("category_id") %>' CssClass="form-input" Rows="100" TextMode="MultiLine"></asp:Label>
                                                    <br />
                                                </div>
                                            </div>
                                                </div>-->

                                            <div class="form-field">
                                            <div class="control-group">
                                                <label class="control-label">Category Name :</label>
                                                <div class="controls">
                                                    <asp:Label ID="lblCatName" runat="server" Text='<%# Eval("category_name") %>' CssClass="form-input" Rows="100" TextMode="MultiLine"></asp:Label>
                                                    <br />
                                                </div>
                                            </div>
                                                </div>
                                        </ItemTemplate>
                                    </asp:FormView>

                                </div>

                                <div><b>
                                    Are you sure, You want to delete this category?
                                    </b>
                                </div>

                                <div class="form-actions">
                                    <asp:Button ID="btnCategoryYes" runat="server" Text="YES" CssClass="button button--primary" OnClick="btnCategoryYes_Click" />
                                    <asp:Button ID="btnCategoryNo" runat="server" Text="NO" CssClass="button button--primary" OnClick="btnCategoryNo_Click" />
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
