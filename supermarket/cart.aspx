﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="supermarket.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">
        <div class="container">

            <ul class="breadcrumbs">
                <li class="breadcrumb ">
                    <a href="Default.aspx" class="breadcrumb-label">Home</a>
                </li>
                <li class="breadcrumb ">
                    <a href="/account.aspx" class="breadcrumb-label">Your Account</a>
                </li>
                <li class="breadcrumb is-active">
                    <span class="breadcrumb-label">Your Cart</span>
                </li>
            </ul>
            <h1 class="page-heading">Shopping Cart</h1>
            <nav class="navBar navBar--sub navBar--account">
                <ul class="navBar-section">
                    <li class="navBar-item">
                        <a class="navBar-action" href="account.aspx">Orders</a>
                    </li>
                    <li class="navBar-item is-active">Cart</li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="account_settings.aspx">Account Settings</a>
                    </li>
                </ul>
            </nav>









            <div class="account account--fixed">


            <div class="page">



                <div class="data-cart-content">
                    <!-- Cart-->
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" EmptyDataText="There are no data records to display." CssClass="table table-striped table-bordered" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdated="GridView1_RowUpdated" OnRowDeleting="GridView1_RowDeleting" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="cart_id" HeaderText="Cart Id" ReadOnly="True" SortExpression="cart_id" ControlStyle-CssClass="shownone" HeaderStyle-CssClass="shownone" ItemStyle-CssClass="shownone">

                                <ControlStyle CssClass="shownone"></ControlStyle>

                                <HeaderStyle CssClass="shownone"></HeaderStyle>

                                <ItemStyle CssClass="shownone"></ItemStyle>

                            </asp:BoundField>
                            <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" Visible="false" />
                            <asp:BoundField DataField="cart_product_name" HeaderText="Product name" SortExpression="cart_product_name" HeaderStyle-CssClass="name" ItemStyle-CssClass="name" ReadOnly="True">
                                <HeaderStyle CssClass="name"></HeaderStyle>

                                <ItemStyle CssClass="name"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Quantity" SortExpression="cart_quantity">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cart_quantity") %>' CssClass="name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only Positive Numeric Value" ControlToValidate="TextBox1" Display="Dynamic" ValidationExpression="^[1-9]\d{0,2}$"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("cart_quantity") %>' CssClass="name"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="cart_productSubPrice" HeaderText="Price Per Unit" SortExpression="cart_productSubPrice" ReadOnly="True" DataFormatString="{0:0.00}">
                                <HeaderStyle CssClass="price" />
                                <ItemStyle CssClass="price" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cart_subTotal" HeaderText="Sub Total" SortExpression="cart_subTotal" HeaderStyle-CssClass="price" ItemStyle-CssClass="price" ReadOnly="True" DataFormatString="{0:0.00}">
                                <HeaderStyle CssClass="price" />
                                <ItemStyle CssClass="price" />
                            </asp:BoundField>
                            <asp:BoundField DataField="cart_cdate" HeaderText="cart_cdate" SortExpression="cart_cdate" Visible="false" ReadOnly="True" />
                            <asp:BoundField DataField="cart_transid" HeaderText="cart_transid" SortExpression="cart_transid" Visible="false">

                                <ControlStyle CssClass="shownone"></ControlStyle>

                                <HeaderStyle CssClass="price" />
                                <ItemStyle CssClass="price" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#FF0066" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>

                </div>

                <div class="container">

                    <div class="col-lg-3 pull-right">
                        <asp:FormView ID="FormView1" runat="server">
                            <ItemTemplate>
                                <table class="table table-striped table-bordered">
                                    <tr>
                                        <td><span class="cart-total-label">Grand Total: </span></td>
                                        <td><span class="cart-total-value cart-total-grandTotal">
                                            <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("TotalPayment","{0:$0.00}") %>'></asp:Label></span></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:FormView>
                        <a href="checkout.aspx" class="button button--primary">CheckOut </a>
                        <a href="default.aspx" class="button button--small">Continue Shopping </a>
                    </div>

                </div>
            </div>
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
