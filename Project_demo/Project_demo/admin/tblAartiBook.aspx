<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblAartiBook.aspx.cs" Inherits="Project_demo.admin.tblAartiBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>AARTI BOOKING
    </h2>
    <br />
    <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ticket_id" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" Height="50px" Width="35%" Font-Size="20px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ticket_id" HeaderText="ticket_id" ReadOnly="True" SortExpression="ticket_id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="aarti_id" HeaderText="aarti_id" SortExpression="aarti_id" />
            <asp:BoundField DataField="join_date" HeaderText="join_date" SortExpression="join_date" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [aarti_booking] WHERE [ticket_id] = @ticket_id" InsertCommand="INSERT INTO [aarti_booking] ([ticket_id], [user_id], [aarti_id], [join_date]) VALUES (@ticket_id, @user_id, @aarti_id, @join_date)" SelectCommand="SELECT * FROM [aarti_booking]" UpdateCommand="UPDATE [aarti_booking] SET [user_id] = @user_id, [aarti_id] = @aarti_id, [join_date] = @join_date WHERE [ticket_id] = @ticket_id">
        <DeleteParameters>
            <asp:Parameter Name="ticket_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ticket_id" Type="String" />
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="aarti_id" Type="String" />
            <asp:Parameter DbType="Date" Name="join_date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="aarti_id" Type="String" />
            <asp:Parameter DbType="Date" Name="join_date" />
            <asp:Parameter Name="ticket_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
