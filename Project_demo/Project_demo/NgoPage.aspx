<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="NgoPage.aspx.cs" Inherits="Project_demo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ngo25 {
            height: 806px;
            width: 100%;
            background-color: lavenderblush;
            overflow:auto;
        }

        .ngo26 {
            width: 100%;
        }

        .ngo1 {
            width: 590px;
            text-align: justify;
        }

        .ngo27 {
            text-align: justify;
        }

        .branch {
            padding-top: 3px;
            border-top-width: 2px;
            margin-top: 10px;
            margin-left: 100px;
            margin-right: 0px;
            height: 30px;
            width: 100px;
        }

        .Ngo2 {
            Width: 90%;
            margin-top: 25px;
            height: 50%;
        }

        .ngo3 {
        }

        .ngo28 {
            text-align: center;
        }
         .ngo29 {
             margin-left: 0px;
             margin-top: 10px;
         }
         .ngo30 {
             font-size: large;
             font-family: "Times New Roman";
             color: #000000;
         }
         .ngo31 {
             text-decoration: underline;
             font-family: "Times New Roman";
             color: #FF3300;
         }
         .ngo32 {
             font-size: large;
             color: #FF6600;
         }
         .auto-style33 {
             font-family: "Times New Roman", Times, serif;
             font-size: xx-large;
             text-decoration: underline;
             color: #CC0000;
         }
         .ngo34 {
             margin-left: 60px;
         }
         .ngo35 {
             font-size: x-large;
             color: #FF3300;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="ngo25">
      <table class="ngo26">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image11" Width="100%" runat="server" ImageUrl="https://www.cry.org/wp-content/themes/cry/images/children-wide-banner.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="2"><center>
                    <h1><asp:Label ID="Label13" runat="server" Text="SMILE FOUNDATION" CssClass="ngo33"></asp:Label></h1>
                    </center>
                   </td>
            </tr>
            <tr>
                <td class="ngo1">
                     
                    <asp:Label ID="Label10" runat="server" Text="Smile Foundation, an Indian social development organization, is directly benefitting over 15 lakh children and their families every year. We have more than 400 live welfare projects on education, healthcare, livelihood, and women’s empowerment in over 2,000 remote villages and urban slums across 25 states of India.The groundwork for a better life lies in education. It is the most powerful catalyst for social transformation. However, a child cannot be educated in isolation. Only an empowered family, especially the mother, would be willing to educate their child. Thus, rather than focusing on only one stage of a person's life, we believe in the lifecycle approach.Education empowers an individual to earn their livelihood and also increases one's awareness on a range of issues. From healthcare, to appropriate social behavior, to understanding one's rights – Smile Foundation seeks to educate, empower and cultivate better citizens.Education empowers an individual to earn their livelihood and also increases one's awareness on a range of issues. From healthcare, to appropriate social behavior, to understanding one's rights – Smile Foundation seeks to educate, empower and cultivate better citizens." CssClass="ngo30"></asp:Label>                

                </td>
                <td>
                    <asp:Image ID="Image9" runat="server" Width="100%" ImageUrl="https://www.smilefoundationindia.org/blog/wp-content/uploads/2018/05/IMG-20180523-WA0001.jpg" CssClass="ngo34" />
                </td>
            </tr>
            <tr>
                <td class="ngo27">
                   <center> <asp:Label ID="Label14" runat="server" Text="OUR REACH" CssClass="ngo35"></asp:Label>
                    <br /> 
                    <asp:Panel ID="Panel1" runat="server">

                    </asp:Panel></center>
                </td>
                <td class="ngo28">
                    <br />
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="REACH US OUT" CssClass="ngo35"></asp:Label>
&nbsp;<br />
                    <asp:Image ID="Image12" runat="server" Height="61px" ImageAlign="AbsMiddle" ImageUrl="https://cdn.pixabay.com/photo/2016/03/22/04/23/map-1272165__340.png" Width="99px" />
&nbsp;&nbsp;
                    <asp:Label ID="Label16" runat="server" Text="161 B/4, 3rd Floor, Gulmohar House , Community Center , New Delhi-110049"></asp:Label>
                    <br />
                    <br />
                    <asp:Image ID="Image13" runat="server" Height="59px" ImageAlign="AbsMiddle" ImageUrl="data:image/png;base64,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" Width="67px" />
&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Text="SmileFoundation@gmail.com"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;
                    <asp:Image ID="Image14" runat="server" Height="56px" ImageAlign="AbsMiddle" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5whZLUTD38ocLmAcrxym-5RNdiUGNn6Nt6g&amp;usqp=CAU" Width="62px" />
&nbsp;<asp:Label ID="Label18" runat="server" Text="+91-11-4321XXXX"></asp:Label>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Image ID="Image10" runat="server" class="Ngo2" ImageUrl="https://www.smilefoundationindia.org/blog/wp-content/uploads/2017/11/Cover.jpg" ImageAlign="Right"/>
                </td>
                <td class="ngo1">
                    <div>
                    <center>
                        <h1><strong><asp:Label ID="Label12" runat="server" class="ngo3" Text="Our Contribution" CssClass="ngo31"></asp:Label></strong></h1>
                        </center>
                        <br />
                        <br />    
                    <asp:Label ID="Label11" runat="server" Text="Following a lifecycle approach, Smile Foundation, among the top NGO in India, works intensively through focused welfare projects in four major areas – child education for poor children, healthcare for families, skills training and livelihood for youth, and community engagement through women empowerment." CssClass="ngo32" ></asp:Label>         
</div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
