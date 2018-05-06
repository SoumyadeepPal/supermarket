<%@ Page Title="Supermarket- Admin Portal" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="supermarket.admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">
            <div class="login">
                <h1 class="page-heading">Sign in (Admin Only)</h1>
                <div class="login-row">
                    <div class="login-form form">
                        <div class="form-field form-field--input form-field--inputEmail">



                            <asp:Label ID="email" runat="server" class="form-label" Text="Email Address:"></asp:Label>
                            <asp:TextBox ID="email_ip" runat="server" class="form-input"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="x This field is Required" ControlToValidate="email_ip" Display="Dynamic" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="x You must enter a valid email." ControlToValidate="email_ip" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:RegularExpressionValidator>




                            <span style="display: none;"></span>
                        </div>
                        <div class="form-field form-field--input form-field--inputPassword">


                            <asp:Label ID="pass" runat="server" class="form-label" Text="Password:"></asp:Label>
                            <asp:TextBox ID="pass_ip" runat="server" class="form-input" TextMode="Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="x This field is Required" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>



                            <span style="display: none;"></span>
                        </div>



                        <div class="form-actions">
                            <asp:Button ID="login_btn" class="button button--primary" runat="server" Text="Sign in" OnClick="login_btn_Click" CausesValidation="False" />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>

                            <a class="forgot-password" href="#">Forgot your password?</a>
                        </div>
                    </div>
                    <div class="new-customer">
                        <div class="panel">
                            <div class="panel-header">
                                <h2 class="panel-title">What Admin can do?</h2>
                            </div>
                            <div class="panel-body">
                                <ul class="new-customer-fact-list">
                                    <li class="new-customer-fact">Manage Products</li>
                                    <li class="new-customer-fact">Manage Categories</li>
                                    <li class="new-customer-fact">Manage Customers</li>
                                    <li class="new-customer-fact">Manage Orders</li>
                                </ul>
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
