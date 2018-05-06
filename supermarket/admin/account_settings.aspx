<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminAccount.Master" AutoEventWireup="true" CodeBehind="account_settings.aspx.cs" Inherits="supermarket.admin.account_settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">
            <div class="account account--fixed">


                <h1 class="page-heading">Account Settings</h1>
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
                        <li class="navBar-item">
                            <a class="navBar-action" href="orders.aspx">Orders</a>
                        </li>
                        <li class="navBar-item is-active">Account Settings</li>
                    </ul>
                </nav>



                <div class="account-body">

                    <!--<center><h2><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2></center>-->



                <html id="html1" runat="server" xmlns="http://www.w3.org/1999/xhtml">
</html>











                    <div class="account-body">
                        <div class="form-row form-row--half">






                            <div class="form-field">


                                <label class="form-label">
                                    <asp:Label ID="email" runat="server" Text="Email Address"></asp:Label>
                                    <small>Required</small>
                                </label>


                                <asp:TextBox ID="email_ip" runat="server" CssClass="form-input"></asp:TextBox>



                                <span style="display: none;"></span>
                            </div>




                            <div class="form-field">

                                <label class="form-label">
                                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                                    <small>Required</small>
                                </label>


                                <asp:TextBox ID="pass_ip" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="x This field is Required" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="x Passwords must contain both alphabetic and numeric characters." ControlToValidate="pass_ip" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]*$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>



                                <span style="display: none;"></span>
                            </div>








                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="repassword" runat="server" Text="Confirm Password"></asp:Label>
                                    <small>Required</small>
                                </label>


                                <asp:TextBox ID="repass_ip" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="x This field is Required" ControlToValidate="repass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="x Your passwords does not match." ControlToCompare="repass_ip" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:CompareValidator>



                                <span style="display: none;"></span>
                            </div>














                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="aname" runat="server" Text="Admin Name"></asp:Label>
                                    <small>Required</small>
                                </label>

                                <asp:TextBox ID="aname_ip" runat="server" CssClass="form-input"></asp:TextBox>






                                <span style="display: none;"></span>
                            </div>




                        </div>





                        <div class="form-actions">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button button--primary" CausesValidation="False" OnClick="LinkButton1_Click">Update Details</asp:LinkButton>
                        </div>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>

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
