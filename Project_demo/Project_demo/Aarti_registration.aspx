<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Aarti_registration.aspx.cs" Inherits="Project_demo.Aarti_registration" %>
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
        .lbl{
            width: 50%;            
	        font-weight:600;
            padding: 10px;      
            font-family: Verdana;      
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
        .auto-style25 {
            height: 806px;
             width: 100%;
            background-color: lavenderblush;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style25">
       <div class="container"><img src="images/bitmap@2x.jpg" class="headImg"/><div class="centered"><h2 class="heading"> ONLINE AARTI REGISTRATION </h2></div></div>
    <center><img src="images/line4.png" height="80" width="500" /><asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Back To Temple" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" CommandName="btnSubmit" ForeColor="White" CssClass="btn" />
        <br /> 
        <table width="70%">
            <tr>
                <td class="lbl" colspan="2">
                    <center><asp:Label ID="lblMsg" runat="server" ForeColor="green" Text=""></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="cell">Date<font color="red">*</font></td>
                <td class="cell">
                    <asp:Label ID="lblDate" runat="server" Visible="False"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" BorderColor="#a94106" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    <asp:Label ID="lblError" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cell">Aarti Time<font color="red">*</font></td>
                <td class="cell"><asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="350px" BorderColor="#a94106" BorderStyle="Solid" padding="10px">
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="cell">Amount (₹)</td>
                <td class="cell">
                    <asp:TextBox ID="TextBox1" padding="10px" runat="server" Height="30px" Width="350px" BorderColor="#a94106" BorderStyle="Solid"  Enabled="False" EnableTheming="True" ReadOnly="True" ForeColor="Black">200</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="cell" colspan="2"><center><asp:Button ID="Button1" runat="server" Text="CONTINUE" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" style="cursor:pointer;" CommandName="btnSubmit" ForeColor="White" class="btn" OnClick="Button1_Click"/>
                    <br />
                    <br />
                    </center></td>
            </tr>
        </table>
    </center>
    </div>
</asp:Content>
