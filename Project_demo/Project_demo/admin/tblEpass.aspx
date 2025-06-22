<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblEpass.aspx.cs" Inherits="Project_demo.admin.tblEpass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style15">E-PASS TABLE</h2>
    <asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ticket_id" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical" Height="50px" Width="35%" Font-Size="20px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ticket_id" HeaderText="ticket_id" ReadOnly="True" SortExpression="ticket_id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="date_to_come" HeaderText="date_to_come" SortExpression="date_to_come" />
            <asp:BoundField DataField="no_of_people" HeaderText="no_of_people" SortExpression="no_of_people" />
            <asp:BoundField DataField="temple_id" HeaderText="temple_id" SortExpression="temple_id" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [epass] WHERE [ticket_id] = @ticket_id" InsertCommand="INSERT INTO [epass] ([ticket_id], [user_id], [date_to_come], [no_of_people], [temple_id]) VALUES (@ticket_id, @user_id, @date_to_come, @no_of_people, @temple_id)" SelectCommand="SELECT * FROM [epass]" UpdateCommand="UPDATE [epass] SET [user_id] = @user_id, [date_to_come] = @date_to_come, [no_of_people] = @no_of_people, [temple_id] = @temple_id WHERE [ticket_id] = @ticket_id">
        <DeleteParameters>
            <asp:Parameter Name="ticket_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ticket_id" Type="String" />
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="date_to_come" Type="String" />
            <asp:Parameter Name="no_of_people" Type="Int32" />
            <asp:Parameter Name="temple_id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="date_to_come" Type="String" />
            <asp:Parameter Name="no_of_people" Type="Int32" />
            <asp:Parameter Name="temple_id" Type="String" />
            <asp:Parameter Name="ticket_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
