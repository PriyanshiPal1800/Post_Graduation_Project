<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="TempleNGOCards.aspx.cs" Inherits="Project_demo.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .auto-style25 {
            height: 806px;
            width: 100%;
            background-color: lavenderblush;
            overflow:auto;
        }
        .auto-style26 {
            width: 100%;
        }
         .flip-card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            text-align: center;
            font-family: arial;
            background-image: url("https://png.pngtree.com/background/20210714/original/pngtree-business-style-orange-frosted-texture-gradient-background-picture-image_1216278.jpg");
            height: 300px;
            width: 260px;
            perspective: 1000px;
        }

        .flip-card-inner {
            position: relative;
            text-align: center;
            transition: transform 0.6s;
            transform-style: preserve-3d;
        }

        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        .flip-card-front, .flip-card-back {
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            color: black;
            position: absolute;
            height: 300px;
            width: 260px;
        }

        .flip-card-front {
            background-color: transparent;
            color: black;
            display: inline block;
        }

        .flip-card-back {
            background-color: transparent;
            color: black;
            font-family: "lucida handwriting",cursive;
            font-size: 13px;
            transform: rotateY(180deg);
        }

        .img {
            height: 300px !important;
            width: 260px !important;
        }

        .auto-style27 {
            width: 260px;
            cursor: pointer;
            margin-top: 0px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style25">

        <table class="auto-style26">
            <tr>
                <td colspan="4">
                    <marquee style="background-color: darkorange;" direction="left">
            <asp:Label ID="Label8" runat="server" Font-Names="Book Antiqua" Font-Size="27px" Text="हम आपको घर बैठे भगवान के दर्शन कराते हैं। किसी भी मंदिर के दर्शन करने के लिए केवल चयन करें । और निश्चिंत हो जाए । " Width="660px"></asp:Label>
            <br />

            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="30px" Text="Bridging the gap between you and your devotion ... We bring temple to your home ....." Width="660px"></asp:Label></marquee>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <center><h2>TEMPLE</h2></center>
                </td>
            </tr>
            
            <tr>
                <td>
                   <div class="flip-card">

                <div class="flip-card-inner">
                    <div class="flip-card-front">

                        <asp:Image ID="Image1" class="img" runat="server"   style="width: 100%" />


                    </div>

                    <div class="flip-card-back">
                        <asp:Label ID="Label1" runat="server" Text="" Font-Bold="False" Font-Names="Book Antiqua" Font-Size="20px"></asp:Label>

                    </div>


                 </div>
 </div><asp:Button ID="Button1" runat="server" Style="width: 260px; cursor:pointer; background-color:#FDA055 ;"  Font-Bold="True" Font-Names="Britannic Bold"  OnClick="Button1_Click" BackColor="#FDA055" />
          
            
        

                </td>
                <td>
                     <div class="flip-card">

                <div class="flip-card-inner">
                    <div class="flip-card-front">

                        <asp:Image ID="Image2" class="img" runat="server"   style="width: 100%" />


                    </div>

                    <div class="flip-card-back">

                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Book Antiqua" Font-Size="20px"></asp:Label>

                    </div>

                </div>
            </div>

            <asp:Button ID="Button2" runat="server" Style="width: 260px; cursor:pointer;" OnClick="Button2_Click"  Font-Bold="True" Font-Names="Britannic Bold" BackColor="#FDA055" />

                </td>
                <td>
                      <div class="flip-card">

                <div class="flip-card-inner">
                    <div class="flip-card-front">

                        <asp:Image ID="Image3" class="img" runat="server"   style="width: 100%" />


                    </div>

                    <div class="flip-card-back" aria-busy="False">

                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Book Antiqua" Font-Size="20px"></asp:Label>

                    </div>

                </div>
            </div>

            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="background-color: #FDA055;"  Font-Bold="True" Font-Names="Britannic Bold" BackColor="#FF9900" CssClass="auto-style27" />

                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Style="font-size: 18px;" NavigateUrl="~/SelectionPage.aspx#Temp">see more &gt;&gt;</asp:HyperLink>
       
                </td>
            </tr>
            <tr>
                <td colspan="3"><center><h2>NGO</h2></center></td>
            </tr>
            <tr>
                <td>
                     <div class="flip-card">

                <div class="flip-card-inner">
                    <div class="flip-card-front">

                        <asp:Image ID="Image4" class="img" runat="server"  style="width: 100%" />


                    </div>

                    <div class="flip-card-back">

                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Book Antiqua" Font-Size="20px"></asp:Label>

                    </div>

                </div>
            </div>

            <asp:Button ID="Button4" runat="server" Style="width: 260px; cursor:pointer; background-color: #FDA055;"  Font-Bold="True" Font-Names="Britannic Bold" OnClick="Button4_Click" />
     
                </td>
                <td>
                     <div class="flip-card">

                <div class="flip-card-inner">
                    <div class="flip-card-front">

                        <asp:Image ID="Image5" class="img" runat="server"   style="width: 100%" />


                    </div>

                    <div class="flip-card-back">

                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Book Antiqua" Font-Size="20px"></asp:Label>

                    </div>

                </div>
            </div>

            <asp:Button ID="Button5" runat="server" Style="width: 260px; cursor:pointer; background-color: #FDA055;" Font-Bold="True" Font-Names="Britannic Bold"  OnClick="Button5_Click"/>

                </td>
                <td>
                    <div class="flip-card">

                <div class="flip-card-inner">
                    <div class="flip-card-front">

                        <asp:Image ID="Image6" class="img" runat="server"   style="width: 100%" />


                    </div>

                    <div class="flip-card-back">

                        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Book Antiqua" Font-Size="20px"></asp:Label>

                    </div>

                </div>
            </div>

            <asp:Button ID="Button6" runat="server" Style="width: 260px; cursor:pointer; background-color: #FDA055;"  Font-Bold="True" Font-Names="Britannic Bold" OnClick="Button6_Click" />

      
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" Style=" font-size: 18px;" NavigateUrl="~/SelectionPage.aspx">see more &gt;&gt;</asp:HyperLink>

                </td>
            </tr>
        </table>

    </div>
</asp:Content>
