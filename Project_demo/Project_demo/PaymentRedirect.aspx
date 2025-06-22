<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PaymentRedirect.aspx.cs" Inherits="Project_demo.PaymentRedirect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Pr25 {
            height: 100%;
            width: 100%;
            background-color: white;
        }

        .Pr26 {
            height: 100%;
            width: 100%;
            left: 500px;
            top: 316px;
            text-align: center;
            background-color: white;
        }

        .Pr27 {
            margin-bottom: 0px;
        }

        .Pr28 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="Pr25">
    <div class="Pr26">

           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />

           <asp:Image ID="Image8" runat="server" ImageUrl="https://c.tenor.com/HT-Xm8vgUysAAAAC/load.gif" CssClass="Pr27" Height="85px" Width="100px"/>

           <br />
           <strong>
           <br />
           <br />
           <br />
           <br />
           <br />
           <asp:Label ID="Label10" runat="server" CssClass="Pr28" Text="Redirected to third partyfor payment "></asp:Label>
           <br />
           <br />
           <br />
           <br />
           <br />
           </strong>
           <asp:Button ID="Button8" runat="server" style="cursor:pointer" BackColor="#FF6600" BorderColor="#CC0000" Height="35px" OnClick="Button8_Click" Text="OK" Width="64px" />

           </div>

   </div>
</asp:Content>
