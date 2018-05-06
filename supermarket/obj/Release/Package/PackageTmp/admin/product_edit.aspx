<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="product_edit.aspx.cs" Inherits="supermarket.admin.product_edit" %>

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
        <div class="col-lg-9" >
          <h1 class="heading1"><span class="maintext">Edit product Details</span></h1>
          <div class="form-horizontal">

              <div class="col-lg-6">
            <div class="registerbox">
                
                <div class="form-field">
                   <label class="form-label">
                                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                                <small>Required</small>
                            </label>
                  <div class="controls">
                      <asp:TextBox ID="txtProductName" runat="server" CssClass="form-input"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="txtProductName" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Alpha Numeric name" ControlToValidate="txtProductName" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9\-\s]+$"></asp:RegularExpressionValidator>
                  </div>
                </div>

                <div class="form-field">
                   <label class="form-label">
                                <asp:Label ID="Label2" runat="server" Text="Product Price(in $)"></asp:Label>
                                <small>Required</small>
                            </label>
                  <div class="controls">
                    <asp:TextBox ID="txtProductPrice" runat="server" CssClass="form-input"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="txtProductPrice" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only money Value" ControlToValidate="txtProductPrice" Display="Dynamic" ValidationExpression="^([1-9]\d{0,2}(\,\d{3})*|([1-9]\d*))(\.\d{2})?$"></asp:RegularExpressionValidator>
                  </div>
                </div>

                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
                                <small>Required</small>
                            </label>
                  <div class="controls">
                    <asp:TextBox ID="txtProductQty" runat="server" CssClass="form-input"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="txtProductQty" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only Positive Numeric Value" ControlToValidate="txtProductQty" Display="Dynamic" ValidationExpression="^[1-9]\d{0,2}$"></asp:RegularExpressionValidator>
                  </div>
                </div>
                






















                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label4" runat="server" Text="Product Image 1"></asp:Label>
                                <small>Required</small>
                            </label>
                  <div class="controls">
                      <asp:FileUpload ID="fuProductImg" runat="server" CssClass="input-xlarge" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="fuProductImg" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ControlToValidate="fuProductImg"></asp:CustomValidator>
                  </div>
                </div>

                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label5" runat="server" Text="Product Image 2"></asp:Label>
                                <small>Optional</small>
                            </label>
                  <div class="controls">
                      <asp:FileUpload ID="fuProductImg2" runat="server" CssClass="input-xlarge" />
                      <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ControlToValidate="fuProductImg"></asp:CustomValidator>                      
                  </div>
                </div>

                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label6" runat="server" Text="Product Image 3"></asp:Label>
                                <small>Optional</small>
                            </label>
                  <div class="controls">
                      <asp:FileUpload ID="fuProductImg3" runat="server" CssClass="input-xlarge" />
                      <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ControlToValidate="fuProductImg"></asp:CustomValidator>
                  </div>
                </div>

                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label7" runat="server" Text="Product Image 4"></asp:Label>
                                <small>Optional</small>
                            </label>
                  <div class="controls">
                      <asp:FileUpload ID="fuProductImg4" runat="server" CssClass="input-xlarge" />
                      <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ControlToValidate="fuProductImg"></asp:CustomValidator>
                  </div>
                </div>

                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label8" runat="server" Text="Product Image 5"></asp:Label>
                                <small>Optional</small>
                            </label>
                  <div class="controls">
                      <asp:FileUpload ID="fuProductImg5" runat="server" CssClass="input-xlarge" />
                      <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="CustomValidator" Display="Dynamic" ControlToValidate="fuProductImg"></asp:CustomValidator>
                  </div>
                </div>








































                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label9" runat="server" Text="Product Category"></asp:Label>
                                <small>Required</small>
                            </label>
                      <asp:DropDownList ID="ProductPageList" runat="server" CssClass="form-input"></asp:DropDownList>
                  </div>
                </div>

                <div class="form-field">
                  <label class="form-label">
                                <asp:Label ID="Label10" runat="server" Text="Product Description
"></asp:Label>
                                <small>Required</small>
                            </label>
                  <div class="controls">
                    <asp:TextBox ID="txtProductDesc" runat="server" CssClass="form-input" Rows="8" TextMode="MultiLine"></asp:TextBox>
                  </div>
                </div>

                 
            </div>

                  <div class="form-actions">
                      <asp:Button ID="btnProductUpdate" runat="server" Text="Update Product" CssClass="button button--primary" OnClick="btnProductUpdate_Click" />
				</div>
        </div>

             
          <div class="clearfix">
              </div>
          <br/>
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
