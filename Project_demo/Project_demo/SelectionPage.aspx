<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SelectionPage.aspx.cs" Inherits="Project_demo.SelectionPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .auto-style25 {
            height: 100%;
             width: 100%;
            background-color: lavenderblush;
            overflow:auto;
        }
        .divison
        {
            font-family:Verdana;
            font-size:20px;
            text-align:center;
        }
        .heading {
            font-size: 36px;
            color: #a94106;
        }
        .search{
            font-size:large;
            color: #0F1111;
            padding: 20px;
            border: 2px solid #ff9900;
        }
        .tbl
        {
            width:90%;
        }
        .th{
            padding:15px;
            background-color:burlywood;
        }
        .td
        {
            width:30%;
            text-align:center;
            border-bottom:2px solid lightpink;
        }        
        .btn
        {
	        cursor: pointer;
	        border: none;
	        width: 100px;
	        padding:10px;
	        font-size: 18px;
            background-color:#a94106;
            color:white;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style25">

        <!--TEMPLE PART-->
        <div id="Temp" name="temp" class="divison">
            <br /><h2 class="heading"> TEMPLES </h2><br />
            <asp:DropDownList ID="DropDownList1" class="search" runat="server" DataSourceID="SqlDataSource2" DataTextField="location" DataValueField="location" Width="171px" BackColor="antiquewhite" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="true">
                <asp:ListItem Selected="True" Text="All" Value="NA"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT DISTINCT [location] FROM [temples] ORDER BY [location]" ></asp:SqlDataSource>
            <asp:TextBox ID="txtSearch1" class="search" runat="server" Width="30%"></asp:TextBox>
            <asp:Button ID="btnSearch" class="search" runat="server" Text="SEARCH" BackColor="#ff9900" ForeColor="maroon" Font-Size="Large" OnClick="btnSearch_Click"/>   
            <br /><br />

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="temple_id">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td class="td">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image1") %>' Width="100px" Height="100px"/>
                    </td>
                    <td class="td">
                        <asp:Label ID="temple_nameLabel" runat="server" Text='<%# Eval("temple_name") %>' />
                    </td>
                    <td class="td">
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                    </td>
                    <td class="td">
                        <asp:Button ID="btnVisit" class="btn" runat="server" Text="VISIT" CommandArgument='<%# Eval("temple_id") %>' CausesValidation="false" OnClick="btnVisit_Click" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
                
            <EmptyDataTemplate><center>
                <table runat="server">
                    <tr>
                        <td>Data Unavailable</td>
                    </tr>
                </table></center>
            </EmptyDataTemplate>
                
            <ItemTemplate>
                <tr>
                    <td class="td">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image1") %>' Width="100px" Height="100px"/>
                    </td>
                    <td class="td">
                        <asp:Label ID="temple_nameLabel" runat="server" Text='<%# Eval("temple_name") %>' />
                    </td>
                    <td class="td">
                        <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                    </td>
                    <td class="td">
                        <asp:Button ID="btnVisit" class="btn" runat="server" Text="VISIT" CommandArgument='<%# Eval("temple_id") %>' CausesValidation="false" OnClick="btnVisit_Click" />
                    </td>
                </tr>
            </ItemTemplate>

           <LayoutTemplate><center>
                <table runat="server" class="tbl">
                    <tr runat="server">
                        <td class="td" runat="server" style="border:none;">
                            <table id="itemPlaceholderContainer" runat="server" border="0">
                                <tr class="tr" runat="server" style="">
                                    <th class="th" runat="server">Image</th>
                                    <th class="th" runat="server">Temple Name</th>
                                    <th class="th" runat="server">Location</th>
                                    <th class="th" runat="server"></th>
                                </tr>
                                <tr class="tr" id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr  runat="server">
                        <td class="td" runat="server" style="border:none;"><br />
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonCssClass="btn" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table></center>
            </LayoutTemplate>
                
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [image1], [temple_name], [location], [temple_id] FROM [temples] ORDER BY [temple_name]" ></asp:SqlDataSource>    
        </div>
        <br /><br />
        
        <!--NGO PART-->

        <div id="ngo" name="ngo" class="divison">
           <br /><h2 class="heading"> NGOs </h2><br />
            <asp:DropDownList ID="DropDownList2" class="search" runat="server" DataSourceID="SqlDataSource4" DataTextField="location" DataValueField="location" Width="171px" BackColor="antiquewhite" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AppendDataBoundItems="true">
                <asp:ListItem Selected="True" Text="All" Value="NA"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT DISTINCT [location] FROM [ngo] ORDER BY [location]"></asp:SqlDataSource>    
            <asp:TextBox ID="txtSearch2" class="search" runat="server" Width="30%"></asp:TextBox>
            <asp:Button ID="btnSearch2" class="search" runat="server" Text="SEARCH" BackColor="#ff9900" ForeColor="maroon" Font-Size="Large" OnClick="btnSearch2_Click"/>   
            <br /><br />

            <asp:ListView ID="ListView2" runat="server" DataKeyNames="ngo_id" DataSourceID="SqlDataSource3">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td class="td">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image1") %>' Width="100px" Height="100px"/>
                        </td>
                        <td class="td">
                            <asp:Label ID="ngo_nameLabel" runat="server" Text='<%# Eval("ngo_name") %>' />
                        </td>
                        <td class="td">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("location") %>' />
                        </td>
                        <td class="td">
                            <asp:Button ID="btnVisit2" class="btn" runat="server" Text="VISIT" CommandArgument='<%# Eval("ngo_id") %>' CausesValidation="false" OnClick="btnVisit2_Click" />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                
                <EmptyDataTemplate><center>
                    <table runat="server">
                        <tr>
                            <td>Data Unavailable</td>
                        </tr>
                    </table></center>
                </EmptyDataTemplate>
                
                <ItemTemplate>
                    <tr>
                        <td class="td">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image1") %>' Width="100px" Height="100px"/>
                        </td>
                        <td class="td">
                            <asp:Label ID="ngo_nameLabel" runat="server" Text='<%# Eval("ngo_name") %>' />
                        </td>
                        <td class="td">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("location") %>' />
                        </td>
                        <td class="td">
                            <asp:Button ID="btnVisit2" class="btn" runat="server" Text="VISIT" CommandArgument='<%# Eval("ngo_id") %>' CausesValidation="false" OnClick="btnVisit2_Click" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate><center>
                    <table runat="server" class="tbl">
                    <tr runat="server">
                        <td class="td" runat="server" style="border:none;">
                            <table id="itemPlaceholderContainer" runat="server" border="0">
                                <tr class="tr" runat="server" style="">
                                    <th class="th" runat="server">Image</th>
                                    <th class="th" runat="server">NGO Name</th>
                                    <th class="th" runat="server">Location</th>
                                    <th class="th" runat="server"></th>
                                </tr>
                                <tr class="tr" id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr  runat="server">
                        <td class="td" runat="server" style="border:none;"><br />
                            <asp:DataPager ID="DataPager2" runat="server" PageSize="4">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonCssClass="btn" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"/>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table></center>
            </LayoutTemplate>
                
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [image1], [ngo_name], [location], [ngo_id] FROM [ngo] ORDER BY [ngo_name]"></asp:SqlDataSource>    
            <br />  <br />
        </div>
    </div>
</asp:Content>
