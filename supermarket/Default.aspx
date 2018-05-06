<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="supermarket.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">
        <div class="container container--emthemesModez-section1-fullwidth" id="emthemesModez-section1-container">
            <div class="emthemesModez-section1 emthemesModez-section1--fullwidth">

                <section class="heroCarousel"
                    data-slick='{
        "dots": true,
        "mobileFirst": true,
        "slidesToShow": 1,
        "slidesToScroll": 1,
        "autoplay": true,
        "autoplaySpeed": 5000
    }'>
                    <div class="heroCarousel-slide  heroCarousel-slide--0"
                        style="background-image: url(../cdn3.bigcommerce.com/s-qe5r4ejjcw/product_images/theme_images/slide01-notext__479539c3c.jpg?t=1500564569)">
                        <a href="#">
                            <img class="heroCarousel-image" src="../cdn3.bigcommerce.com/s-qe5r4ejjcw/product_images/theme_images/slide01-notext__479539c3c.jpg?t=1500564569" alt="" title="" />
                            <div class="heroCarousel-content">
                                <h1 class="heroCarousel-title">SUPER SALE</h1>
                                <p class="heroCarousel-description">SPRING 50% DISCOUNT</p>
                                <span class="heroCarousel-action button button--primary button--large">Shop Now</span>
                            </div>
                        </a>
                    </div>
                    <div class="heroCarousel-slide  heroCarousel-slide--1"
                        style="background-image: url(../cdn3.bigcommerce.com/s-qe5r4ejjcw/product_images/theme_images/slide02-notext__083529c3c.jpg?t=1500564569)">
                        <a href="#">
                            <img class="heroCarousel-image" src="../cdn3.bigcommerce.com/s-qe5r4ejjcw/product_images/theme_images/slide02-notext__083529c3c.jpg?t=1500564569" alt="" title="" />
                            <div class="heroCarousel-content">
                                <h1 class="heroCarousel-title">50% OFF</h1>
                                <p class="heroCarousel-description">TOP DEALS OF THIS WEEK</p>
                                <span class="heroCarousel-action button button--primary button--large">BUY NOW</span>
                            </div>
                        </a>
                    </div>
                    <div class="heroCarousel-slide  heroCarousel-slide--2"
                        style="background-image: url(../cdn3.bigcommerce.com/s-qe5r4ejjcw/product_images/theme_images/slide03-notext9c3c.jpg?t=1500564569)">
                        <a href="#">
                            <img class="heroCarousel-image" src="../cdn3.bigcommerce.com/s-qe5r4ejjcw/product_images/theme_images/slide03-notext9c3c.jpg?t=1500564569" alt="" title="" />
                            <div class="heroCarousel-content">
                                <h1 class="heroCarousel-title">FURNITURE</h1>
                                <p class="heroCarousel-description">FALL IN LOVE FROM $49</p>
                                <span class="heroCarousel-action button button--primary button--large">Buy Now</span>
                            </div>
                        </a>
                    </div>
                </section>




                <div class="container">


                    <div class="main full">

                        <div id="emthemesModezBannersBlockHome01" class="emthemesModez-section  emthemesModez-section--banners-3x">
                            <div class="emthemesModez-section-inner">
                                <div class="emthemesModez-bannersContainer 
			emthemesModez-bannersContainer--onethird-x3 
			emthemesModez-bannersContainer--onethird-x3-1 
			">
                                    <div class="emthemesModez-banner">
                                        <div class="emthemesModez-banner-container">
                                            <a href="#">
                                                <img class="emthemesModez-banner-image" src="https://tvlgiao.github.io/bigcommerce-themes/supermarket/demo/images/banner01.jpg" alt="Sample banner 1" /></a>
                                        </div>
                                    </div>
                                    <div class="emthemesModez-banner">
                                        <div class="emthemesModez-banner-container">
                                            <a href="#">
                                                <img class="emthemesModez-banner-image" src="https://tvlgiao.github.io/bigcommerce-themes/supermarket/demo/images/banner02.jpg" alt="Sample banner 2" /></a>
                                        </div>
                                    </div>
                                    <div class="emthemesModez-banner">
                                        <div class="emthemesModez-banner-container">
                                            <a href="#">
                                                <img class="emthemesModez-banner-image" src="https://tvlgiao.github.io/bigcommerce-themes/supermarket/demo/images/banner03.jpg" alt="Sample banner 3" /></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>




































                        <div class="emthemesModez-section  emthemesModez-section--specialProductsTabs">
                            <div class="emthemesModez-section-inner">
                                <div class="emthemesModez-specialProductsTabs emthemesModez-specialProductsTabs--supermarket1">

                                    <div class="tabs-contents">

                                        <ul class="productGrid productGrid--maxCol4" data-product-type="featured">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <li class="product">

                                                        <article class="card ">
                                                            <figure class="card-figure">
                                                                <asp:Image ID="Image1" runat="server" CssClass="card-image" ImageUrl='<%#Eval("product_image1") %>' AlternateText='<%#Eval("product_name") %>' />
                                                                <asp:Image ID="Image2" runat="server" CssClass="card-image" ImageUrl='<%#Eval("product_image2") %>' AlternateText='<%#Eval("product_name") %>' />
                                                                <figcaption class="card-figcaption">
                                                                    <div class="card-figcaption-body">
                                                                        <div class="card-buttons">
                                                                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="button button--small button--primary card-figcaption-button" NavigateUrl='<%# Eval("product_id", "~/single-product.aspx?pid={0}") %>'>View More</asp:HyperLink>
                                                                        </div>

                                                                        <div class="card-buttons card-buttons--alt">
                                                                            <!--<a href="#" class="button button--small card-figcaption-button quickview" data-product-id="179">Quick view</a>-->
                                                                        </div>
                                                                    </div>
                                                                </figcaption>
                                                                </a>
                                                        <figcaption class="card-figcaption">
                                                            <div class="card-figcaption-body">
                                                            </div>
                                                        </figcaption>
                                                            </figure>
                                                            <div class="card-body">
                                                                <h4 class="card-title">
                                                                    <asp:HyperLink ID="lnkProductName" runat="server" NavigateUrl='<%# Eval("product_id", "~/single-product.aspx?pid={0}") %>'><%#Eval("product_name") %></asp:HyperLink>
                                                                </h4>

                                                                <div class="card-text" data-test-info-type="price">
                                                                    <div class="price-section price-section--withoutTax ">
                                                                        <span data-product-price-without-tax="" class="price price--withoutTax">$<asp:Label ID="Label1" runat="server" Text='<%#Eval("product_price", "{0:0.00}") %>'></asp:Label></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </article>

                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


        <script>window.__webpack_public_path__ = "http://cdn3.bigcommerce.com/s-qe5r4ejjcw/stencil/c77cd3e0-5e57-0135-453f-525400dfdca6/e/cb5cc800-a5b3-0135-5494-525400970412/dist/";</script>
        <script src="../cdn3.bigcommerce.com/s-qe5r4ejjcw/stencil/c77cd3e0-5e57-0135-453f-525400dfdca6/e/cb5cc800-a5b3-0135-5494-525400970412/dist/theme-bundle.main.js"></script>
        <script>
            // Exported in app.js
            window.stencilBootstrap("pages/home", "{\"themeSettings\":{\"homepage_new_products_display_type\":\"carousel\",\"homepage_new_products_column_count\":2,\"homepage_new_products_count\":8,\"homepage_featured_products_display_type\":\"grid\",\"homepage_featured_products_column_count\":4,\"homepage_featured_products_count\":8,\"homepage_top_products_display_type\":\"list\",\"homepage_top_products_column_count\":4,\"homepage_top_products_count\":8,\"homepage_show_carousel\":true,\"homepage_carousel_style\":\"fullwidth\",\"homepage_blog_posts_count\":3,\"homepage_expand_categories_menu\":true,\"productpage_videos_count\":8,\"productpage_reviews_count\":9,\"productpage_related_products_count\":10,\"productpage_similar_by_views_count\":10,\"productpage_description_type\":\"full\",\"productpage_bulk_price_table\":true,\"productpage_custom_fields_tab\":true,\"categorypage_products_per_page\":12,\"brandpage_products_per_page\":12,\"searchpage_products_per_page\":12,\"show_product_quick_view\":true,\"show_powered_by\":true,\"show_copyright_footer\":true,\"show_accept_amex\":true,\"show_accept_discover\":true,\"show_accept_mastercard\":true,\"show_accept_paypal\":true,\"show_accept_visa\":true,\"show_accept_applepay\":true,\"show_accept_amazon\":true,\"show_welcome_text\":true,\"ajax_add_to_cart\":true,\"product_list_display_mode\":\"grid\",\"logo-position\":\"left\",\"logo_size\":\"250x100\",\"brand_size\":\"300x300\",\"gallery_size\":\"300x300\",\"category_card_size\":\"300x300\",\"productgallery_size\":\"350x350\",\"product_size\":\"608x608\",\"productthumb_size\":\"100x100\",\"thumb_size\":\"100x100\",\"zoom_size\":\"1280x1280\",\"blog_size\":\"830x518\",\"default_image_brand\":\"/assets/img/BrandDefault.gif\",\"default_image_product\":\"/assets/img/ProductDefault.gif\",\"default_image_gift_certificate\":\"/assets/img/GiftCertificate.png\",\"body-font\":\"Google_Karla_400,400i,700,700i\",\"altBody-font\":\"Google_Karla_400\",\"headings-font\":\"Google_Karla_700\",\"altHeadings-font\":\"Google_Karla_400\",\"logo-font\":\"Google_Poppins_700\",\"fontSize-root\":14,\"fontSize-h1\":28,\"fontSize-h2\":20,\"fontSize-h3\":18,\"fontSize-h4\":16,\"fontSize-h5\":12,\"fontSize-h6\":11,\"font-smoothing\":\"initial\",\"applePay-button\":\"black\",\"color-textBase\":\"#505050\",\"color-textBase--hover\":\"#999999\",\"color-textBase--active\":\"#999999\",\"color-textSecondary\":\"#a5a5a5\",\"color-textSecondary--hover\":\"#666666\",\"color-textSecondary--active\":\"#666666\",\"color-textLink\":\"#282828\",\"color-textLink--hover\":\"#505050\",\"color-textLink--active\":\"#282828\",\"color-textHeading\":\"#282828\",\"color-primary\":\"#ff4d6a\",\"color-primaryDark\":\"#2d2d2d\",\"color-primaryDarker\":\"#000000\",\"color-primaryLight\":\"#a5a5a5\",\"color-secondary\":\"#ffffff\",\"color-secondaryDark\":\"#e8e8e8\",\"color-secondaryDarker\":\"#e8e8e8\",\"color-error\":\"#ff7d7d\",\"color-errorLight\":\"#ffdddd\",\"color-info\":\"#666666\",\"color-infoLight\":\"#dfdfdf\",\"color-success\":\"#69d66f\",\"color-successLight\":\"#d5ffd8\",\"color-warning\":\"#d4cb49\",\"color-warningLight\":\"#fffdea\",\"color-black\":\"#000000\",\"color-white\":\"#ffffff\",\"color-whitesBase\":\"#f8f8f8\",\"color-grey\":\"#4f4f4f\",\"color-greyDarkest\":\"#2d2d2d\",\"color-greyDarker\":\"#454545\",\"color-greyDark\":\"#666666\",\"color-greyMedium\":\"#989898\",\"color-greyLight\":\"#a5a5a5\",\"color-greyLighter\":\"#dfdfdf\",\"color-greyLightest\":\"#e8e8e8\",\"color-price\":\"#ff6600\",\"button--default-color\":\"#454545\",\"button--default-colorHover\":\"#666666\",\"button--default-colorActive\":\"#454545\",\"button--default-borderColor\":\"#dcdcdc\",\"button--default-borderColorHover\":\"#989898\",\"button--default-borderColorActive\":\"#454545\",\"button--primary-color\":\"#ffffff\",\"button--primary-colorHover\":\"#ffffff\",\"button--primary-colorActive\":\"#ffffff\",\"button--primary-backgroundColor\":\"#ff4d6a\",\"button--primary-backgroundColorHover\":\"#ff2448\",\"button--primary-backgroundColorActive\":\"#ff4d6a\",\"button--disabled-color\":\"#ffffff\",\"button--disabled-backgroundColor\":\"#dcdcdc\",\"button--disabled-borderColor\":\"#dcdcdc\",\"icon-color\":\"#ffffff\",\"icon-color-hover\":\"#ffffff\",\"icon-backgroundColor\":\"#ff4d6a\",\"icon-backgroundColor-hover\":\"#ff2448\",\"icon--alt-color\":\"#282828\",\"icon--alt-color-hover\":\"#ff4d6a\",\"icon--alt-backgroundColor\":\"transparent\",\"icon--alt-backgroundColor-hover\":\"transparent\",\"button--icon-svg-color\":\"#4f4f4f\",\"icon-ratingEmpty\":\"#dfdfdf\",\"icon-ratingFull\":\"#ffb400\",\"carousel-bgColor\":\"#ffffff\",\"carousel-bgColor-opacity\":0,\"carousel-title-color\":\"#ff4d6a\",\"carousel-description-color\":\"#000000\",\"carousel-dot-color\":\"#9c9c9c\",\"carousel-dot-color-active\":\"#ff4d6a\",\"carousel-dot-bgColor\":\"#ffffff\",\"carousel-arrow-color\":\"#989898\",\"carousel-arrow-bgColor\":\"#ffffff\",\"carousel-slide0-position\":\"center\",\"carousel-slide1-position\":\"center\",\"carousel-slide2-position\":\"center\",\"carousel-slide3-position\":\"center\",\"carousel-slide4-position\":\"center\",\"card-title-color\":\"#282828\",\"card-title-color-hover\":\"#a5a5a5\",\"card-figcaption-button-background\":\"#ffffff\",\"card-figcaption-button-color\":\"#333333\",\"card-figcaption-button-borderColor\":\"#dcdcdc\",\"card--alternate-backgroundColor\":\"#ffffff\",\"card--alternate-borderColor\":\"#ffffff\",\"card--alternate-color--hover\":\"#ffffff\",\"form-label-font-color\":\"#000000\",\"input-font-color\":\"#454545\",\"input-border-color\":\"#dcdcdc\",\"input-border-color-active\":\"#ff4d6a\",\"input-bg-color\":\"#ffffff\",\"input-disabled-bg\":\"#ffffff\",\"select-bg-color\":\"#ffffff\",\"select-arrow-color\":\"#999999\",\"checkRadio-color\":\"#4f4f4f\",\"checkRadio-backgroundColor\":\"#ffffff\",\"checkRadio-borderColor\":\"#dcdcdc\",\"alert-color\":\"#4f4f4f\",\"alert-color-alt\":\"#ffffff\",\"storeName-color\":\"#ff4d6a\",\"body-bg\":\"#ffffff\",\"header-backgroundColor\":\"#ffffff\",\"footer-backgroundColor\":\"#ffffff\",\"footer-color\":\"#505050\",\"footer-color-hover\":\"#ff4d6a\",\"footer-headingColor\":\"#282828\",\"footer-linkColor\":\"#ff4d6a\",\"footer-linkColor-hover\":\"#282828\",\"footer-secondary-backgroundColor\":\"#ff4d6a\",\"footer-secondary-color\":\"#ffffff\",\"footer-secondary-headingColor\":\"#ffffff\",\"footer-secondary-linkColor\":\"#ffffff\",\"footer-secondary-linkColor-hover\":\"#ffffff\",\"footer_show_aboutus\":true,\"footer_show_blog\":2,\"footer_show_newsletter\":true,\"footer_show_links_1\":false,\"footer_show_links_2\":false,\"footer_show_links_3\":false,\"footer_show_links_4\":false,\"footer_show_pages\":-1,\"footer_show_categories\":5,\"footer_show_contact\":true,\"footer_show_location\":true,\"footer_show_brands\":true,\"navUser-color\":\"#505050\",\"navUser-color-hover\":\"#ff4d6a\",\"navUser-dropdown-backgroundColor\":\"#ffffff\",\"navUser-dropdown-borderColor\":\"#dcdcdc\",\"navUser-indicator-backgroundColor\":\"#e74c3c\",\"navPages-color\":\"#282828\",\"navPages-color-hover\":\"#ff4d6a\",\"navPages-borderColor\":\"#ff4d6a\",\"navPages-categoriesItem-color\":\"#ffffff\",\"navPages-categoriesItem-backgroundColor\":\"#ff4d6a\",\"navPages-subMenu-color\":\"#282828\",\"navPages-subMenu-color-hover\":\"#ff4d6a\",\"navPages-rootMenu-backgroundColor\":\"#ffffff\",\"navPages-subMenu-backgroundColor\":\"#ffffff\",\"navPages-subMenu-separatorColor\":\"#e6e6e6\",\"quickSearch-color\":\"#ffffff\",\"quickSearch-borderColor\":\"#ff4d6a\",\"dropdown--quickSearch-backgroundColor\":\"#dcdcdc\",\"blockquote-cite-font-color\":\"#a5a5a5\",\"container-border-global-color-base\":\"#dcdcdc\",\"container-border-global-color-dark\":\"#454545\",\"container-fill-base\":\"#ffffff\",\"container-fill-dark\":\"#f2f2f2\",\"label-backgroundColor\":\"#bfbfbf\",\"label-color\":\"#ffffff\",\"overlay-backgroundColor\":\"#2d2d2d\",\"loadingOverlay-backgroundColor\":\"#ffffff\",\"pace-progress-backgroundColor\":\"#989898\",\"spinner-borderColor-dark\":\"#989898\",\"spinner-borderColor-light\":\"#ffffff\",\"hide_content_navigation\":false,\"optimizedCheckout-header-backgroundColor\":\"#f7f7f7\",\"optimizedCheckout-show-backgroundImage\":false,\"optimizedCheckout-backgroundImage\":\"\",\"optimizedCheckout-backgroundImage-size\":\"1000x400\",\"optimizedCheckout-show-logo\":\"none\",\"optimizedCheckout-logo\":\"\",\"optimizedCheckout-logo-size\":\"250x100\",\"optimizedCheckout-logo-position\":\"left\",\"optimizedCheckout-headingPrimary-color\":\"#2d2d2d\",\"optimizedCheckout-headingPrimary-font\":\"Google_Karla_700\",\"optimizedCheckout-headingSecondary-color\":\"#2d2d2d\",\"optimizedCheckout-headingSecondary-font\":\"Google_Karla_400\",\"optimizedCheckout-body-backgroundColor\":\"#ffffff\",\"optimizedCheckout-contentPrimary-color\":\"#4f4f4f\",\"optimizedCheckout-contentPrimary-font\":\"Google_Karla_400,400i,700,700i\",\"optimizedCheckout-contentSecondary-color\":\"#989898\",\"optimizedCheckout-contentSecondary-font\":\"Google_Karla_400\",\"optimizedCheckout-buttonPrimary-font\":\"Google_Karla_400\",\"optimizedCheckout-buttonPrimary-color\":\"#ffffff\",\"optimizedCheckout-buttonPrimary-colorHover\":\"#ffffff\",\"optimizedCheckout-buttonPrimary-colorActive\":\"#ffffff\",\"optimizedCheckout-buttonPrimary-backgroundColor\":\"#454545\",\"optimizedCheckout-buttonPrimary-backgroundColorHover\":\"#666666\",\"optimizedCheckout-buttonPrimary-backgroundColorActive\":\"#989898\",\"optimizedCheckout-buttonPrimary-borderColor\":\"#454545\",\"optimizedCheckout-buttonPrimary-borderColorHover\":\"#666666\",\"optimizedCheckout-buttonPrimary-borderColorActive\":\"#989898\",\"optimizedCheckout-buttonSecondary-font\":\"Google_Karla_400\",\"optimizedCheckout-buttonSecondary-color\":\"#4f4f4f\",\"optimizedCheckout-buttonSecondary-backgroundColor\":\"#ffffff\",\"optimizedCheckout-buttonSecondary-borderColor\":\"#dcdcdc\",\"optimizedCheckout-link-color\":\"#4496f6\",\"optimizedCheckout-link-font\":\"Google_Karla_400\",\"optimizedCheckout-discountBanner-backgroundColor\":\"#f5f5f5\",\"optimizedCheckout-discountBanner-textColor\":\"#333333\",\"optimizedCheckout-discountBanner-iconColor\":\"#333333\",\"optimizedCheckout-orderSummary-backgroundColor\":\"#ffffff\",\"optimizedCheckout-step-backgroundColor\":\"#4f4f4f\",\"optimizedCheckout-step-textColor\":\"#ffffff\",\"optimizedCheckout-form-textColor\":\"#666666\",\"optimizedCheckout-formField-backgroundColor\":\"white\",\"optimizedCheckout-formField-borderColor\":\"#989898\",\"price_as_low_as\":true,\"product_sale_badges\":\"topright\",\"color_badge_product_sale_badges\":\"#e74c3c\",\"color_text_product_sale_badges\":\"#ffffff\",\"color_hover_product_sale_badges\":\"#e74c3c\",\"restrict_to_login\":false,\"swatch_option_size\":\"22x22\",\"social_icon_placement_top\":false,\"social_icon_placement_bottom\":true,\"topBanner-color\":\"#ffffff\",\"topBanner-backgroundColor\":\"#d94f6c\",\"topBanner-backgroundColorGradient\":\"#b71168\",\"copyright-color\":\"#505050\",\"copyright-backgroundColor\":\"#f0f0f0\",\"productsByCategory-heading-color1\":\"#ffffff\",\"productsByCategory-heading-backgroundColor1\":\"#009688\",\"productsByCategory-heading-color2\":\"#ffffff\",\"productsByCategory-heading-backgroundColor2\":\"#fe5621\",\"productsByCategory-heading-color3\":\"#ffffff\",\"productsByCategory-heading-backgroundColor3\":\"#00a6ed\",\"productsByCategorySortingTabs_count\":3,\"productsByCategorySortingTabs-heading-color1\":\"#ffffff\",\"productsByCategorySortingTabs-heading-backgroundColor1\":\"#cd4784\",\"productsByCategorySortingTabs-heading-color2\":\"#ffffff\",\"productsByCategorySortingTabs-heading-backgroundColor2\":\"#3278f0\",\"productsByCategorySortingTabs-heading-color3\":\"#ffffff\",\"productsByCategorySortingTabs-heading-backgroundColor3\":\"#097276\",\"productsByCategorySubcategoriesTabs-heading-color1\":\"#ffffff\",\"productsByCategorySubcategoriesTabs-heading-backgroundColor1\":\"#009688\",\"productsByCategorySubcategoriesTabs-heading-color2\":\"#ffffff\",\"productsByCategorySubcategoriesTabs-heading-backgroundColor2\":\"#fe5621\",\"productsByCategorySubcategoriesTabs-heading-color3\":\"#ffffff\",\"productsByCategorySubcategoriesTabs-heading-backgroundColor3\":\"#00a6ed\",\"specialProductsTab-heading-color\":\"ffffff\",\"specialProductsTab-heading-backgroundColor\":\"#ff4d6a\",\"specialProductsTab-heading-color-inactive\":\"#cccccc\",\"specialProductsTab-heading-backgroundColor-inactive\":\"#ffffff\",\"specialProductsTab_products_count\":8,\"specialProductsTab_show_featured\":true,\"specialProductsTab_show_top\":true,\"specialProductsTab_show_new\":true,\"specialProductsTab_active_tab\":\"new\",\"specialProductsColumns_products_count\":3,\"specialProductsColumns_show_featured\":true,\"specialProductsColumns_show_top\":true,\"specialProductsColumns_show_new\":true,\"categoriesGrid-heading-color\":\"#ffffff\",\"categoriesGrid-heading-backgroundColor\":\"#ff4d6a\",\"categoriesList_count\":8,\"categoriesList_subCount\":5,\"banner3x_1_style\":\"\",\"banner3x_1_backgroundColor\":\"transparent\",\"banner3x_2_style\":\"\",\"banner3x_2_backgroundColor\":\"transparent\",\"banner3x_3_style\":\"\",\"banner3x_3_backgroundColor\":\"transparent\",\"banner_one_1_style\":\"\",\"banner_one_1_backgroundColor\":\"transparent\",\"banner_one_2_style\":\"\",\"banner_one_2_backgroundColor\":\"transparent\",\"banner_one_3_style\":\"\",\"banner_one_3_backgroundColor\":\"transparent\",\"banner_half_1_style\":\"\",\"banner_half_1_backgroundColor\":\"transparent\",\"banner_half_2_style\":\"\",\"banner_half_2_backgroundColor\":\"transparent\",\"banner_half_3_style\":\"\",\"banner_half_3_backgroundColor\":\"transparent\",\"subscribe_intro\":\"Get the latest updates on new products and upcoming sales\",\"image_product_loading\":\"/assets/img/product-loading.gif\",\"show_geotrust_ssl_seal\":false,\"geotrust_ssl_seal_size\":\"M\"},\"genericError\":\"Oops! Something went wrong.\",\"maintenanceMode\":{\"header\":null,\"notice\":null,\"message\":null,\"securePath\":\"https://store-qe5r4ejjcw.mybigcommerce.com/\",\"password\":null},\"urls\":{\"home\":\"index.html\",\"account\":{\"index\":\"/account.php\",\"orders\":{\"all\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=order_status&amp;tk=238be613-b259-466d-8ff6-6f8fb1d477d3\",\"completed\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=view_orders&amp;tk=6c0fcf0c-7252-48e6-912a-d803dffb7bc1\",\"save_new_return\":\"/account.php?action=save_new_return\"},\"update_action\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=update_account&amp;tk=22172847-d263-4e5e-b243-435b9799c9a5\",\"returns\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=view_returns&amp;tk=6341eaa5-1783-439a-b8c5-7b2716d0b629\",\"addresses\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=address_book&amp;tk=eca79ab2-c900-41f9-b3a2-76311895df3f\",\"inbox\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=inbox&amp;tk=b0f1c321-1c07-48fb-a820-4ba07607e32a\",\"send_message\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=send_message&amp;tk=492c2863-3e18-4323-8409-a122fb9b643e\",\"add_address\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=add_shipping_address&amp;tk=2a3eb944-66af-4053-8de6-ea689c6a388b\",\"wishlists\":{\"all\":\"/wishlist.php\",\"add\":\"wishlist6596.php?action=addwishlist\",\"edit\":\"wishlist3930.php?action=editwishlist\",\"delete\":\"/wishlist.php?action=deletewishlist\"},\"details\":\"https://store-qe5r4ejjcw.mybigcommerce.com/account.php?action=account_details&amp;tk=dc7597a1-3832-4d55-8a07-ffb68d7ac107\",\"recent_items\":\"/account.php?action=recent_items\"},\"brands\":\"brands/index.html\",\"gift_certificate\":{\"purchase\":\"/giftcertificates.php\",\"redeem\":\"giftcertificatese8f7.html?action=redeem\",\"balance\":\"/giftcertificates.php?action=balance\"},\"auth\":{\"login\":\"/login.php\",\"check_login\":\"https://store-qe5r4ejjcw.mybigcommerce.com/login.php?action=check_login&amp;tk=901c2114-88db-4ff1-8f4c-fea1810551be\",\"create_account\":\"https://store-qe5r4ejjcw.mybigcommerce.com/login.php?action=create_account&amp;tk=1dfb43a1-8c02-415c-91de-47be969f1d49\",\"save_new_account\":\"https://store-qe5r4ejjcw.mybigcommerce.com/login.php?action=save_new_account&amp;tk=8f60ed2d-127a-46df-8e7e-8ba7988792da\",\"forgot_password\":\"https://store-qe5r4ejjcw.mybigcommerce.com/login.php?action=reset_password&amp;tk=5b7d2d59-d13d-4dc4-9a62-adda63e935e0\",\"send_password_email\":\"https://store-qe5r4ejjcw.mybigcommerce.com/login.php?action=send_password_email&amp;tk=6fc0c585-40fd-4a97-8226-4147df84f7c6\",\"save_new_password\":\"https://store-qe5r4ejjcw.mybigcommerce.com/login.php?action=save_new_password&amp;tk=90431721-0bde-49e4-8f52-c35e7277191f\",\"logout\":\"/login.php?action=logout\"},\"product\":{\"post_review\":\"/postreview.php\"},\"cart\":\"/cart.php\",\"checkout\":{\"single_address\":\"/checkout.php\",\"multiple_address\":\"/checkout.php?action=multiple\"},\"rss\":{\"products\":{\"new\":\"rssdcab.php?type=rss\",\"new_atom\":\"rssb550.php?type=atom\",\"popular\":\"rssbb4d.php?action=popularproducts&amp;type=rss\",\"popular_atom\":\"rss6d6b.php?action=popularproducts&amp;type=atom\",\"featured\":\"rss032e.php?action=featuredproducts&amp;type=rss\",\"featured_atom\":\"rss98e7.php?action=featuredproducts&amp;type=atom\",\"search\":\"rss17d7.php?action=searchproducts&amp;type=rss\",\"search_atom\":\"/rss.php?action=searchproducts&type=atom\"},\"blog\":\"rssdce9.php?action=newblogs&amp;type=rss\",\"blog_atom\":\"/rss.php?action=newblogs&type=atom\"},\"contact_us_submit\":\"pages187d.html?action=sendContactForm\",\"search\":\"/search.php\",\"compare\":\"/compare\",\"sitemap\":\"/sitemap.php\",\"subscribe\":{\"action\":\"/subscribe.php\"}}}").load();
        </script>

        <script type="text/javascript" src="../cdn4.bigcommerce.com/r-f6aaf3462fdfeac2f4adca6b61526eb3ec93a5ac/javascript/visitor_stencil96d2.js?7cf5f"></script>







</asp:Content>
