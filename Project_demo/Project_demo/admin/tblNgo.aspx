<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="tblNgo.aspx.cs" Inherits="Project_demo.admin.tblNgo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style15">NGO TABLE</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ngo_id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Font-Size="20px" OnItemInserting="DetailsView1_ItemInserting">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ngo_id" HeaderText="ngo_id" SortExpression="ngo_id" ReadOnly="true" InsertVisible="false" />
            <asp:BoundField DataField="ngo_name" HeaderText="ngo_name" SortExpression="ngo_name" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
            <asp:BoundField DataField="about" HeaderText="about" SortExpression="about" />
            <asp:BoundField DataField="image1" HeaderText="image1" SortExpression="image1" />
            <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
            <asp:BoundField DataField="image3" HeaderText="image3" SortExpression="image3" />
            <asp:BoundField DataField="Our_Reach" HeaderText="Our_Reach" SortExpression="Our_Reach" />
            <asp:BoundField DataField="Our_Contribution" HeaderText="Our_Contribution" SortExpression="Our Contribution" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:CommandField ButtonType="Button" ShowInsertButton="True"  ShowEditButton="True" ShowDeleteButton="True"/>
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [temples] WHERE [temple_id] = @temple_id" SelectCommand="SELECT * FROM [ngo]" UpdateCommand="UPDATE ngo SET [ngo_name] =@ngo_name, [location] =@location, [email_id] =@email_id, [contact_no] =@contact_no, [about] =@about, [image1] =@image1, [image2] =@image2, [Our_Reach] =@Our_Reach, [image3] =@image3, [Our_Contribution] =@Our_Contribution, [address] =@address WHERE [ngo_id] = @ngo_id" InsertCommand="INSERT INTO [ngo]([ngo_id],[ngo_name], [location], [email_id], [contact_no], [about], [image1], [image2], [Our_Reach], [image3], [Our_Contribution], [address]) VALUES (@ngo_id, @ngo_name, @location, @email_id, @contact_no, @about, @image1, @image2, @Our_Reach, @image3, @Our_Contribution, @address)">
        <InsertParameters>
            <asp:SessionParameter Name="ngo_id" SessionField="sid" />
            <asp:Parameter Name="ngo_name" Type="String"/>
            <asp:Parameter Name="location" Type="String"/>
            <asp:Parameter Name="email_id" Type="String"/>
            <asp:Parameter Name="contact_no" Type="String"/>
            <asp:Parameter Name="about" Type="String"/>
            <asp:Parameter Name="image1" Type="String"/>
            <asp:Parameter Name="image2" Type="String"/>
            <asp:Parameter Name="Our_Reach" Type="String"/>
            <asp:Parameter Name="image3" Type="String"/>
            <asp:Parameter Name="Our_Contribution" Type="String"/>
            <asp:Parameter Name="address" Type="String"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="temple_id" Type="String" />
            <asp:Parameter Name="ngo_name" Type="String"/>
            <asp:Parameter Name="location" Type="String"/>
            <asp:Parameter Name="email_id" Type="String"/>
            <asp:Parameter Name="contact_no" Type="String"/>
            <asp:Parameter Name="about" Type="String"/>
            <asp:Parameter Name="image1" Type="String"/>
            <asp:Parameter Name="image2" Type="String"/>
            <asp:Parameter Name="Our_Reach" Type="String"/>
            <asp:Parameter Name="image3" Type="String"/>
            <asp:Parameter Name="Our_Contribution" Type="String"/>
            <asp:Parameter Name="address" Type="String"/>
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="ngo_id" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
</asp:Content>
