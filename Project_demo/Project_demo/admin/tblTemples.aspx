<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblTemples.aspx.cs" Inherits="Project_demo.tblTemples" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><span class="auto-style15">TEMPLE TABLE
    </span>
    <br class="auto-style15" />
    </h2>
    <asp:DetailsView ID="dvTemples" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="temple_id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" AllowPaging="True" Font-Size="20px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="temple_id" HeaderText="temple_id" InsertVisible="false" ReadOnly="True" SortExpression="temple_id" />
            <asp:BoundField DataField="temple_name" HeaderText="temple_name" SortExpression="temple_name" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
            <asp:BoundField DataField="about" HeaderText="about" SortExpression="about" />
            <asp:BoundField DataField="image1" HeaderText="image1" SortExpression="image1" />
            <asp:BoundField DataField="open_time" HeaderText="open_time" SortExpression="open_time" />
            <asp:BoundField DataField="close_time" HeaderText="close_time" SortExpression="close_time" />
            <asp:BoundField DataField="darshan_link" HeaderText="darshan_link" SortExpression="darshan_link" />
            <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
            <asp:BoundField DataField="image3" HeaderText="image3" SortExpression="image3" />
            <asp:BoundField DataField="image4" HeaderText="image4" SortExpression="image4" />
            <asp:BoundField DataField="By_Air" HeaderText="By_Air" SortExpression="By_Air" />
            <asp:BoundField DataField="By_Train" HeaderText="By_Train" SortExpression="By_Train" />
            <asp:BoundField DataField="By_Road" HeaderText="By_Road" SortExpression="By_Road" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [temples] WHERE [temple_id] = @temple_id" InsertCommand="INSERT INTO [temples] ([temple_id], [temple_name], [location], [email_id], [contact_no], [about], [image1], [open_time], [close_time], [darshan_link], [image2], [image3], [image4], [By_Air], [By_Train], [By_Road]) VALUES (@temple_id, @temple_name, @location, @email_id, @contact_no, @about, @image1, @open_time, @close_time, @darshan_link, @image2, @image3, @image4, @By_Air, @By_Train, @By_Road)" SelectCommand="SELECT * FROM [temples]" UpdateCommand="UPDATE [temples] SET [temple_name] = @temple_name, [location] = @location, [email_id] = @email_id, [contact_no] = @contact_no, [about] = @about, [image1] = @image1, [open_time] = @open_time, [close_time] = @close_time, [darshan_link] = @darshan_link, [image2] = @image2, [image3] = @image3, [image4] = @image4, [By_Air] = @By_Air, [By_Train] = @By_Train, [By_Road] = @By_Road WHERE [temple_id] = @temple_id">
        <DeleteParameters>
            <asp:Parameter Name="temple_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="temple_id" SessionField="sid" />
            <asp:Parameter Name="temple_name" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="contact_no" Type="String" />
            <asp:Parameter Name="about" Type="String" />
            <asp:Parameter Name="image1" Type="String" />
            <asp:Parameter DbType="Time" Name="open_time" />
            <asp:Parameter DbType="Time" Name="close_time" />
            <asp:Parameter Name="darshan_link" Type="String" />
            <asp:Parameter Name="image2" Type="String" />
            <asp:Parameter Name="image3" Type="String" />
            <asp:Parameter Name="image4" Type="String" />
            <asp:Parameter Name="By_Air" Type="String" />
            <asp:Parameter Name="By_Train" Type="String" />
            <asp:Parameter Name="By_Road" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="temple_id" Type="String" />
            <asp:Parameter Name="temple_name" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="contact_no" Type="String" />
            <asp:Parameter Name="about" Type="String" />
            <asp:Parameter Name="image1" Type="String" />
            <asp:Parameter DbType="Time" Name="open_time" />
            <asp:Parameter DbType="Time" Name="close_time" />
            <asp:Parameter Name="darshan_link" Type="String" />
            <asp:Parameter Name="image2" Type="String" />
            <asp:Parameter Name="image3" Type="String" />
            <asp:Parameter Name="image4" Type="String" />
            <asp:Parameter Name="By_Air" Type="String" />
            <asp:Parameter Name="By_Train" Type="String" />
            <asp:Parameter Name="By_Road" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
</asp:Content>
