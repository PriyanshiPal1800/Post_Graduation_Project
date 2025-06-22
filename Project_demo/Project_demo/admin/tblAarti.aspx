<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblAarti.aspx.cs" Inherits="Project_demo.admin.tblAarti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style15">AARTI PAGE</h2>
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="aarti_id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px" Font-size="20px" AutoGenerateEditButton="true" AutoGenerateInsertButton="true" EmptyDataText="No Record in Table">
        <AlternatingRowStyle BackColor="White" />
        <Fields>
            <asp:BoundField DataField="aarti_id" HeaderText="aarti_id" ReadOnly="True" SortExpression="aarti_id" InsertVisible="true" />
            
            <asp:TemplateField HeaderText="temple_name">
                <ItemTemplate>
                    <asp:DropDownList ID="GroupList" DataSourceID="SqlDataSource5" DataTextField="temple_name" DataValueField="temple_id" SelectedValue='<%#Bind("temple_name")%>' runat="server" />
                </ItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="GroupList" DataSourceID="SqlDataSource5" DataTextField="temple_name" DataValueField="temple_id" SelectedValue='<%#Bind("temple_name")%>' runat="server" />
                </InsertItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="GroupList" DataSourceID="SqlDataSource5" DataTextField="temple_name" DataValueField="temple_id" runat="server" />
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [aarti] WHERE [aarti_id] = @aarti_id" InsertCommand="INSERT INTO [aarti] ([aarti_id], [temple_id], [time], [url]) VALUES (@aarti_id, (SELECT [temple_id] FROM temples WHERE [temple_name] = @temple_name), @time, @url)" SelectCommand="SELECT [aarti].[aarti_id], [temples].[temple_name], [aarti].[time], [aarti].[url] FROM [aarti] JOIN [temples] ON [aarti].[temple_id] = [temples].[temple_id]" UpdateCommand="UPDATE [aarti] SET [temple_id] = (SELECT [temple_id] FROM temples WHERE [temple_name]=@temple_name), [time] = @time, [url] = @url WHERE [aarti_id] = @aarti_id">
        <DeleteParameters>
            <asp:Parameter Name="aarti_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="aarti_id" Type="String" />
            <asp:Parameter Name="temple_id" Type="String" />
            <asp:Parameter DbType="Time" Name="time" />
            <asp:Parameter Name="url" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Time" Name="time" />
            <asp:Parameter Name="temple_id" Type="String" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="aarti_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [temple_id], [temple_name] FROM [temples]">
    </asp:SqlDataSource>
</asp:Content>
