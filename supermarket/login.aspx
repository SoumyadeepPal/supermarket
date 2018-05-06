<%@ Page Title="Supermarket- Sign in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="supermarket.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">
            <div class="login">
                <ul class="breadcrumbs">
                    <li class="breadcrumb ">
                        <a href="Default.aspx" class="breadcrumb-label">Home</a>
                    </li>
                    <li class="breadcrumb is-active">
                        <span class="breadcrumb-label">Login</span>
                    </li>
                </ul>
                <h1 class="page-heading">Sign in</h1>
                <div class="login-row">
                    <div class="login-form form">
                        <div class="form-field form-field--input form-field--inputEmail">



                            <asp:Label ID="email" runat="server" CssClass="form-label" Text="Email Address:"></asp:Label>
                            <asp:TextBox ID="email_ip" runat="server" CssClass="form-input"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="x This field is Required" ControlToValidate="email_ip" Display="Dynamic" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="x You must enter a valid email." ControlToValidate="email_ip" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:RegularExpressionValidator>



                            <span style="display: none;"></span>
                        </div>
                        <div class="form-field form-field--input form-field--inputPassword">


                            <asp:Label ID="pass" runat="server" CssClass="form-label" Text="Password:"></asp:Label>
                            <asp:TextBox ID="pass_ip" runat="server" CssClass="form-input" TextMode="Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="x This field is Required" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>



                            <span style="display: none;"></span>
                        </div>



                        <div class="form-actions">
                            <asp:Button ID="login_btn" CssClass="button button--primary" runat="server" Text="Sign in" OnClick="login_btn_Click" CausesValidation="False" />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>

                            <a class="forgot-password" href="#">Forgot your password?</a>
                        </div>
                    </div>
                    <div class="new-customer">
                        <div class="panel">
                            <div class="panel-header">
                                <h2 class="panel-title">New Customer?</h2>
                            </div>
                            <div class="panel-body">
                                <p class="new-customer-intro">Create an account with us and you'll be able to:</p>
                                <ul class="new-customer-fact-list">
                                    <li class="new-customer-fact">Check out faster</li>
                                    <li class="new-customer-fact">Save multiple shipping addresses</li>
                                    <li class="new-customer-fact">Access your order history</li>
                                    <li class="new-customer-fact">Track new orders</li>
                                    <li class="new-customer-fact">Save items to your wish list</li>
                                </ul>
                                <a href="register.aspx" class="button button--primary">
                                    Create Account</a>
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
