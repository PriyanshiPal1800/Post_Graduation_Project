<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="Project_demo.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
          .Donation25 {
            height: 806px;
            width: 100%;
            background-color: lavenderblush;
            background-image: url("https://media.istockphoto.com/photos/donation-money-jar-filled-with-coins-in-front-of-holiday-lights-picture-id1171764212?k=20&m=1171764212&s=612x612&w=0&h=gHHV1ZnE8gq9VPs4XMB_pdjrMD2ehMmrO2y2nXFXnPY=");
            background-repeat:no-repeat;
            background-size: 100% 100%;
            }
        
       
        .Donation26 {
            font-size: large;
        }
        .Donation27 {
            text-align: center;
        }
        .Donation28 {
            font-family: "Comic Sans MS";
            color: #CC0000;
            text-decoration: underline;
            font-size: x-large;
        }
       
        .Donation29 {
            width: 500px;
            height: 350px;
            background-color: rgba(250, 235, 215,0.8);
            text-align: center;
            margin-left: 30px;
            margin-top: 150px;
            border: solid;
            border-color:brown;
        }
       
        .Donation30 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Donation25">
        <div class="Donation27">
            <span class="Donation26"></span>
            <span class="Donation28"><em><strong>It's not the amount that matters but the meaning behind your donation</strong></em></span>
        </div>
     
<div class="Donation29">
            <br />
            <asp:Label ID="Label10" runat="server" Text="Name" CssClass="Donation30" style="position:absolute; left:15%;"></asp:Label>
<asp:TextBox ID="TextBox4" runat="server" CssClass="Donation30" style="position:absolute; left:24%; width:17%"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="TEMPLE" CssClass="Donation30" AutoPostBack="True" GroupName="g1" OnCheckedChanged="RadioButton1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="NGO" CssClass="Donation30" AutoPostBack="True" GroupName="g1" OnCheckedChanged="RadioButton2_CheckedChanged" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" CssClass="Donation30" style="position:absolute; left:15%;"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Donation30" AutoPostBack="True"  DataTextField="temple_name" style="position:absolute; left:24%; width:17.5%; height:33px; font-size:larger;">
                <asp:ListItem>------------select------------</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="Amount" CssClass="Donation30" style="position:absolute; left:15%;"></asp:Label>
            <asp:ImageButton ID="ImageButton6" runat="server" Height="20px" ImageUrl="https://cdn-icons-png.flaticon.com/512/25/25473.png" style="position:absolute; left:22%; height:20px; width:20px;" />
            <asp:TextBox ID="TextBox5" runat="server"  CssClass="Donation26" style="position:absolute; left:24%; width:17%; height:23px;"></asp:TextBox>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="want to show name?" style="position:absolute; left:22%; top:117%; height:20px; width:11%;"/>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Donate" CssClass="Donation30" OnClick="Button1_Click" style="position:absolute; left:26%; top:122%;"/>
    </div> </div>
</asp:Content>
