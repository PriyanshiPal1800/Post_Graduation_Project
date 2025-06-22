<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="Project_demo.Location" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- <script type="text/javascript" language="javascript">
        function overlay() {
            WebForm_GetElementById("state").style.width = "1020px";
            console.Write("hi");
        }
    </script> -->
    <style>
        .outer{
            height: 806px;
            width: 100%;
           overflow:auto;
        }
        .location{
            height:100%;
            width:100%;
        }
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="outer">
        <asp:ImageMap ID="ImageMap1" CssClass="location" runat="server" ImageUrl="https://www.itl.cat/pngfile/big/102-1027794_india-naksha-wallpaper-full-full-size-india-map.jpg" OnClick="ImageMap1_Click" AutoPostBack="true" HotSpotMode="PostBack" >
            <asp:RectangleHotSpot AlternateText="Jammu And Kashmir" Bottom="130" Left="200" PostBackValue="Jammu and Kashmir" Right="460" Top="20" HotSpotMode="PostBack" NavigateUrl="~/SelectionPage.aspx"   />
            <asp:RectangleHotSpot AlternateText="Uttarakhand" Bottom="230" Left="350" PostBackValue="Uttarakhand" Right="470" Top="150" HotSpotMode="PostBack" NavigateUrl="~/SelectionPage.aspx"  />
            <asp:RectangleHotSpot AlternateText="Delhi" Bottom="238" Left="323" PostBackValue="Delhi" Right="343" Top="233" HotSpotMode="PostBack" NavigateUrl="~/SelectionPage.aspx"  />
            <asp:RectangleHotSpot AlternateText="Uttar Pradesh" Bottom="370" Left="350" PostBackValue="Uttar Pradesh" Right="570" Top="190" HotSpotMode="PostBack" NavigateUrl="~/SelectionPage.aspx" />
            <asp:RectangleHotSpot AlternateText="TamilNadu" Bottom="740" Left="320" PostBackValue="Tamil Nadu" Right="470" Top="600" HotSpotMode="PostBack" NavigateUrl="~/SelectionPage.aspx"  />
            <asp:RectangleHotSpot AlternateText="Maharashtra" Bottom="500" HotSpotMode="PostBack" Left="200" NavigateUrl="~/LocationTable.aspx" PostBackValue="Maharashtra" Right="470" Top="400" />
            
            <asp:CircleHotSpot AlternateText="Himachal Pradesh" Radius="30" X="320" Y="150" />
            
        </asp:ImageMap>
     </div>
    

        
</asp:Content>
