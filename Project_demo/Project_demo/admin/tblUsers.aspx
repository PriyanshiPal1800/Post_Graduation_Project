<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblUsers.aspx.cs" Inherits="Project_demo.tblUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
    <table style="width:100%;">
        <tr>
            <td>
                <center><h2>Admin</h2>
                <asp:DetailsView ID="dvAdmin" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px" Font-Size="20px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [users] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [users] SET [firstname] = @firstname, [lastname] = @lastname, [email_id] = @email_id, [password] = @password, [contact_no] = @contact_no, [user_type] = @user_type WHERE [user_id] = @user_id">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="U0" Name="user_id" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="firstname" Type="String" />
                        <asp:Parameter Name="lastname" Type="String" />
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="contact_no" Type="String" />
                        <asp:Parameter Name="user_id" Type="String" DefaultValue="U0"  />
                        <asp:Parameter Name="user_type" Type="String" DefaultValue="admin"  />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </center>
            </td>
            <td>
                <h2>Users</h2>
                <asp:DetailsView ID="dvUsers" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Font-Size="20px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                        <asp:BoundField DataField="user_type" HeaderText="user_type" SortExpression="user_type" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:DetailsView>
                    
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" SelectCommand="SELECT * FROM [users] WHERE [user_id] <>'U0'">
                    <DeleteParameters>
                        <asp:Parameter Name="user_id" Type="String" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
