<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Aarti.aspx.cs" Inherits="Divya_Darshan.Aarti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .headImg {
            width: 100%;
            height: 180px;
        }

        .heading {
            font-size: 32px;
            color: #a94106;
        }

        .container {
            position: relative;
            text-align: center;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }        
        body
        {	        
	        background-color: lavenderblush;
        }
        .btn
        {
	        cursor: pointer;
	        border: none;
	        width: 150px;
	        padding:10px;
	        font-size: 18px;
        }
        .cell
        {
            width: 100px; 
            padding:25px; 
            font-family:Verdana;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"><img src="images/bitmap@2x.jpg" class="headImg"/><div class="centered"><h2 class="heading"> ONLINE AARTI REGISTRATION </h2></div></div>
    <center><img src="images/line4.png" height="80" width="500" /><br /> 
        <table width="70%">
            <tr>
                <td class="cell">Date<font color="red">*</font></td>
                <td class="cell"><asp:Calendar ID="Calendar1" runat="server" BorderColor="#a94106"></asp:Calendar></td>
            </tr>
            <tr>
                <td class="cell">Aarti Time<font color="red">*</font></td>
                <td class="cell"><asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="350px" BorderColor="#a94106" BorderStyle="Solid" padding="10px">
            <asp:ListItem>-----------------Select-------------------</asp:ListItem>
            <asp:ListItem>7:00</asp:ListItem>
            <asp:ListItem>14:00</asp:ListItem>
            <asp:ListItem>19:00</asp:ListItem>
            <asp:ListItem>22:00</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="cell">Amount (₹)</td>
                <td class="cell">
                    <asp:TextBox ID="TextBox1" padding="10px" runat="server" Height="30px" Width="350px" BorderColor="#a94106" BorderStyle="Solid"  Enabled="False" EnableTheming="True" ReadOnly="True" ForeColor="Black">0</asp:TextBox>
        
                </td>
            </tr>
            <tr>
                <td class="cell" colspan="2"><center><asp:Button ID="Button1" runat="server" Text="CONTINUE" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" CommandName="btnSubmit" ForeColor="White" class="btn"/>
                    <br />
                    <br />
                    </center></td>
            </tr>
        </table>
    </center>
</asp:Content>
