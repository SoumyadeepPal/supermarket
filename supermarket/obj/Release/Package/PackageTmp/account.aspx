<%@ Page Title="" Language="C#" MasterPageFile="~/RegisteredUserSite.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="supermarket.account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">

            <ul class="breadcrumbs">
                <li class="breadcrumb ">
                    <a href="Default.aspx" class="breadcrumb-label">Home</a>
                </li>
                <li class="breadcrumb ">
                    <a href="/account.aspx" class="breadcrumb-label">Your Account</a>
                </li>
                <li class="breadcrumb is-active">
                    <span class="breadcrumb-label">Your Orders</span>
                </li>
            </ul>
            <h1 class="page-heading">Orders</h1>
            <nav class="navBar navBar--sub navBar--account">
                <ul class="navBar-section">
                    <li class="navBar-item is-active">Orders</li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="#">Messages</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="#">Wish Lists</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="#">Recently Viewed</a>
                    </li>
                    <li class="navBar-item">
                        <a class="navBar-action" href="account_settings.aspx">Account Settings</a>
                    </li>
                </ul>
            </nav>

            <main class="account account--fixed">
    <div class="account-head">
    </div>
    <div class="account-body">
        <section class="account-content">
                <div class="alertBox alertBox--info">
    <div class="alertBox-column alertBox-icon">
        <icon glyph="ic-success" class="icon" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg></icon>
    </div>
    <p class="alertBox-column alertBox-message">
        <span>You haven't placed any orders with us. When you do, their status will appear on this page.</span>
    </p>
</div>
        </section>
    </div>
    <!-- snippet location account -->
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
