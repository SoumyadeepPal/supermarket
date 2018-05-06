<%@ Page Title="Supermarket - Newsletter Subscription" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="subscribe.aspx.cs" Inherits="supermarket.subscribe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">
     
    <div class="container">
        
<section class="page">
    <div class="page-content page-content--centered">
        <h1 class="page-heading">
                Thanks for Subscribing!
        </h1>

            <div class="alertBox alertBox--success">
    <div class="alertBox-column alertBox-icon">
        <icon glyph="ic-success" class="icon" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg></icon>
    </div>
    <p class="alertBox-column alertBox-message">
        <span>Thank you for joining our mailing list. You'll be sent the next issue of our newsletter shortly</span>
    </p>
</div>

    </div>
</section>


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
