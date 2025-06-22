<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="LocationTable.aspx.cs" Inherits="Project_demo.LocationTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .overlaylocation{
           width: 68.5%;
    height: 806px;
    top: 55%;
    left: 10.8%;
    position: absolute;
    overflow: auto;
    background-image: url("Images/Lbg.png");
    background-size: 100% 100%;
    background-repeat: no-repeat;
        }
        .FVN
        {
           height: 400px;
    width: 300px;
    position: absolute;
    top: 16%;
    left: 58%;
    background-color:transparent;
        }
        .FVT
        {
           height: 400px;
    width: 300px;
    position: absolute;
    top: 16%;
    left: 17%;
    background-color:transparent;
        }
        .btnmap{
            top: 80%;
    height: 47px;
    width: 163px;
    position: absolute;
    background-color: moccasin;
    left: 45%;
    cursor:pointer;
        }
        .auto-style25 {
            text-align: center;
        }
        .dummy_temple{
               margin-top: 14%;
    margin-left: 17%;
    width: 264px;
    height: 369px;
        }
        .dummy_ngo{
                height: 369px;
    width: 264px;
    margin-left: 17%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div Id="state" class="overlaylocation" >
            <asp:FormView ID="FormView2" CssClass="FVN" runat="server" AllowPaging="True" BackColor="transparent" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ngo_id" DataSourceID="SqlDataSource2" GridLines="Both">
                            <EditItemTemplate>
                                image1:
                                <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                                <br />
                                ngo_name:
                                <asp:TextBox ID="ngo_nameTextBox" runat="server" Text='<%# Bind("ngo_name") %>' />
                                <br />
                                ngo_id:
                                <asp:Label ID="ngo_idLabel1" runat="server" Text='<%# Eval("ngo_id") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <InsertItemTemplate>
                                image1:
                                <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                                <br />
                                ngo_name:
                                <asp:TextBox ID="ngo_nameTextBox" runat="server" Text='<%# Bind("ngo_name") %>' />
                                <br />
                                ngo_id:
                                <asp:TextBox ID="ngo_idTextBox" runat="server" Text='<%# Bind("ngo_id") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <div class="auto-style25">
                              <asp:Image ID="Image2"    runat="server" ImageUrl='<%# Bind("image1") %>' Height="330px" Width="294px" /> 
                                <asp:Label ID="ngo_nameLabel" runat="server" Text='<%# Bind("ngo_name") %>' /> 
                                <br />
                                <asp:Button ID="Button2" runat="server" Text="VISIT" cursor="pointer" CommandArgument='<%# Eval("ngo_id") %>' CausesValidation="false" OnClick="Button2_Click" />
                                <br />
                                    </div>
                            </ItemTemplate>
                            <PagerStyle BackColor="#FAA249" ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        </asp:FormView>
                                    &nbsp;&nbsp;
                           <asp:FormView ID="FormView1" CssClass="FVT" runat="server" AllowPaging="True" BackColor="transparent" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" DataKeyNames="temple_id">
                                <EditItemTemplate>
                                    image1:
                                    <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                                    <br />
                                    temple_name:
                                    <asp:TextBox ID="temple_nameTextBox" runat="server" Text='<%# Bind("temple_name") %>' />
                                    <br />
                                     temple_id:
                                    <asp:Label ID="temple_idLabel1" runat="server" Text='<%# Eval("temple_id") %>' />
                                    <br />
                                     <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <InsertItemTemplate>
                                    image1:
                                    <asp:TextBox ID="image1TextBox" runat="server" Text='<%# Bind("image1") %>' />
                                    <br />
                                    temple_name:
                                    <asp:TextBox ID="temple_nameTextBox" runat="server" Text='<%# Bind("temple_name") %>' />
                                    <br />
                                     temple_id:
                                    <asp:TextBox ID="temple_idTextBox" runat="server" Text='<%# Bind("temple_id") %>' />
                                    <br />
                                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <div class="auto-style25">
                                        <asp:Image ID="Image1" runat="server" Height="330px" ImageUrl='<%# Bind("image1") %>' Width="294px" />
                                        <br />
                                        <asp:Label ID="temple_nameLabel" runat="server" Text='<%# Bind("temple_name") %>' />
                                        <br />
                                        <asp:Button ID="Button1"  cursor="pointer" runat="server" CausesValidation="false" CommandArgument='<%# Eval("temple_id") %>' OnClick="Button1_Click" Text="VISIT" />
                                        <br />
                                    </div>
                                </ItemTemplate>
                                <PagerStyle BackColor="#FAA249" ForeColor="#FFF7E7" HorizontalAlign="Center" />
                                <RowStyle  ForeColor="#8C4510" BackColor="#FFF7E7" />
                            </asp:FormView>

                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [image1], [temple_name], [temple_id] FROM [temples] WHERE ([location] = @location)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="location" SessionField="location" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [image1], [ngo_name], [ngo_id] FROM [ngo] WHERE ([location] = @location)">
                            <SelectParameters>
                                <asp:SessionParameter Name="location" SessionField="location" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
            <asp:Image ID="Image9" CssClass="dummy_temple" runat="server" ImageUrl="~/Images/DummyTemp.png" />
            <asp:Image ID="Image8" CssClass="dummy_ngo" runat="server" ImageUrl="~/Images/DummyNgo.png" />
        <asp:Button ID="Button3" runat="server" Text="SHOW MAP" CssClass="btnmap" OnClick="Button3_Click" />
    </div>
</asp:Content>
