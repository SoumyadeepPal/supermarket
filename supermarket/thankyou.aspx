<%@ Page Title="" Language="C#" MasterPageFile="~/Checkout.Master" AutoEventWireup="true" CodeBehind="thankyou.aspx.cs" Inherits="supermarket.thankyou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ng-checkout-container bc-ng">
        <div class="ng-checkout-view">
            <div class="layout optimizedCheckout-contentPrimary loadingOverlay-container" loading-overlay="appCtrl.shouldShowLoadingOverlay()">
                <main class="layout-main" ui-view="main"><div class="orderConfirmation">
    <h1>Thank you <asp:Label ID="LabelName" runat="server" Text=""></asp:Label></h1>

    <section class="orderConfirmation-section">
        <p>Your order number is <strong><asp:Label ID="LabelOrderNum" runat="server" Text=""></asp:Label></strong></p>

        <p>An email will be sent containing information about your purchase. If you have any questions about your purchase, email us at <a href="mailto:upbw.mwf17@gmail.com" target="_top">upbw.mwf17@gmail.com</a> or call us at <a href="tel://123-456-7890">123-456-7890</a>.</p>

        
    </section>

    <section class="orderConfirmation-section">
        <h2>What's next?</h2>
        <asp:Button ID="chkorder" runat="server" Text="Check your order" CssClass="button button--primary" OnClick="chkorder_Click"/>
        <p><h2>OR</h2></p>
        <asp:Button ID="btnCtnShopping" runat="server" Text="Continue Shopping" CssClass="button button--primary" OnClick="btnCtnShopping_Click1"/>
        <p><h2>OR</h2></p>
        <asp:Button ID="btnLogout" runat="server" Text="Log Out" CssClass="button button--primary" OnClick="btnLogout_Click" />
    </section>
</div>
</main>

            </div>


        </div>
    </div>

</asp:Content>
