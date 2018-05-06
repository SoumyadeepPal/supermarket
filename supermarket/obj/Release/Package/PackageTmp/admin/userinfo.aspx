<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="supermarket.admin.userinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">


            <h1 class="page-heading">Customers</h1>
            <nav class="navBar navBar--sub navBar--account">
                <ul class="navBar-section">
                    <li class="navBar-item">
                        <a class="navBar-action" href="products.aspx">Products</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="categories.aspx">Categories</a>
                    </li>
                    <li class="navBar-item is-active">Customers</li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="orders.aspx">Orders</a>
                    </li>
                </ul>
            </nav>

            <main class="account account--fixed">
    <div class="account-head">
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







    <div id="maincontainer">
        <section id="product">
            <div class="container">
                <div class="row">


                    <!-- User Contet goes here-->

                    <div class="col-lg-12" align="center">
                        <h1 class="heading1"><span class="maintext">All Customer Details<center>
                        </span></h1>
                        <div  style="overflow-x:auto;">

                            <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" EmptyDataText="There are no data records to display." CssClass="table table-striped table-bordered" GridLines="None" CellPadding="4" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="user_id" HeaderText="Serial No." SortExpression="user_id" Visible="false" />

                                    <asp:BoundField DataField="user_fname" HeaderText="First Name" SortExpression="user_fname" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_lname" HeaderText="Last Name" SortExpression="user_lname" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_email" HeaderText="Email Address" SortExpression="user_email" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_ph_num" HeaderText="Phone Number" SortExpression="user_ph_num" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_addr1" HeaderText="Address Line 1" SortExpression="user_addr1" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_addr2" HeaderText="Address Line 2
"
                                        SortExpression="user_addr2" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_city" HeaderText="Suburb/City" SortExpression="user_city" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_state" HeaderText="State/Province" SortExpression="user_state" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_country" HeaderText="Country" SortExpression="user_country" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:BoundField DataField="user_zip" HeaderText="Zip/Postcode" SortExpression="user_zip" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:BoundField>

                                    <asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="single_user_view.aspx?uid={0}" Text="View" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
                                        <HeaderStyle CssClass="name"></HeaderStyle>

                                        <ItemStyle CssClass="name"></ItemStyle>
                                    </asp:HyperLinkField>
                                </Columns>

                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#ff0066" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />

                            </asp:GridView>

                        </div>
                    </div>

                </div>
            </div>
        </section>
    </div>

















</asp:Content>
