<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Divya_Darshan.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .signup_card
        {	        
	        background-color: lavenderblush;
	        border:solid 1px #CCCCCC;
	        border-radius:5px;
	        box-sizing:border-box;	
	        display:block;	
            width: 500px;
	        padding:20px 20px 10px 20px;

        }
        .btn
        {
	        cursor: pointer;
	        border: none;
	        width: 150px;
	        padding:10px;
	        font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup_card" style="margin-left: 250px;">
    <h2 class="head">Sign Up Here!</h2>
    <center><img src="images/line4.png" height="80" width="400" /></center>
        <table style="margin:10px 50px;">
            <tr>
                <td class="lbl">Enter Firstname<br />
                    <asp:TextBox ID="txtFname" runat="server" Height="30px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">Enter Lastname<br />
                    <asp:TextBox ID="txtLname" runat="server" Height="30px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">Enter Email ID<br />
                    <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">Enter Password<br />
                    <asp:TextBox ID="txtPwd" runat="server" Height="30px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">Confirm Password<br />
                    <asp:TextBox ID="txtConpwd" runat="server" Height="30px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">Enter Contact no<br />
                    <asp:TextBox ID="txtContact" runat="server" Height="30px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    <center><asp:Button ID="Button1" runat="server" Text="REGISTER" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" ForeColor="White" class="btn"/></center>
                </td>
            </tr>
        </table>
       </div>
</asp:Content>
