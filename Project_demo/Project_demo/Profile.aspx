<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Project_demo.Profile1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Profile1 {
           height: 806px;
           width: 100%;
           background-image:url("https://thumbs.dreamstime.com/b/bronze-bell-buddhist-temple-thailand-blurred-koh-samui-landscape-background-71012829.jpg");
           overflow:auto;
           background-repeat:no-repeat;
           background-size:100% 100%;
               }
        .Profile_img
        {
            border-radius:50%;
            right:10px;
        }
        .Profile_name{
            left:10px;   
        }
        .Profile_mail_label{
           margin-left: 4%;
            font-size: 23px;
        }
        .Booking_label1{
            margin-left:38%;
            color:black;
        }
        .img_top{
            height: 66px;
            width: 427px;
        }
        .Info_card{            
            margin-top: 10px;
            width: 50%;
            margin-left: 20%;
            background-color: rgb(252 154 119);
            font-size:large;
        }
        .Profile_edit{
            background-color:mistyrose;
            margin: 0;
            position: absolute;
                top: 66%;
    left: 52%;
        }
        .lbl {                      
	        font-weight:600;
            padding: 10px; 
            font-family: Verdana;
        }
        .close{
            position:absolute;
            top:10px;
            right:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
    <div class="Profile1">      
        <asp:Table ID="Table1" runat="server" class="Info_card">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="Table2" runat="server">
                        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
                            <asp:TableCell ColumnSpan="3" >
                                <asp:Image ID="Image3" CssClass="img_top" runat="server" ImageUrl="~/Images/line4.png" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
                            <asp:TableCell RowSpan="2">
                                <asp:Image ID="Image1" class="Profile_img" runat="server" Height="90px" ImageUrl="https://www.kindpng.com/picc/m/24-248442_female-user-avatar-woman-profile-member-user-profile.png" />
                            </asp:TableCell>
                            <asp:TableCell>                       
                                <asp:Label ID="Label1" runat="server" CssClass="Profile_name" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#990000"></asp:Label><br />
                                <asp:Label ID="Label2" CssClass="Profile_mail_label" runat="server" Text="Label"></asp:Label><br />
                            </asp:TableCell>
                            <asp:TableCell RowSpan="2">                        
                                <asp:ImageButton ID="ImgButton" runat="server" ImageUrl="~/Images/edit.png" OnClick="ImgButton_Click" Height="50px" Width="50px" BorderColor="#ff6600" BackColor="Wheat" CssClass="edit" style="border-radius:20%;" /><br />Edit Profile            
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
                            <asp:TableCell ColumnSpan="3">
                                <asp:Image ID="Image4" CssClass="img_top" runat="server" ImageUrl="~/Images/line4.png" />
                            </asp:TableCell>
                        </asp:TableRow>             
                       </asp:Table>
                   </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                   <asp:TableCell  style="height: 45px; background-color: rgb(230 106 18);">
                        <asp:Label ID="Label3" class="Booking_label1" runat="server" Text="Your Bookings" Font-Bold="True" margin-left="38%" Font-Size="X-Large"></asp:Label>
                   </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow style="text-align: center; background-color: rgb(245 104 54)" >
               <asp:TableCell ColumnSpan="3">
                   <asp:Label ID="Label4" runat="server" Text="Aarti Bookings"></asp:Label>
               </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell ColumnSpan="3">
                   <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="td">
                        <asp:Label ID="ngo_name" runat="server"  Text='<%# Eval("temple_name") %>'/>
                    </td>
                    <td class="td">                        
                        <asp:Label ID="date" runat="server"  Text='<%# Eval("join_date") %>' />
                    </td>
                    <td class="td">
                        <asp:Label ID="time" runat="server" Text='<%# Eval("time") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <center>
                    <table id="itemPlaceholderContainer" runat="server" style="width:100%;">
                        <tr runat="server" style="background-color:wheat;">
                            <th runat="server">Temple Name</th>
                            <th runat="server">Join Date</th>                                    
                            <th runat="server">Aarti Time</th>                                    
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </center>
            </LayoutTemplate>
        </asp:ListView>
               </asp:TableCell>
           </asp:TableRow>
            <asp:TableRow  style="text-align: center;background-color: rgb(245 104 54)">
               <asp:TableCell ColumnSpan="3">
                   <asp:Label ID="Label5" runat="server" Text="E-pass Bookings"></asp:Label>
               </asp:TableCell></asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:ListView ID="ListView2" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td class="td">
                                    <asp:Label ID="ngo_name" runat="server"  Text='<%# Eval("temple_name") %>'/>
                                </td>
                                <td class="td">                        
                                    <asp:Label ID="date" runat="server"  Text='<%# Eval("date") %>' />
                                </td>
                                <td class="td">
                                    <asp:Label ID="time" runat="server" Text='<%# Eval("no_of_people") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <center>
                                <table id="itemPlaceholderContainer" runat="server" style="width:100%;">
                                    <tr runat="server" style="background-color:wheat;">
                                        <th runat="server">Temple Name</th>
                                        <th runat="server">Date</th>                                    
                                        <th runat="server">No. of People</th>                                    
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </center>
                        </LayoutTemplate>
                    </asp:ListView>
                </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow  style="text-align: center;background-color: rgb(245 104 54)">
            <asp:TableCell ColumnSpan="3" >
                <asp:Label ID="Label6" runat="server" Text="Donations"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell >
                <asp:ListView ID="ListView3" runat="server">
        <ItemTemplate>
            <tr>
                <td class="td">
                    <asp:Label ID="ngo_name" runat="server"  Text='<%# Eval("temple_name") %>'/>
                </td>
                <td class="td">                        
                    <asp:Label ID="date" runat="server"  Text='<%# Eval("date") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="time" runat="server" Text='<%# Eval("amount") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <center>
                <table id="itemPlaceholderContainer" runat="server" style="width:100%;">
                    <tr runat="server" style="background-color:wheat;">
                        <th runat="server">Temple Name</th>
                        <th runat="server">Date</th>                                    
                        <th runat="server">Amount</th>                                    
                    </tr>
                    <tr id="itemPlaceholder" runat="server">
                    </tr>
                </table>
            </center>
        </LayoutTemplate>
    </asp:ListView>
                <asp:ListView ID="ListView4" runat="server">
        <ItemTemplate>
            <tr>
                <td class="td">
                    <asp:Label ID="ngo_name" runat="server"  Text='<%# Eval("ngo_name") %>'/>
                </td>
                <td class="td">                        
                    <asp:Label ID="date" runat="server"  Text='<%# Eval("date") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="time" runat="server" Text='<%# Eval("amount") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <center>
                <table id="itemPlaceholderContainer" runat="server" style="width:100%;">
                    <tr runat="server" style="background-color:wheat;">
                        <th runat="server">NGO Name</th>
                        <th runat="server">Date</th>                                    
                        <th runat="server">Amount</th>                                    
                    </tr>
                    <tr id="itemPlaceholder" runat="server">
                    </tr>
                </table>
            </center>
        </LayoutTemplate>
    </asp:ListView>
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
    </div>
    </asp:Panel>

    <asp:Panel ID="Panel1" CssClass="Profile_edit" runat="server" Visible="False">
        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="close" ImageUrl="~/Images/close.png" OnClick="btnClose_Click" Height="30px" Width="30px"></asp:ImageButton>
        <table>
            <tr>
                <td><center><h2>Edit Profile</h2></center></td>
            <tr>
                <td>
                    <asp:Label ID="Label9" CssClass="Profile_mail_label"   runat="server" Text="Email : "></asp:Label><br />
                    <asp:TextBox ID="edit_mail" CssClass="Profile_mail_label" Width="90%" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="edit_mail" ErrorMessage="Email ID is required" ForeColor="#CC0000" CssClass="lbl"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="edit_mail" ErrorMessage="Email ID must be in valid format" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[!/#/$/%/^/&amp;/*/@/?])(?=.*[A-Z]).{8,}" ForeColor="#CC0000" CssClass="lbl"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="First Name : " CssClass="Profile_mail_label" ></asp:Label><br />
                    <asp:TextBox ID="edit_namef" runat="server"  Width="90%" CssClass="Profile_mail_label" ></asp:TextBox><br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="edit_namef" ErrorMessage="First Name is required" ForeColor="#CC0000" CssClass="lbl"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Last Name : " CssClass="Profile_mail_label" ></asp:Label><br />
                    <asp:TextBox ID="edit_namel" runat="server"  Width="90%" CssClass="Profile_mail_label" ></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="edit_namel" ErrorMessage="Last Name is required" ForeColor="#CC0000" CssClass="lbl"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Contact no. : "  CssClass="Profile_mail_label" ></asp:Label><br />
                    <asp:TextBox ID="edit_phone" runat="server"  Width="90%" CssClass="Profile_mail_label" ></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="edit_phone" ErrorMessage="Contact No. is required" ForeColor="#CC0000" CssClass="lbl"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Contact no. must be a 10-digit number" ForeColor="#CC0000" ValidationExpression="[0-9]{10}" ControlToValidate="edit_phone" CssClass="lbl"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><center>
                        <asp:Button ID="Link" runat="server" Text="Click to Change Password" BackColor="transparent" BorderStyle="None" OnClick="Link_Click" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#CC3300" style="cursor:pointer;"></asp:Button><br /><br />
                </center></td>
            </tr>
            <tr>
                <td>
                    <center><asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" ForeColor="White" style="cursor: pointer; width: 150px; padding:10px; font-size: 18px;" /></center><br />
                </td>
            </tr>
        </table>
      </asp:Panel>


    <asp:Panel ID="Panel3" CssClass="Profile_edit" runat="server" Visible="False">
        <asp:ImageButton ID="btnClose1" runat="server" CssClass="close" ImageUrl="~/Images/close.png" OnClick="btnClose1_Click" Height="30px" Width="30px"></asp:ImageButton>
        <table>
            <tr>
                <td><center><h2>Change Password</h2></center></td>
            <tr>
                <td>
                    <asp:Label ID="lblNewPwd" CssClass="Profile_mail_label"   runat="server" Text="New Password: "></asp:Label><br />
                    <asp:TextBox ID="txtNewPwd" CssClass="Profile_mail_label" TextMode="Password" Width="90%" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Password is required" ForeColor="#CC0000" CssClass="lbl"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Password must be in valid format" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ForeColor="#CC0000" CssClass="lbl"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblConPwd" runat="server" Text="Confirm Password: " CssClass="Profile_mail_label" ></asp:Label><br />
                    <asp:TextBox ID="txtConPwd" runat="server"  Width="90%" CssClass="Profile_mail_label" TextMode="Password" ></asp:TextBox><br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtConPwd" ErrorMessage="Confirm Your Password" ForeColor="#CC0000" CssClass="lbl"></asp:RequiredFieldValidator><br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password does not match" ControlToValidate="txtConpwd" ClientValidationFunction="match_pwd" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate" CssClass="lbl"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <center><asp:Button ID="btnChange" runat="server" Text="Change" BackColor="#a94106" BorderColor="#a94106" OnClick="btnChange_Click" BorderWidth="0px" ForeColor="White" style="cursor: pointer; padding:10px; font-size: 18px;" /></center><br />
                </td>
            </tr>
        </table>
      </asp:Panel>
</asp:Content>
