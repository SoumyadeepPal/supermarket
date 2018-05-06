<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="canceledorder.aspx.cs" Inherits="supermarket.admin.canceledorder" %>
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
            <li class="tab">
                <a class="tab-title" href="/admin/orders.aspx" aria-selected="true" tabindex="0">Sucessful Orders</a>
            </li>
                <li class="tab is-active">
                    <a class="tab-title" href="/admin/canceledorder.aspx" aria-selected="false" tabindex="0">Canceled Ordrers</a>
                </li>
        </ul>




                 
        <!-- User Contet goes here-->
       <!-- Add Product Section-->
        <div class="col-lg-9" align="center" >
          <h1 class="heading1"><span class="maintext">Canceled Order Details</span></h1>


          <div>

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" EmptyDataText="There are no data records to display."  CssClass="table table-striped table-bordered"  GridLines="None" CellPadding="4" ForeColor="#333333">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="cart_id" HeaderText="Cart id" SortExpression="cart_id" Visible="false" />

                      <asp:BoundField DataField="cart_product_name" HeaderText="Products" SortExpression="cart_product_name" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
                     
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                     
                      <asp:BoundField DataField="cart_quantity" HeaderText="Quantity" SortExpression="cart_quantity" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:BoundField DataField="cart_productSubPrice" HeaderText="Price Per Unit" SortExpression="cart_productSubPrice" DataFormatString="{0:0.00}"  HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:BoundField DataField="cart_subTotal" HeaderText="Sub Total" SortExpression="cart_subTotal" DataFormatString="{0:0.00}"  HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:BoundField DataField="cart_cdate" HeaderText="Buying Date" SortExpression="cart_cdate" DataFormatString="{0:d}" HeaderStyle-CssClass="name" ItemStyle-CssClass="name" >

<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>

                      <asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="single_user_view.aspx?uid={0}" Text="View Customer" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">

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
