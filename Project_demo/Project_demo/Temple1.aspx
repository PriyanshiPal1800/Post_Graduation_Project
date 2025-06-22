<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Temple1.aspx.cs" Inherits="Project_demo.Temple1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
           .Temp1 {
            width: 100%;
        }
        .Temp3 {
            height: 322px;
        }
                
        .Temp4 {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            text-decoration: underline;
            color: #FF0000;
        }
                
        .Temp5 {
            text-align: left;
        }
        .Temp11 {
            width: 100%;
        }
        .Temp12 {
            height: 150px;
            width: 232px;
        }
        .Temp13 {
            height: 150px;
            text-align: center;
        }
        .Temp14 {
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
            text-decoration: underline;
            color: #FF3300;
        }
        .Temp15 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF6600;
        }
        .Temp16 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF0000;
        }
        .Temp17 {
            width: 177px;
        }
        .Temp18 {
            width: 100%;
            height: 90px;
        }
        .Temp19 {
            font-size: large;
        }
                
        .Temp21 {
            color: rgb(255, 51, 0);
        }
        .Temp22 {
            color: #FF6600;
        }
        .Temp23 {
            color: #FF0000;
        }
        .Temp24 {
            width: 99%;
            height: 274px;
        }
        .Temp25 {
            height: 22px;
        }
        .Temp26 {
        }
        .Temp29 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FF0000;
            margin-left: 0px;
        }
                
        .Temp30 {
            width: 40%;
        }
                
        .Temp31 {
            width: 36%
        }
        .Temp32 {
            width: 34%
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
        <div class="Temp5">
        <div class="Temp4">
            <div class="Temp4">
        <table class="Temp1">
            <tr>
                <td class="Temp3">
                    <asp:Image ID="Image1" runat="server" Height="369px" ImageUrl="https://pbs.twimg.com/media/C-y4ACdXUAA13Ss.jpg" Width="100%" />
                </td>
            </tr>
            </table>
            </div>
           <div style="background-color: orange">  
     <marquee direction="left">
         <strong> 
             <asp:HyperLink ID="Link1" runat="server">HyperLink</asp:HyperLink>

         </strong></marquee>  
</div>  
        </div>
        </div>
        <table class="Temp11">
            <tr>
                <td class="Temp12">
                        <strong>
                            <asp:Button ID="btnEpass" runat="server" Text="Apply for E-Pass" Width="194px" PostBackUrl="~/E_paas_Reg.aspx" Height="39px" Onclick="btnEpass_Click"/>
                        </strong>
                    <br />
                    <br />
&nbsp;<asp:Button ID="btnAarti" runat="server" Text="Apply for Aarti" Width="186px" PostBackUrl="~/Aarti_registration.aspx" Height="33px" OnClick="btnAarti_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                    <br />
                        <strong>
                            <asp:Button ID="btnLocation" runat="server" Text="Location" Width="191px"  CausesValidation="False" OnClick="btnLocation_Click" Target="_Blank" />
                        </strong>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="Temp13">
                    <h1>
                        <asp:Label ID="Label1" runat="server" CssClass="Temp14" Text="About the Krishna Janambhoomi"></asp:Label>
                    </h1>
                    <div class="Temp5">
                        <br />
                        <asp:Label ID="Label6" runat="server" CssClass="Temp22" Text="Shri Krishna Janmasthan Temple, also known as Shri Krishna Janmabhoomi temple, is centred on the prison cell where Lord Krishna's parents, Mata Devaki and Vasudeva, were imprisoned by his wicked uncle Kansa. Aside from the prison cell, the Krishna Janmasthan Temple contains other temples devoted to the god. The holy ambience and purity of the temple infuse the heart with confidence that this is the spot where Lord Krishna revealed himself. #Trivia: Several kings destroyed it numerous times before being rebuilt with financial assistance from industrialists. The Krishna Janmasthan Temple sees heavy footfall during holidays such as Janmashtami (The birthday of Lord Krishna), Basant Panchami, Holi, and Diwali."></asp:Label>
                    </div>
                </td>
            </tr>
        </table>
        <table class="Temp18">
            <tr>
                <td class="Temp17">
                    <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="https://static.vecteezy.com/system/resources/thumbnails/002/079/984/small/phone-icon-flat-style-isolated-on-grey-background-telephone-symbol-call-illustration-sign-for-web-and-mobile-app-free-vector.jpg" Width="50px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="Temp19" Text="05652 423888"></asp:Label>
                    <br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="https://cdn-icons-png.flaticon.com/512/281/281769.png" Width="50px" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td>
                    <asp:Image ID="Image5" runat="server" Height="258px" ImageUrl="https://thumbs.dreamstime.com/b/mathura-india-april-interior-prem-mandir-love-temple-hindu-vrindavan-priest-pandit-can-be-seen-praying-performing-190814116.jpg" Width="28%" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image6" runat="server" Height="258px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6RIP2c7LDrovli17KwVAilDYwCbyVUqAvng&amp;usqp=CAU" Width="28%" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image7" runat="server" Height="247px" ImageUrl="https://media.gettyimages.com/photos/tamil-hindu-priests-perform-special-prayers-for-the-goddess-durka-picture-id630517310?s=612x612" Width="28%" />
&nbsp;&nbsp;    </td>
            </tr>
        </table>
        <table class="Temp24">
            <tr>
                <td class="Temp25" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <h1 class="Temp4">
                        How to reach <asp:Label ID="Label5" runat="server" Text="Krishna Janambhoomi"></asp:Label>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="Temp32">
                    <asp:Image ID="Image8" runat="server" Height="77px" ImageUrl="https://www.iconbunny.com/icons/media/catalog/product/1/2/1256.9-aero-plane-icon-iconbunny.jpg" Width="107px" />
                    <br />
                    <h2 style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; margin: 0px; text-decoration: none; outline: 0px; list-style-type: none; font-family: 'Times New Roman', Times, serif; font-size: 1.3em; font-style: normal; font-weight: 700; vertical-align: baseline; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="Temp23">By Air</h2>
                    <h3 style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; padding: 0px 0px 15px; margin: 0px; text-decoration: none; outline: none; list-style-type: none; font-family: sans-serif; font-size: 14px; font-style: normal; font-weight: 400; vertical-align: baseline; line-height: 1.7em; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="Temp22">
                        <asp:Label ID="Label7" runat="server" Text="Mathura 46 km away Kheria Airport (AGR), Agra, Uttar Pradesh Mathura 136 km away Indira Gandhi International Airport (DEL), New Delhi, Delhi"></asp:Label>
                    </h3>
                    </td>
                <td class="Temp31">
                    <asp:Image ID="Image9" runat="server" Height="97px" ImageUrl="https://previews.123rf.com/images/valentint/valentint1704/valentint170400664/75401423-train-icon-train-website-button-on-white-background-.jpg" Width="109px" CssClass="Temp21" />
                    <br />
                    <h2 style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; margin: 0px; text-decoration: none; outline: 0px; list-style-type: none; font-family: sans-serif; font-size: 1.3em; font-style: normal; font-weight: 700; vertical-align: baseline; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="Temp23">By Train</h2>
                    <h3 style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; padding: 0px 0px 15px; margin: 0px; text-decoration: none; outline: none; list-style-type: none; font-family: sans-serif; font-size: 14px; font-style: normal; font-weight: 400; vertical-align: baseline; line-height: 1.7em; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="Temp22">
                        <asp:Label ID="Label8" runat="server" Text="There are regular trains from other major cities of the country to Mathura. Railway Station(s): Mathura Junction (MTJ), Mathura Cantt. (MRT)"></asp:Label>
                    </h3>
                    <br />
                </td>
                <td class="Temp30">
                        <asp:Image ID="Image10" runat="server" Height="77px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR__xeS3qtf6xkFrpoqO0_b2P7sIY8g88DNkA&amp;usqp=CAU" Width="93px" />
                    <br />
                    <h2 style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; margin: 0px; text-decoration: none; outline: 0px; list-style-type: none; font-family: sans-serif; font-size: 1.3em; font-style: normal; font-weight: 700; vertical-align: baseline; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="Temp21">By Road</h2>
                    <h3 style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: inherit; padding: 0px 0px 15px; margin: 0px; text-decoration: none; outline: none; list-style-type: none; font-family: sans-serif; font-size: 14px; font-style: normal; font-weight: 400; vertical-align: baseline; line-height: 1.7em; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="Temp22">
                        <asp:Label ID="Label9" runat="server" Text="Mathura is well connected to other major cities of the country via regular buses.Bus Station(s): Mathura"></asp:Label>
                        </h3>
                    <br />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
