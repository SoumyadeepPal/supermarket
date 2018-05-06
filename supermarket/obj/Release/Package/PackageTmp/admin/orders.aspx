<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="supermarket.admin.orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">

            
            <h1 class="page-heading">Orders</h1>
            <nav class="navBar navBar--sub navBar--account">
                <ul class="navBar-section">
                    <li class="navBar-item">
                        <a class="navBar-action" href="products.aspx">Products</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="categories.aspx">Categories</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="userinfo.aspx">Customers</a>
                    </li>
                    <li class="navBar-item is-active">Orders</li>
                </ul>
            </nav>

            <main class="account account--fixed">
    <div class="account-head">
    </div>






                <div class="row"> 
          
          



          <ul class="tabs tabs--alt">
            <li class="tab is-active">
                <a class="tab-title" href="/admin/orders.aspx" aria-selected="true" tabindex="0">Sucessful Orders</a>
            </li>
                <li class="tab">
                    <a class="tab-title" href="/admin/canceledorder.aspx" aria-selected="false" tabindex="0">Canceled Ordrers</a>
                </li>
        </ul>



                 
        <!-- User Contet goes here-->
       <!-- Add Product Section-->
        <div class="col-lg-9" align="center" >
          <h1 class="heading1"><span class="maintext">Sucessful Order Details</span></h1>
          <div>

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" EmptyDataText="There are no data records to display."  CssClass="table table-striped table-bordered"  GridLines="None" CellPadding="4" ForeColor="#333333">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="order_id" HeaderText="Product Name" SortExpression="order_id" Visible="false" />

                      <asp:BoundField DataField="cart_transid" HeaderText="Transaction Code" SortExpression="cart_transid" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
                     
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                     
                      <asp:BoundField DataField="order_customerName" HeaderText="Customer Name" SortExpression="order_customerName" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:BoundField DataField="order_total" HeaderText="Order Total" SortExpression="order_total" DataFormatString="{0:0.00}"  HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                      <asp:BoundField DataField="order_payment" HeaderText="Payment Method" SortExpression="order_payment" HeaderStyle-CssClass="name" ItemStyle-CssClass="name" >

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:BoundField DataField="user_id" HeaderText="User Id" SortExpression="user_id" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:HyperLinkField DataNavigateUrlFields="cart_transid" DataNavigateUrlFormatString="single_order.aspx?tid={0}" Text="View" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
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
