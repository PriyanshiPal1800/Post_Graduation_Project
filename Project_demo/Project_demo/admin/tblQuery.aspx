<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblQuery.aspx.cs" Inherits="Project_demo.admin.tblQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><span class="auto-style15">QUERY TABLE</span><br class="auto-style15" />
    </h2>
    <asp:DetailsView ID="DetailsView6" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="query_id" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Vertical" Height="50px" Width="35%" Font-Size="20px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="query_id" HeaderText="query_id" ReadOnly="true" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" ReadOnly="true" />
            <asp:BoundField DataField="message" HeaderText="message" ReadOnly="true" />
            <asp:BoundField DataField="date" HeaderText="date" ReadOnly="true" />
            <asp:CheckBoxField DataField="readmsg" HeaderText="readmsg" SortExpression="readmsg">
            <ControlStyle Height="14px" Width="14px" />
            </asp:CheckBoxField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="true" />

        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [query]" DeleteCommand="DELETE FROM [query] WHERE [query_id] = @query_id" UpdateCommand="UPDATE [query] SET [readmsg] = @readmsg WHERE [query_id] = @query_id">
        <DeleteParameters>
            <asp:Parameter Name="query_id" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="readmsg" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
