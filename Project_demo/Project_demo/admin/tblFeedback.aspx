<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblFeedback.aspx.cs" Inherits="Project_demo.admin.tblFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style15">FEEDBACK TABLE</h2>
    <asp:DetailsView ID="DetailsView7" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="feedback_id" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Vertical" Height="50px" Width="35%" Font-Size="20px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="feedback_id" HeaderText="feedback_id" SortExpression="feedback_id" InsertVisible="False" ReadOnly="true" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" ReadOnly="true" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" ReadOnly="true" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" ReadOnly="true" />
            <asp:CheckBoxField DataField="readmsg" HeaderText="readmsg" SortExpression="readmsg" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="true" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [feedback]" DeleteCommand="DELETE FROM [feedback] WHERE [feedback_id] = @feedback_id" UpdateCommand="UPDATE [feedback] SET [readmsg] = @readmsg WHERE [feedback_id] = @feedback_id">
     <DeleteParameters>
            <asp:Parameter Name="feedback_id" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="readmsg" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
