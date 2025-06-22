<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblCalendar.aspx.cs" Inherits="Project_demo.admin.tblCalendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style15">CALENDAR TABLE</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="occ_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="35%">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="occassion" HeaderText="occassion" SortExpression="occassion" />
            <asp:BoundField DataField="occ_id" HeaderText="occ_id" SortExpression="occ_id" InsertVisible="False" ReadOnly="True" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [calendar] WHERE [occ_id] = @occ_id" InsertCommand="INSERT INTO [calendar] ([date], [occassion]) VALUES (@date, @occassion)" SelectCommand="SELECT [date], [occassion], [occ_id] FROM [calendar]" UpdateCommand="UPDATE [calendar] SET [date] = @date, [occassion] = @occassion WHERE [occ_id] = @occ_id">
        <DeleteParameters>
            <asp:Parameter Name="occ_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="occassion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="date" />
            <asp:Parameter Name="occassion" Type="String" />
            <asp:Parameter Name="occ_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>