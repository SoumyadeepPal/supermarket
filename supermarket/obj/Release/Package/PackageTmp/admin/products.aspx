<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="supermarket.admin.products" %>

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
                </ul>
            </nav>

            <div class="account account--fixed">
    <div class="account-head">
    </div>
    <div class="account-body">
        








        <div class="row"> 
          
          



            <ul class="tabs tabs--alt">
            <li class="tab is-active">
                <a class="tab-title" href="/admin/products.aspx" aria-selected="true" tabindex="0">View All Product</a>
            </li>
                <li class="tab">
                    <a class="tab-title" href="/admin/product_add.aspx" aria-selected="false" tabindex="0">Add New Product</a>
                </li>
        </ul>







                 
        <!-- User Contet goes here-->
       <!-- Add Product Section-->
        <div class="col-lg-9" align="center" >
          <h1 class="heading1"><span class="maintext">View All Product Details</span></h1>
          <div style="overflow-x:auto;">


              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" EmptyDataText="There are no data records to display." CssClass="table table-striped table-bordered"  GridLines="None" CellPadding="4" ForeColor="#333333" >
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="product_id" HeaderText="Product Name" SortExpression="product_id" Visible="false" />
                      <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
                     
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                     
                      <asp:BoundField DataField="product_price" HeaderText="Product Price" SortExpression="product_price" DataFormatString="{0:$0.00}" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                      <asp:BoundField DataField="product_stock" HeaderText="Product Stock" SortExpression="product_stock" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                      <asp:BoundField DataField="product_cdate" HeaderText="Posting Time" SortExpression="product_cdate" DataFormatString="{0:d}" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                      <asp:BoundField DataField="category_name" HeaderText="Category Name" SortExpression="category_name" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:BoundField>
                      <asp:HyperLinkField DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="product_edit.aspx?pid={0}" Text="Edit" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
<HeaderStyle CssClass="name"></HeaderStyle>

<ItemStyle CssClass="name"></ItemStyle>
                      </asp:HyperLinkField>
                      <asp:HyperLinkField DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="product_delete.aspx?pid={0}" Text="Delete" HeaderStyle-CssClass="name" ItemStyle-CssClass="name">
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
