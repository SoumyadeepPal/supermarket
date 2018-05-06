<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="single_user_view.aspx.cs" Inherits="supermarket.admin.single_user_view" %>

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
                    <li class="navBar-item">
                        <a class="navBar-action" href="account_settings.aspx">Account Settings</a>
                    </li>
                </ul>
            </nav>

            <main class="account account--fixed">
    <div class="account-head">
    </div>


<div class="row">        
        <!-- Register Account-->
        <div class="col-lg-12">
          <h1 class="heading1"><span class="maintext">Customer information</span></h1>
          <div class="form-horizontal">

              <div class="col-lg-12">
            <h3 class="heading3">Customer Registered Details</h3>
                  <asp:FormView ID="FormView1" runat="server" Width="218px">

                      <ItemTemplate>

            <div class="registerbox">
             
                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">First Name :</label>
                  <div class="controls">
                    <asp:Label ID="lblFname" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_fname") %>'></asp:Label>
                      
                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Last Name :</label>
                  <div class="controls">
                    <asp:Label ID="lblLname" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_lname") %>'></asp:Label>
                      
                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Email Address :</label>
                  <div class="controls">
                    <asp:Label ID="lnlMail" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_email") %>'></asp:Label>
                      
                  </div>
                </div>
                    </div>
            
                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Phone Number :</label>
                  <div class="controls">
                    <asp:Label ID="lblAddress" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_ph_num") %>'></asp:Label>
                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Address Line 1 :</label>
                  <div class="controls">
                    <asp:Label ID="lblCity" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_addr1") %>'></asp:Label>
                       
                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Address Line 2 :</label>
                  <div class="controls">
                    <asp:Label ID="lblPin" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_addr2") %>'></asp:Label>
                  </div>
                </div>
                    </div>

                <div class="form-field">
               <div class="control-group">
                  <label class="control-label">Suburb/City :</label>
                  <div class="controls">
                    <asp:Label ID="lblState" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_city") %>'></asp:Label>
                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">State/Province :</label>
                  <div class="controls">
                    <asp:Label ID="lblCountry" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_state") %>'></asp:Label>
                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Country :</label>
                  <div class="controls">
                    <asp:Label ID="Label1" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_country") %>'></asp:Label>

                  </div>
                </div>
                    </div>

                <div class="form-field">
                <div class="control-group">
                  <label class="control-label">Zip/Postcode :</label>
                  <div class="controls">
                    <asp:Label ID="Label2" runat="server" CssClass="form-input" Rows="100" TextMode="MultiLine" Text='<%# Eval("user_zip") %>'></asp:Label>

                  </div>
                </div>
                    </div>

                

              </div>
                          </ItemTemplate>
                  </asp:FormView>
        </div>

              
			  <div class="form-actions">
              <a class="button button--primary" href="userinfo.aspx"> View All User</a>
				</div>
            
          
          <div class="clearfix"></div>
          <br/>
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
