<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="single_order.aspx.cs" Inherits="supermarket.admin.single_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="maincontainer">
  <section id="product">
    <div class="container">
    <!--  breadcrumb -->  
      <ul class="breadcrumb">
        <li>
          <a href="#">Home</a>
          <span class="divider">/</span>
        </li>
        <li class="active">Paid Order Information</li>
      </ul>
      <div class="row"> 
          
          
          <!-- Sidebar Start-->
        <div class="col-lg-3">
          <aside>
            <div class="sidewidt">
              <h2 class="heading2"><span> Sub Menu</span></h2>
              <ul class="nav nav-list categories">
                <li>
                  <a class="active" href="/admin/orders.aspx">Sucessful Orders</a>
                </li>
                <li>
                  <a href="/admin/canceledorder.aspx">Canceled Ordrers</a>
                </li>
                             
              </ul>
            </div>
          </aside>
        </div>
        <!-- Sidebar End-->
                 
        <!-- User Contet goes here-->
       <!-- Add Product Section-->
        <div class="col-lg-9" >
          <h1 class="heading1"><span class="maintext">View Order Details</span></h1>


          <div>

              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" EmptyDataText="There are no data records to display."  CssClass="table table-striped table-bordered"  GridLines="Horizontal">
                  <Columns>
                      <asp:BoundField DataField="cart_id" HeaderText="Cart id" SortExpression="cart_id" Visible="false" />

                      <asp:BoundField DataField="cart_product_name" HeaderText="Products" SortExpression="cart_product_name" HeaderStyle-CssClass="name" ItemStyle-CssClass="name"/>
                     
                      <asp:BoundField DataField="cart_quantity" HeaderText="Quantity" SortExpression="cart_quantity" HeaderStyle-CssClass="name" ItemStyle-CssClass="name"/>

                      <asp:BoundField DataField="cart_productSubPrice" HeaderText="Price Per Unit" SortExpression="cart_productSubPrice" DataFormatString="{0:0.00}"  HeaderStyle-CssClass="name" ItemStyle-CssClass="name"/>

                      <asp:BoundField DataField="cart_subTotal" HeaderText="Sub Total" SortExpression="cart_subTotal" DataFormatString="{0:0.00}"  HeaderStyle-CssClass="name" ItemStyle-CssClass="name"/>

                      <asp:BoundField DataField="cart_cdate" HeaderText="Buying Date" SortExpression="cart_cdate" DataFormatString="{0:d}" HeaderStyle-CssClass="name" ItemStyle-CssClass="name" />

                  </Columns>
                  
              </asp:GridView>
              
          </div>
      </div>
          
      </div>
    </div>
  </section>
</div>

</asp:Content>
