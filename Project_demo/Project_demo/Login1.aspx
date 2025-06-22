<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Project_demo.Login11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style25 {
            height: 806px;
            width: 100%;
            background-image:url("https://i.pinimg.com/originals/21/99/37/219937dc0d0380c4c24c9ecdb04aca88.jpg")  !important ;
            overflow:auto;
        }
        .lbl{
            width: 50%;            
	        font-weight:600;
            padding: 10px;            
        }
        .head
        {
            font-size:32px;
            color: #a94106;
            font-family:Verdana;
	        text-align:center;
        }
        .signup_card_login
        {	        
	        background-color: rgba(250, 235, 215,0.8);
	        border:solid 1px #CCCCCC;
	        border-radius:5px;
	        box-sizing:border-box;	
	        display:block;	
            width: 538px;
	        padding:20px 20px 10px 20px;
            margin-left: 30%;
    margin-top: 10%;
    
        }
        .btn
        {
	        cursor: pointer;
	        border: none;
	        width: 150px;
	        padding:10px;
	        font-size: 18px;
        }
        .Profile_edit{
            background-color:mistyrose;
            position: absolute;
               top: 94%;
    left: 36%;
    width: 26%;
        }
        .Profile_mail_label{
           margin-left: 4%;
            font-size: 23px;
        }
        .close{
            position:absolute;
            top:10px;
            right:10px;
        }
        .auto-style26 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style25">
        <asp:Panel ID="Panel2" runat="server">
        <div class="signup_card_login" >
            
                <center class="head"><h2>Login</h2></center>
                <center>
                    <img src="Images/left1.png" height="80" width=" 400" />
                </center>

              <table style="margin:10px 50px;"> 
                  
                 <tr>
                <td class="lbl">
                    <center><asp:Label ID="lblError" runat="server" ForeColor="Red" Text=""></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="lbl">Enter Email ID<br />
                    <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email ID is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">Enter Password<br />
                    <asp:TextBox type="password" ID="txtPwd" runat="server" Height="30px" Width="350px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    <center><asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" ForeColor="White" class="btn" OnClick="btnLogin_Click"/></center>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    <center>Don't have an account yet? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="register.aspx" Font-Names="Times New Roman" ForeColor="#541191">Register here</asp:HyperLink>
                    </center>
                </td>
            </tr>
                  <tr>
                <td class="lbl">
                    <center>Forgot Password ? <asp:Button runat="server" Text="Reset Password" OnClick="Link_Click" BackColor="Transparent" BorderColor="Transparent" BorderWidth="0px" ForeColor="#541191" style="cursor: pointer; padding:10px; " CssClass="auto-style26" Font-Bold="True" Font-Names="Times New Roman" Font-Underline="True"/>
                </td>
            </tr>

            </table>
        </div></asp:Panel>
        <asp:Panel ID="Panel3" CssClass="Profile_edit" runat="server" Visible="False">
        <asp:ImageButton ID="btnClose1" runat="server" CssClass="close" ImageUrl="~/Images/close.png" OnClick="btnClose1_Click" Height="30px" Width="30px"></asp:ImageButton>
        <table>
            <tr>
                <td><center><h2>Change Password</h2></center></td>
                </tr>
            <tr>
                <td>
                    <asp:Label ID="lblnewmail" CssClass="Profile_mail_label"   runat="server" Text="Enter Email : "></asp:Label><br />
                    <asp:TextBox ID="txtnewmail" CssClass="Profile_mail_label"  Width="120%" runat="server" ValidationGroup="g1"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewmail" ErrorMessage="Email is required" ForeColor="#CC0000" CssClass="lbl" ValidationGroup="g1"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNewmail" ErrorMessage="Email must be in valid format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000" CssClass="lbl" ValidationGroup="g1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNewPwd" CssClass="Profile_mail_label"   runat="server" Text="New Password: "></asp:Label><br />
                    <asp:TextBox ID="txtNewPwd" CssClass="Profile_mail_label" TextMode="Password" Width="120%" runat="server" ValidationGroup="g1"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Password is required" ForeColor="#CC0000" CssClass="lbl" ValidationGroup="g1"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Password must be in valid format" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ForeColor="#CC0000" CssClass="lbl" ValidationGroup="g1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNewConPwd" runat="server" Text="Confirm Password: " CssClass="Profile_mail_label" ></asp:Label><br />
                    <asp:TextBox ID="txtNewConPwd" runat="server"  Width="120%" CssClass="Profile_mail_label" TextMode="Password" ValidationGroup="g1" ></asp:TextBox><br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNewConPwd" ErrorMessage="Confirm Your Password" ForeColor="#CC0000" CssClass="lbl" ValidationGroup="g1"></asp:RequiredFieldValidator><br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password does not match" ControlToValidate="txtNewConpwd" ClientValidationFunction="match_pwd" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate" CssClass="lbl" ValidationGroup="g1"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                        <asp:Button ID="btnChange" runat="server" Text="Change" BackColor="#a94106" BorderColor="#a94106" OnClick="btnChange_Click" BorderWidth="0px" ForeColor="White" style="cursor: pointer; padding:10px; font-size: 18px; margin-left: 32%;" ValidationGroup="g1" /></center><br />
                </td>
            </tr>
        </table>
      </asp:Panel>
    </div>
</asp:Content>
