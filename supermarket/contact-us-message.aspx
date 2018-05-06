<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact-us-message.aspx.cs" Inherits="supermarket.contact_us_message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            We've received your feedback and will respond shortly if required. <a href="Default.aspx">Continue</a>.

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
