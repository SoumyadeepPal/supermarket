<%@ Page Title="Shipping & Returns" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shipping-returns.aspx.cs" Inherits="supermarket.shipping_returns" %>
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
                    <span class="breadcrumb-label">Shipping &amp; Returns</span>
                </li>
            </ul>

            <main class="page">

    <h1 class="page-heading">Shipping &amp; Returns</h1>


    <div class="page-content page-content--centered">
            <p><em style="font-style: normal"><strong>Returns Policy</strong></em><strong style="font-weight: 400"><em style="font-style: normal"><br><br></em>You may return most new, unopened items within 30 days of delivery for a full refund. We'll also pay the return shipping costs if the return is a result of our error (you received an incorrect or defective item, etc.).<br><br>You should expect to receive your refund within four weeks of giving your package to the return shipper, however, in many cases you will receive a refund more quickly. This time period includes the transit time for us to receive your return from the shipper (5 to 10 business days), the time it takes us to process your return once we receive it (3 to 5 business days), and the time it takes your bank to process our refund request (5 to 10 business days).<br><br>If you need to return an item, please <a href="contact-us.aspx">Contact Us</a> with your order number and details about the product you would like to return. We will respond quickly with instructions for how to return items from your order.<br><br></strong><strong>Shipping</strong><strong style="font-weight: 400"><em style="font-style: normal"><br><br></em>We can ship to virtually any address in the world. Note that there are restrictions on some products, and some products cannot be shipped to international destinations.<br><br>When you place an order, we will estimate shipping and delivery dates for you based on the availability of your items and the shipping options you choose. Depending on the shipping provider you choose, shipping date estimates may appear on the shipping quotes page.<br><br>Please also note that the shipping rates for many items we sell are weight-based. The weight of any such item can be found on its detail page. To reflect the policies of the shipping companies we use, all weights will be rounded up to the next full pound.<br></strong></p><strong style="font-weight: 400">
    </strong></div><strong style="font-weight: 400">

</strong></main>
            <strong style="font-weight: 400"></strong>
        </div>
        <strong style="font-weight: 400">
            <div id="modal" class="modal" data-reveal="" data-prevent-quick-search-close="">
                <a href="#" class="modal-close" aria-label="Close" role="button">
                    <span aria-hidden="true">×</span>
                </a>
                <div class="modal-content"></div>
                <div class="loadingOverlay" style="display: none;"></div>
            </div>
        </strong>
    </div>
</asp:Content>
