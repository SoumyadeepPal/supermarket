<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="supermarket.contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            -webkit-appearance: none;
            -moz-appearance: none;
            display: block;
            border-radius: 4px;
            font-family: inherit;
            appearance: none;
            color: #454545;
            font-size: 1rem;
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
            font-smoothing: antialiased;
            transition: border-color .1s ease-out;
            border: 1px solid #dcdcdc;
            margin: 0;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">

        <div class="container">

            <ul class="breadcrumbs">
                <li class="breadcrumb ">
                    <a href="Default.aspx" class="breadcrumb-label">Home</a>
                </li>
                <li class="breadcrumb is-active">
                    <span class="breadcrumb-label">Contact Us</span>
                </li>
            </ul>

            <main class="page">

    <h1 class="page-heading">Contact Us</h1>


    <div class="page-content page-content--centered">
            <p></p><p>We're happy to answer questions or help you with returns.<br>Please fill out the form below if you need assistance.</p><p></p>
            
    <input type="hidden" name="page_id" id="page_id" value="4">
    <div class="form-row form-row--half">

        <div class="form-field">


                            <label class="form-label">
                                <asp:Label ID="email" runat="server" Text="Email Address"></asp:Label>
                                <small>Required</small>
                            </label>


                            <asp:TextBox ID="email_ip" runat="server" CssClass="form-input"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="x This field is Required" ControlToValidate="email_ip" Display="Dynamic" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="x You must enter a valid email." ControlToValidate="email_ip" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:RegularExpressionValidator>

                            <span style="display: none;"></span>
                        </div>

        <div class="form-field">

                            <label class="form-label">
                                <asp:Label ID="pass" runat="server" Text="Email Password"></asp:Label>
                                <small>Required</small>
                            </label>


                            <asp:TextBox ID="pass_ip" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="x This field is Required" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>



                            <span style="display: none;"></span>
                        </div>

            
    </div>

        <div class="form-field">
                            <label class="form-label">
                                <asp:Label ID="subject" runat="server" Text="Subject"></asp:Label>
                                <small>Required</small>
                            </label>
                            <asp:TextBox ID="subject_ip" runat="server" CssClass="form-input"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="x This field is Required" ControlToValidate="subject_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                            <span style="display: none;"></span>
                        </div>



        <div class="form-field">
                            <label class="form-label">
                                <asp:Label ID="comment" runat="server" Text="Comments/Questions"></asp:Label>
                                <small>Required</small>
                            </label>

                            <asp:TextBox ID="comment_ip" runat="server" CssClass="form-input" TextMode="MultiLine" rows="5" cols="50"></asp:TextBox>


                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="x This field is Required" ControlToValidate="comment_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            


                            <span style="display: none;"></span>
                        </div>



    <div class="form-actions">
                        <asp:Button ID="Button1" runat="server" Text="Submit Form" CssClass="button button--primary" OnClick="Button1_Click" CausesValidation="False" />
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
