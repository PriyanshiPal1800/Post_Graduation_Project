<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Project_demo.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>        
        .count
        {
	        width:300px;
	        display:inline-block;
	        background:white;
	        border:1px solid grey;
	        padding:10px;
	        margin:10px;
	        box-sizing: border-box;
	        border-radius: 5px;
        }
        img
        {
	        float:right;
	        width:60px;
	        padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="count">
        <img src="../images/user-profile.png" />
        <h2>No. of Users</h2>
        <h1>
            <asp:Label ID="lblUser" runat="server" Text="0"></asp:Label>
        </h1>
    </div>

    <div class="count">
        <img src="../images/users.svg" />
        <h2>No. of Temples</h2>
        <h1>
            <asp:Label ID="lblTemples" runat="server" Text="0"></asp:Label>
        </h1>
    </div>

    <div class="count">
        <img src="../images/users.svg" />
        <h2>No. of NGOs</h2>
        <h1>
            <asp:Label ID="lblNgo" runat="server" Text="0"></asp:Label>
        </h1>
    </div>

    <div class="count">
        <img src="../images/booking.png" />
        <h2>No. of Aarti_Bookings</h2>
        <h1>
            <asp:Label ID="lblAarti" runat="server" Text="0"></asp:Label>
        </h1>
    </div>

    <div class="count">
        <img src="../images/booking.png" />
        <h2>No. of Epass_Bookings</h2>
        <h1>
            <asp:Label ID="lblEpass" runat="server" Text="0"></asp:Label>
        </h1>
    </div>
    <br />

    <div class="count">
        <img src="../images/question.png" />
        <h2>Unread Queries</h2>
        <h1>
            <asp:Label ID="lblQuery" runat="server" Text="0"></asp:Label>
        </h1>
    </div>

    <div class="count">
        <img src="../images/feedback.png" />
        <h2>Unread Feedbacks</h2>
        <h1>
            <asp:Label ID="lblFeedback" runat="server" Text="0"></asp:Label>
        </h1>
    </div>
</asp:Content>
