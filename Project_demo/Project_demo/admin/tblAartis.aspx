<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblAartis.aspx.cs" Inherits="Project_demo.admin.tblAartis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>        
        .search{
            font-size:large;
            color: #0F1111;
            padding: 20px;
            border: 2px solid #ff9900;
        }       
        .btns
        {
	        cursor: pointer;
	        border: none;
	        width: 100px;
	        padding:10px;
	        font-size: 18px;
            background-color:#a94106;
            color:white;
        }
        .th{
            padding:15px;
            background-color:burlywood;
        }
        .td
        {
            padding:15px;
            text-align:center;
            border-bottom:2px solid lightpink;
        }   
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 class="auto-style15">AARTI TIMING
    </h2>
    <br />
    <asp:DropDownList ID="TempleList" class="search" DataSourceID="SqlDataSource5" DataTextField="temple_name" DataValueField="temple_name" runat="server" OnSelectedIndexChanged="TempleList_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">    
        <asp:ListItem Selected="True" Text="Select Temple" Value="Select"></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lbl" runat="server" Text="" Visible="true" />
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [temple_name] FROM [temples]">
       </asp:SqlDataSource>
    <br />

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="aarti_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td class="td">
                    <asp:Button ID="DeleteButton" CssClass="btns" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CssClass="btns" CommandName="Edit" Text="Edit" />
                </td>
                <td class="td">
                    <asp:Label ID="aarti_idLabel" runat="server" Text='<%# Eval("aarti_id") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td class="td">
                    <asp:Button ID="UpdateButton" class="btns" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" class="btns" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td class="td">
                    <asp:Label ID="aarti_idLabel1" runat="server" Text='<%# Eval("aarti_id") %>'/>
                </td>
                <td class="td">
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                </td>
                <td class="td">
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td class="td">No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td class="td">
                    <asp:Button ID="InsertButton" class="btns" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" class="btns" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td class="td">
                    <asp:TextBox ID="aarti_idTextBox" runat="server" Visible="false" />
                </td>
                <td class="td">
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                </td>
                <td class="td">
                    <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td class="td">
                    <asp:Button ID="DeleteButton" class="btns" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" class="btns" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td class="td">
                    <asp:Label ID="aarti_idLabel" runat="server" Text='<%# Eval("aarti_id") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" class="tbl">
                <tr runat="server">
                    <td runat="server" class="td">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th class="th" runat="server"></th>
                                <th class="th" runat="server">aarti_id</th>
                                <th class="th" runat="server">time</th>
                                <th class="th" runat="server">url</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td class="td">
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td class="td">
                    <asp:Label ID="aarti_idLabel" runat="server" Text='<%# Eval("aarti_id") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
                <td class="td">
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT aarti_id, time, url FROM aarti WHERE (temple_id = @temple_id)" UpdateCommand="UPDATE aarti SET time=@time, url=@url WHERE aarti_id=@aarti_id" InsertCommand="INSERT INTO aarti VALUES(@aarti_id, @temple_id, @time, @url)" DeleteCommand="DELETE * FROM aarti WHERE aarti_id=@aarti_id">
        <SelectParameters>
            <asp:SessionParameter Name="temple_id" SessionField="Tid" />
        </SelectParameters>
        <InsertParameters>
            <asp:SessionParameter Name="aarti_id" SessionField="sid" />
            <asp:SessionParameter Name="temple_id" SessionField="Tid" />
            <asp:Parameter DbType="Time" Name="time" />
            <asp:Parameter Name="url" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Time" Name="time" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="aarti_id" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="aarti_id" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
<asp:Label ID="lblID" runat="server" Text="ID"/>
    <br />
    <br />
</asp:Content>
