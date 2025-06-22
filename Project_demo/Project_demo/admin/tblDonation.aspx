<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblDonation.aspx.cs" Inherits="Project_demo.admin.tblDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style15">DONATION TABLE</h2><br />
    <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="D_id" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Vertical" Height="50px" Width="35%" Font-Size="20px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="D_id" HeaderText="D_id" ReadOnly="True" SortExpression="D_id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:BoundField DataField="temple_id" HeaderText="temple_id" SortExpression="temple_id" />
            <asp:BoundField DataField="ngo_id" HeaderText="ngo_id" SortExpression="ngo_id" />
            <asp:BoundField DataField="show_name" HeaderText="show_name" SortExpression="show_name" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [Donation]">
    </asp:SqlDataSource>
</asp:Content>
