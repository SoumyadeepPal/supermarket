<%@ Page Title="" Language="C#" MasterPageFile="~/Checkout.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="supermarket.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ng-checkout-container bc-ng">
	<div class="ng-checkout-view">
		<div class="layout optimizedCheckout-contentPrimary loadingOverlay-container" loading-overlay="appCtrl.shouldShowLoadingOverlay()">
			<main class="layout-main" style="width: 100%">
				<ol class="checkout-steps">
					<li class="checkout-step checkout-step--customer optimizedCheckout-checkoutStep">
						<div class="checkout-view-header">
							<checkout-header class="customerHeader">
								<a class="stepHeader">
									<div class="stepHeader-figure stepHeader-column">
										<icon class="stepHeader-counter optimizedCheckout-step icon stepHeader-counter--complete" glyph="ic-check" ng-class="{ 'stepHeader-counter--complete': checkoutHeaderCtrl.isComplete() }" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></icon>
										<h2 class="stepHeader-title optimizedCheckout-headingPrimary">
											Order
										</h2>
									</div>
								</a>
							</checkout-header>
						</div>
						<div class="checkout-view-content"></div>
						<div class="data-cart-content">
							<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" EmptyDataText="There are no data records to display." CssClass="table table-striped table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="Large" Width="100%">
								<AlternatingRowStyle BackColor="White" />
								<Columns>
									<asp:BoundField DataField="cart_id" HeaderText="Cart Id" ReadOnly="True" SortExpression="cart_id" Visible="false" />
									<asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" Visible="false" />
									<asp:BoundField DataField="cart_product_name" HeaderText="Product name" SortExpression="cart_product_name" HeaderStyle-CssClass="name" ItemStyle-CssClass="name" ReadOnly="True">
										<HeaderStyle CssClass="name"></HeaderStyle>
										<ItemStyle CssClass="name"></ItemStyle>
									</asp:BoundField>
									<asp:BoundField DataField="cart_quantity" HeaderText="Qantity" SortExpression="cart_quantity" ReadOnly="True">
										<HeaderStyle CssClass="price" />
										<ItemStyle CssClass="price" />
									</asp:BoundField>
									<asp:BoundField DataField="cart_productSubPrice" HeaderText="Price Per Unit" SortExpression="cart_productSubPrice" ReadOnly="True" DataFormatString="${0:0.00}">
										<HeaderStyle CssClass="price" />
										<ItemStyle CssClass="price" />
									</asp:BoundField>
									<asp:BoundField DataField="cart_subTotal" HeaderText="Sub Total" SortExpression="cart_subTotal" HeaderStyle-CssClass="price" ItemStyle-CssClass="price" ReadOnly="True" DataFormatString="${0:0.00}">
										<HeaderStyle CssClass="price" />
										<ItemStyle CssClass="price" />
									</asp:BoundField>
									<asp:BoundField DataField="cart_cdate" HeaderText="cart_cdate" SortExpression="cart_cdate" Visible="false" ReadOnly="True" />
									<asp:BoundField DataField="cart_transid" HeaderText="cart_transid" SortExpression="cart_transid" Visible="false">
										<ControlStyle CssClass="shownone"></ControlStyle>
										<HeaderStyle CssClass="price" />
										<ItemStyle CssClass="price" />
									</asp:BoundField>
								</Columns>
								<EditRowStyle BackColor="#2461BF" />
								<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
								<HeaderStyle BackColor="#FF0066" Font-Bold="True" ForeColor="White" />
								<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
								<RowStyle BackColor="#EFF3FB" />
								<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
								<SortedAscendingCellStyle BackColor="#F5F7FB" />
								<SortedAscendingHeaderStyle BackColor="#6D95E1" />
								<SortedDescendingCellStyle BackColor="#E9EBEF" />
								<SortedDescendingHeaderStyle BackColor="#4870BE" />
							</asp:GridView>
						</div>
						<br/>
						<br/>
						<div class="container">
							<div class="col-lg-5 pull-right">
								<asp:FormView ID="FormView1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF0066">
									<ItemTemplate>
										<table class="table table-striped table-bordered">
											<tr>
												<td><span class="extra bold totalamout">Total :&nbsp</span></td>
												<td>
													<span class="bold totalamout">
														<asp:Label ID="lblTotal" runat="server" Text='<%# Eval("TotalPayment","${0:0.00}") %>'></asp:Label>
													</span>
												</td>
											</tr>
										</table>
									</ItemTemplate>
								</asp:FormView>
								<br/>
								<br/>
								<a href="cart.aspx" class="button button--primary"> Edit cart </a>
								<a href="Default.aspx" class="button button--primary"> Continue Shopping </a>
							</div>
						</div>
					</li>
					<li class="checkout-step checkout-step--shipping optimizedCheckout-checkoutStep">
						<div class="checkout-view-header">
							<div class="stepHeader">
								<div class="stepHeader-figure stepHeader-column">
									<icon class="stepHeader-counter optimizedCheckout-step icon stepHeader-counter--complete" glyph="ic-check" ng-class="{ 'stepHeader-counter--complete': checkoutHeaderCtrl.isComplete() }" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path></svg></icon>
									<h2 class="stepHeader-title optimizedCheckout-headingPrimary">
										Shipping/Billing
									</h2>
								</div>
								<div class="stepHeader-body stepHeader-column optimizedCheckout-contentPrimary">
									<asp:FormView ID="FormView2" runat="server" Font-Size="Medium">
										<ItemTemplate>
											<div class="registerbox">
												<div class="form-field">
													<div class="control-group">
														<label class="control-label"> Name :</label>
														<div class="controls">
															<asp:Label ID="lblFname" runat="server" Text='<%# Eval("user_fname") + " " + Eval("user_lname") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">Email :</label>
														<div class="controls">
															<asp:Label ID="lblEmail" runat="server" Text='<%# Eval("user_email") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">Phone Number :</label>
														<div class="controls">
															<asp:Label ID="lblphnum" runat="server" Text='<%# Eval("user_ph_num") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">Address :</label>
														<div class="controls">
															<asp:Label ID="lblCity" runat="server" Text='<%# Eval("user_addr1") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">Suburb/City :</label>
														<div class="controls">
															<asp:Label ID="lblState" runat="server" Text='<%# Eval("user_city") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">State/Province :</label>
														<div class="controls">
															<asp:Label ID="lblCountry" runat="server" Text='<%# Eval("user_state") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">Country :</label>
														<div class="controls">
															<asp:Label ID="Label1" runat="server" Text='<%# Eval("user_country") %>'></asp:Label>
														</div>
													</div>
												</div>
												<div class="form-field">
													<div class="control-group">
														<label class="control-label">Zip/Postcode :</label>
														<div class="controls">
															<asp:Label ID="Label2" runat="server" Text='<%# Eval("user_zip") %>'></asp:Label>
														</div>
													</div>
												</div>
											</div>
										</ItemTemplate>
									</asp:FormView>
                                <br/>
								<br/>
								<a href="account_settings.aspx" class="button button--primary"> Edit Details </a>
								</div>
							</div>
						</div>
					</li>
					<li class="checkout-step checkout-step--payment optimizedCheckout-checkoutStep">
						<div class="checkout-view-header" ui-view="payment-header">
							<div class="stepHeader">
								<div class="stepHeader-figure stepHeader-column">
									<icon class="stepHeader-counter optimizedCheckout-step icon" glyph="ic-check" ng-class="{ 'stepHeader-counter--complete': checkoutHeaderCtrl.isComplete() }" aria-hidden="true">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
											<path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z"></path>
										</svg>
									</icon>
									<h2 class="stepHeader-title optimizedCheckout-headingPrimary">
										Payment
									</h2>
								</div>
							</div>
						</div>
						<div class="checkout-view-content">
							<form class="checkout-form ng-pristine form ng-valid-parse ng-valid">
								<fieldset class="form-fieldset">
									<legend class="form-legend optimizedCheckout-headingSecondary">
										Payment Method
									</legend>




















































						<asp:RadioButton ID="cc" GroupName="paymentOption" runat="server" Text="Credit Card" OnCheckedChanged="RadioButton_CheckedChanged" />
                                    <br/>
                                    <br/>
                  <asp:RadioButton ID="paypal" GroupName="paymentOption"  runat="server" Text="Paypal" OnCheckedChanged="RadioButton_CheckedChanged" />
                                    <br/>
                                    <br/>
                  <asp:RadioButton ID="bd" GroupName="paymentOption" runat="server" Text="Bank Deposit" OnCheckedChanged="RadioButton_CheckedChanged" />
                                    <br/>
                                    <br/>			
                  <asp:RadioButton ID="cod" GroupName="paymentOption" runat="server" Text="Cash on Delivery" OnCheckedChanged="RadioButton_CheckedChanged" />
                                    <br/>
                                    <br/>

                  <asp:Label ID="lblPaymentWarning" runat="server" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
                                    <br/>
                                    <br/>


















































								</fieldset>
								<fieldset class="form-fieldset">
									<div class="form-body">
										<div class="form-actions">
<asp:Button ID="btnCheckout" runat="server" Text="Place Order" CssClass="button button--action button--large button--slab optimizedCheckout-buttonPrimary" OnClick="btnCheckout_Click1"></asp:Button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</li>
				</ol>
			</main>
		</div>
	</div>
</div>
    
</asp:Content>
