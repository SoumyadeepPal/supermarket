<%@ Page Title="" Language="C#" MasterPageFile="~/RegisteredUserSite.Master" AutoEventWireup="true" CodeBehind="account_settings.aspx.cs" Inherits="supermarket.account_settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="body">

        <div class="container">
            <div class="account account--fixed">
                <ul class="breadcrumbs">
                    <li class="breadcrumb ">
                        <a href="Default.aspx" class="breadcrumb-label">Home</a>
                    </li>
                    <li class="breadcrumb ">
                        <a href="account.aspx" class="breadcrumb-label">Your Account</a>
                    </li>
                    <li class="breadcrumb is-active">
                        <span class="breadcrumb-label">Account Details</span>
                    </li>
                </ul>
                <h2 class="page-heading">Account Settings</h2>
                <nav class="navBar navBar--sub navBar--account">
                    <ul class="navBar-section">
                        <li class="navBar-item">
                            <a class="navBar-action" href="account.aspx">Orders</a>
                        </li>
                        <li class="navBar-item">
                            <a class="navBar-action" href="#">Messages</a>
                        </li>
                        <li class="navBar-item">
                            <a class="navBar-action" href="#">Wish Lists</a>
                        </li>
                        <li class="navBar-item">
                            <a class="navBar-action" href="#">Recently Viewed</a>
                        </li>
                        <li class="navBar-item is-active">Account Settings</li>
                    </ul>
                </nav>

                <div class="account account--fixed">
                    <div class="account-body">
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
                                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                                    <small>Required</small>
                                </label>


                                <asp:TextBox ID="pass_ip" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="x This field is Required" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="x Passwords must contain both alphabetic and numeric characters." ControlToValidate="pass_ip" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]*$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>



                                <span style="display: none;"></span>
                            </div>








                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="repassword" runat="server" Text="Confirm Password"></asp:Label>
                                    <small>Required</small>
                                </label>


                                <asp:TextBox ID="repass_ip" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="x This field is Required" ControlToValidate="repass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="x Your passwords does not match." ControlToCompare="repass_ip" ControlToValidate="pass_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:CompareValidator>

                                <span style="display: none;"></span>
                            </div>





                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="country" runat="server" Text="Country"></asp:Label>
                                    <small>Required</small>
                                </label>


                                <asp:DropDownList ID="countrylist" runat="server" CssClass="form-input">
                                    <asp:ListItem>Choose a Country</asp:ListItem>
                                    <asp:ListItem>Afghanistan</asp:ListItem>
                                    <asp:ListItem>Albania</asp:ListItem>
                                    <asp:ListItem>Algeria</asp:ListItem>
                                    <asp:ListItem>American Samoa</asp:ListItem>
                                    <asp:ListItem>Andorra</asp:ListItem>
                                    <asp:ListItem>Angola</asp:ListItem>
                                    <asp:ListItem>Anguilla</asp:ListItem>
                                    <asp:ListItem>Antarctica</asp:ListItem>
                                    <asp:ListItem>Antigua and Barbuda</asp:ListItem>
                                    <asp:ListItem>Argentina</asp:ListItem>
                                    <asp:ListItem>Armenia</asp:ListItem>
                                    <asp:ListItem>Aruba</asp:ListItem>
                                    <asp:ListItem>Australia</asp:ListItem>
                                    <asp:ListItem>Austria</asp:ListItem>
                                    <asp:ListItem>Azerbaijan</asp:ListItem>
                                    <asp:ListItem>Bahamas</asp:ListItem>
                                    <asp:ListItem>Bahrain</asp:ListItem>
                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                    <asp:ListItem>Barbados</asp:ListItem>
                                    <asp:ListItem>Belarus</asp:ListItem>
                                    <asp:ListItem>Belgium</asp:ListItem>
                                    <asp:ListItem>Belize</asp:ListItem>
                                    <asp:ListItem>Benin</asp:ListItem>
                                    <asp:ListItem>Bermuda</asp:ListItem>
                                    <asp:ListItem>Bhutan</asp:ListItem>
                                    <asp:ListItem>Bolivia</asp:ListItem>
                                    <asp:ListItem>Bonaire, Sint Eustatius and Saba</asp:ListItem>
                                    <asp:ListItem>Bosnia and Herzegovina</asp:ListItem>
                                    <asp:ListItem>Botswana</asp:ListItem>
                                    <asp:ListItem>Bouvet Island</asp:ListItem>
                                    <asp:ListItem>Brazil</asp:ListItem>
                                    <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
                                    <asp:ListItem>Brunei Darussalam</asp:ListItem>
                                    <asp:ListItem>Bulgaria</asp:ListItem>
                                    <asp:ListItem>Burkina Faso</asp:ListItem>
                                    <asp:ListItem>Burundi</asp:ListItem>
                                    <asp:ListItem>Cambodia</asp:ListItem>
                                    <asp:ListItem>Cameroon</asp:ListItem>
                                    <asp:ListItem>Canada</asp:ListItem>
                                    <asp:ListItem>Cape Verde</asp:ListItem>
                                    <asp:ListItem>Cayman Islands</asp:ListItem>
                                    <asp:ListItem>Central African Republic</asp:ListItem>
                                    <asp:ListItem>Chad</asp:ListItem>
                                    <asp:ListItem>Chile</asp:ListItem>
                                    <asp:ListItem>China</asp:ListItem>
                                    <asp:ListItem>Christmas Island</asp:ListItem>
                                    <asp:ListItem>Cocos (Keeling) Islands</asp:ListItem>
                                    <asp:ListItem>Colombia</asp:ListItem>
                                    <asp:ListItem>Comoros</asp:ListItem>
                                    <asp:ListItem>Congo</asp:ListItem>
                                    <asp:ListItem>Congo, the Democratic Republic of the</asp:ListItem>
                                    <asp:ListItem>Cook Islands</asp:ListItem>
                                    <asp:ListItem>Costa Rica</asp:ListItem>
                                    <asp:ListItem>Cote d&amp;#039;Ivoire</asp:ListItem>
                                    <asp:ListItem>Croatia</asp:ListItem>
                                    <asp:ListItem>Cuba</asp:ListItem>
                                    <asp:ListItem>Cyprus</asp:ListItem>
                                    <asp:ListItem>Czech Republic</asp:ListItem>
                                    <asp:ListItem>Denmark</asp:ListItem>
                                    <asp:ListItem>Djibouti</asp:ListItem>
                                    <asp:ListItem>Dominica</asp:ListItem>
                                    <asp:ListItem>Dominican Republic</asp:ListItem>
                                    <asp:ListItem>Ecuador</asp:ListItem>
                                    <asp:ListItem>Egypt</asp:ListItem>
                                    <asp:ListItem>El Salvador</asp:ListItem>
                                    <asp:ListItem>Equatorial Guinea</asp:ListItem>
                                    <asp:ListItem>Eritrea</asp:ListItem>
                                    <asp:ListItem>Estonia</asp:ListItem>
                                    <asp:ListItem>Ethiopia</asp:ListItem>
                                    <asp:ListItem>Falkland Islands (Malvinas)</asp:ListItem>
                                    <asp:ListItem>Faroe Islands</asp:ListItem>
                                    <asp:ListItem>Fiji</asp:ListItem>
                                    <asp:ListItem>Finland</asp:ListItem>
                                    <asp:ListItem>France</asp:ListItem>
                                    <asp:ListItem>French Guiana</asp:ListItem>
                                    <asp:ListItem>French Polynesia</asp:ListItem>
                                    <asp:ListItem>French Southern Territories</asp:ListItem>
                                    <asp:ListItem>Gabon</asp:ListItem>
                                    <asp:ListItem>Gambia</asp:ListItem>
                                    <asp:ListItem>Georgia</asp:ListItem>
                                    <asp:ListItem>Germany</asp:ListItem>
                                    <asp:ListItem>Ghana</asp:ListItem>
                                    <asp:ListItem>Gibraltar</asp:ListItem>
                                    <asp:ListItem>Greece</asp:ListItem>
                                    <asp:ListItem>Greenland</asp:ListItem>
                                    <asp:ListItem>Grenada</asp:ListItem>
                                    <asp:ListItem>Guadeloupe</asp:ListItem>
                                    <asp:ListItem>Guam</asp:ListItem>
                                    <asp:ListItem>Guatemala</asp:ListItem>
                                    <asp:ListItem>Guernsey</asp:ListItem>
                                    <asp:ListItem>Guinea</asp:ListItem>
                                    <asp:ListItem>Guinea-Bissau</asp:ListItem>
                                    <asp:ListItem>Guyana</asp:ListItem>
                                    <asp:ListItem>Haiti</asp:ListItem>
                                    <asp:ListItem>Heard Island and Mcdonald Islands</asp:ListItem>
                                    <asp:ListItem>Holy See (Vatican City State)</asp:ListItem>
                                    <asp:ListItem>Honduras</asp:ListItem>
                                    <asp:ListItem>Hong Kong</asp:ListItem>
                                    <asp:ListItem>Hungary</asp:ListItem>
                                    <asp:ListItem>Iceland</asp:ListItem>
                                    <asp:ListItem>India</asp:ListItem>
                                    <asp:ListItem>Indonesia</asp:ListItem>
                                    <asp:ListItem>Iran, Islamic Republic of</asp:ListItem>
                                    <asp:ListItem>Iraq</asp:ListItem>
                                    <asp:ListItem>Ireland</asp:ListItem>
                                    <asp:ListItem>Isle of Man</asp:ListItem>
                                    <asp:ListItem>Israel</asp:ListItem>
                                    <asp:ListItem>Italy</asp:ListItem>
                                    <asp:ListItem>Jamaica</asp:ListItem>
                                    <asp:ListItem>Japan</asp:ListItem>
                                    <asp:ListItem>Jersey</asp:ListItem>
                                    <asp:ListItem>Jordan</asp:ListItem>
                                    <asp:ListItem>Kazakhstan</asp:ListItem>
                                    <asp:ListItem>Kenya</asp:ListItem>
                                    <asp:ListItem>Kiribati</asp:ListItem>
                                    <asp:ListItem>Korea, Democratic People&amp;#039;s Republic of</asp:ListItem>
                                    <asp:ListItem>Korea, Republic of</asp:ListItem>
                                    <asp:ListItem>Kuwait</asp:ListItem>
                                    <asp:ListItem>Kyrgyzstan</asp:ListItem>
                                    <asp:ListItem>Lao People&amp;#039;s Democratic Republic</asp:ListItem>
                                    <asp:ListItem>Latvia</asp:ListItem>
                                    <asp:ListItem>Lebanon</asp:ListItem>
                                    <asp:ListItem>Lesotho</asp:ListItem>
                                    <asp:ListItem>Liberia</asp:ListItem>
                                    <asp:ListItem>Libyan Arab Jamahiriya</asp:ListItem>
                                    <asp:ListItem>Liechtenstein</asp:ListItem>
                                    <asp:ListItem>Lithuania</asp:ListItem>
                                    <asp:ListItem>Luxembourg</asp:ListItem>
                                    <asp:ListItem>Macao</asp:ListItem>
                                    <asp:ListItem>Macedonia, the Former Yugoslav Republic of</asp:ListItem>
                                    <asp:ListItem>Madagascar</asp:ListItem>
                                    <asp:ListItem>Malawi</asp:ListItem>
                                    <asp:ListItem>Malaysia</asp:ListItem>
                                    <asp:ListItem>Maldives</asp:ListItem>
                                    <asp:ListItem>Mali</asp:ListItem>
                                    <asp:ListItem>Malta</asp:ListItem>
                                    <asp:ListItem>Marshall Islands</asp:ListItem>
                                    <asp:ListItem>Martinique</asp:ListItem>
                                    <asp:ListItem>Mauritania</asp:ListItem>
                                    <asp:ListItem>Mauritius</asp:ListItem>
                                    <asp:ListItem>Mayotte</asp:ListItem>
                                    <asp:ListItem>Mexico</asp:ListItem>
                                    <asp:ListItem>Micronesia, Federated States of</asp:ListItem>
                                    <asp:ListItem>Moldova, Republic of</asp:ListItem>
                                    <asp:ListItem>Monaco</asp:ListItem>
                                    <asp:ListItem>Mongolia</asp:ListItem>
                                    <asp:ListItem>Montenegro</asp:ListItem>
                                    <asp:ListItem>Montserrat</asp:ListItem>
                                    <asp:ListItem>Morocco</asp:ListItem>
                                    <asp:ListItem>Mozambique</asp:ListItem>
                                    <asp:ListItem>Myanmar</asp:ListItem>
                                    <asp:ListItem>Namibia</asp:ListItem>
                                    <asp:ListItem>Nauru</asp:ListItem>
                                    <asp:ListItem>Nepal</asp:ListItem>
                                    <asp:ListItem>Netherlands</asp:ListItem>
                                    <asp:ListItem>Netherlands Antilles</asp:ListItem>
                                    <asp:ListItem>New Caledonia</asp:ListItem>
                                    <asp:ListItem>New Zealand</asp:ListItem>
                                    <asp:ListItem>Nicaragua</asp:ListItem>
                                    <asp:ListItem>Niger</asp:ListItem>
                                    <asp:ListItem>Nigeria</asp:ListItem>
                                    <asp:ListItem>Niue</asp:ListItem>
                                    <asp:ListItem>Norfolk Island</asp:ListItem>
                                    <asp:ListItem>Northern Mariana Islands</asp:ListItem>
                                    <asp:ListItem>Norway</asp:ListItem>
                                    <asp:ListItem>Oman</asp:ListItem>
                                    <asp:ListItem>Pakistan</asp:ListItem>
                                    <asp:ListItem>Palau</asp:ListItem>
                                    <asp:ListItem>Palestinian Territory, Occupied</asp:ListItem>
                                    <asp:ListItem>Panama</asp:ListItem>
                                    <asp:ListItem>Papua New Guinea</asp:ListItem>
                                    <asp:ListItem>Paraguay</asp:ListItem>
                                    <asp:ListItem>Peru</asp:ListItem>
                                    <asp:ListItem>Philippines</asp:ListItem>
                                    <asp:ListItem>Pitcairn</asp:ListItem>
                                    <asp:ListItem>Poland</asp:ListItem>
                                    <asp:ListItem>Portugal</asp:ListItem>
                                    <asp:ListItem>Puerto Rico</asp:ListItem>
                                    <asp:ListItem>Qatar</asp:ListItem>
                                    <asp:ListItem>Republic of Kosovo</asp:ListItem>
                                    <asp:ListItem>Reunion</asp:ListItem>
                                    <asp:ListItem>Romania</asp:ListItem>
                                    <asp:ListItem>Russian Federation</asp:ListItem>
                                    <asp:ListItem>Rwanda</asp:ListItem>
                                    <asp:ListItem>Saint Helena</asp:ListItem>
                                    <asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
                                    <asp:ListItem>Saint Lucia</asp:ListItem>
                                    <asp:ListItem>Saint Pierre and Miquelon</asp:ListItem>
                                    <asp:ListItem>Saint Vincent and the Grenadines</asp:ListItem>
                                    <asp:ListItem>Samoa</asp:ListItem>
                                    <asp:ListItem>San Marino</asp:ListItem>
                                    <asp:ListItem>Sao Tome and Principe</asp:ListItem>
                                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                                    <asp:ListItem>Senegal</asp:ListItem>
                                    <asp:ListItem>Serbia</asp:ListItem>
                                    <asp:ListItem>Seychelles</asp:ListItem>
                                    <asp:ListItem>Sierra Leone</asp:ListItem>
                                    <asp:ListItem>Singapore</asp:ListItem>
                                    <asp:ListItem>Slovakia</asp:ListItem>
                                    <asp:ListItem>Slovenia</asp:ListItem>
                                    <asp:ListItem>Solomon Islands</asp:ListItem>
                                    <asp:ListItem>Somalia</asp:ListItem>
                                    <asp:ListItem>South Africa</asp:ListItem>
                                    <asp:ListItem>South Georgia and the South Sandwich Islands</asp:ListItem>
                                    <asp:ListItem>Spain</asp:ListItem>
                                    <asp:ListItem>Sri Lanka</asp:ListItem>
                                    <asp:ListItem>Sudan</asp:ListItem>
                                    <asp:ListItem>Suriname</asp:ListItem>
                                    <asp:ListItem>Svalbard and Jan Mayen</asp:ListItem>
                                    <asp:ListItem>Swaziland</asp:ListItem>
                                    <asp:ListItem>Sweden</asp:ListItem>
                                    <asp:ListItem>Switzerland</asp:ListItem>
                                    <asp:ListItem>Syrian Arab Republic</asp:ListItem>
                                    <asp:ListItem>Taiwan</asp:ListItem>
                                    <asp:ListItem>Tajikistan</asp:ListItem>
                                    <asp:ListItem>Tanzania, United Republic of</asp:ListItem>
                                    <asp:ListItem>Thailand</asp:ListItem>
                                    <asp:ListItem>Timor-Leste</asp:ListItem>
                                    <asp:ListItem>Togo</asp:ListItem>
                                    <asp:ListItem>Tokelau</asp:ListItem>
                                    <asp:ListItem>Tonga</asp:ListItem>
                                    <asp:ListItem>Trinidad and Tobago</asp:ListItem>
                                    <asp:ListItem>Tunisia</asp:ListItem>
                                    <asp:ListItem>Turkey</asp:ListItem>
                                    <asp:ListItem>Turkmenistan</asp:ListItem>
                                    <asp:ListItem>Turks and Caicos Islands</asp:ListItem>
                                    <asp:ListItem>Tuvalu</asp:ListItem>
                                    <asp:ListItem>Uganda</asp:ListItem>
                                    <asp:ListItem>Ukraine</asp:ListItem>
                                    <asp:ListItem>United Arab Emirates</asp:ListItem>
                                    <asp:ListItem>United Kingdom</asp:ListItem>
                                    <asp:ListItem>United States</asp:ListItem>
                                    <asp:ListItem>United States Minor Outlying Islands</asp:ListItem>
                                    <asp:ListItem>Uruguay</asp:ListItem>
                                    <asp:ListItem>Uzbekistan</asp:ListItem>
                                    <asp:ListItem>Vanuatu</asp:ListItem>
                                    <asp:ListItem>Venezuela</asp:ListItem>
                                    <asp:ListItem>Viet Nam</asp:ListItem>
                                    <asp:ListItem>Virgin Islands, British</asp:ListItem>
                                    <asp:ListItem>Virgin Islands, U.S.</asp:ListItem>
                                    <asp:ListItem>Wallis and Futuna</asp:ListItem>
                                    <asp:ListItem>Western Sahara</asp:ListItem>
                                    <asp:ListItem>Yemen</asp:ListItem>
                                    <asp:ListItem>Zambia</asp:ListItem>
                                    <asp:ListItem>Zimbabwe</asp:ListItem>
                                </asp:DropDownList>


                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="x The 'Country' field cannot be blank." ControlToValidate="countrylist" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300" InitialValue="Choose a Country"></asp:RequiredFieldValidator>



                                <span style="display: none;"></span>
                            </div>








                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="fname" runat="server" Text="Fast Name"></asp:Label>
                                    <small>Required</small>
                                </label>

                                <asp:TextBox ID="fname_ip" runat="server" CssClass="form-input"></asp:TextBox>


                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="x This field is Required" ControlToValidate="fname_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="x Fast name is not valid." ControlToValidate="fname_ip" ValidationExpression="^^[a-zA-Z\s]+$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>



                                <span style="display: none;"></span>
                            </div>















                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
                                    <small>Required</small>
                                </label>

                                <asp:TextBox ID="lname_ip" runat="server" CssClass="form-input"></asp:TextBox>



                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="x This field is Required" ControlToValidate="lname_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="x Last name is not valid." ControlToValidate="lname_ip" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>




                                <span style="display: none;"></span>
                            </div>









                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="addr1" runat="server" Text="Address Line 1"></asp:Label>
                                    <small>Required</small>
                                </label>
                                <asp:TextBox ID="addr1_ip" runat="server" CssClass="form-input"></asp:TextBox>



                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="x The 'Address Line 1' field cannot be blank." ControlToValidate="addr1_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="x The 'Address Line 1' is not valid." ControlToValidate="addr1_ip" ValidationExpression="^[a-zA-Z0-9\-\s]+$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>


                                <span style="display: none;"></span>
                            </div>














                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="addr2" runat="server" Text="Address Line 2"></asp:Label>
                                    <small>Required</small>
                                </label>
                                <asp:TextBox ID="addr2_ip" runat="server" CssClass="form-input"></asp:TextBox>

                                <span style="display: none;"></span>
                            </div>
















                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="city" runat="server" Text="Suberb/City"></asp:Label>
                                    <small>Required</small>
                                </label>

                                <asp:TextBox ID="city_ip" runat="server" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="x The 'Suberb/City' field cannot be blank." ControlToValidate="city_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="x The 'Suberb/City' is not valid." ControlToValidate="city_ip" ValidationExpression="^[a-zA-Z\-\s]+$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>


                                <span style="display: none;"></span>
                            </div>















                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="state" runat="server" Text="State/Province"></asp:Label>
                                    <small>Required</small>
                                </label>
                                <asp:TextBox ID="state_ip" runat="server" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="x The 'State/Province' field cannot be blank." ControlToValidate="state_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="x The 'State/Province' is not valid." ControlToValidate="state_ip" ValidationExpression="^[a-zA-Z\-\s]+$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>


                                <span style="display: none;"></span>
                            </div>





















                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="zip" runat="server" Text="Zip/Postcode"></asp:Label>
                                    <small>Required</small>
                                </label>
                                <asp:TextBox ID="zip_ip" runat="server" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="x The 'Zip/Postcode' field cannot be blank." ControlToValidate="zip_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="x The 'Zip/Postcode' is not valid." ControlToValidate="zip_ip" ValidationExpression="\d{6}$" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RegularExpressionValidator>


                                <span style="display: none;"></span>
                            </div>
















                            <div class="form-field">
                                <label class="form-label">
                                    <asp:Label ID="phnum" runat="server" Text="Phone Number"></asp:Label>
                                    <small>Required</small>
                                </label>
                                <asp:TextBox ID="phnum_ip" runat="server" CssClass="form-input"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="x The 'Phone Number' field cannot be blank." ControlToValidate="phnum_ip" Display="Dynamic" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>


                                <span style="display: none;"></span>
                            </div>













                        </div>

                        <div class="form-actions">
                            <asp:Button ID="Button1" runat="server" Text="Update Details" CssClass="button button--primary" OnClick="Button1_Click" CausesValidation="False" />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>

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
