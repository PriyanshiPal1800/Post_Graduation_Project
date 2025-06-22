<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="Project_demo.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>        
        .auto-style25 {
            height: 806px;
            width: 100%;
            background-color:lavenderblush;
            background-image: url("https://www.internetmatters.org/wp-content/uploads/2019/07/contact-us-image.png");
        }
        .card
        {	        
            background-color:antiquewhite;
	        border:solid 1px #CCCCCC;
	        border-radius:5px;
	        box-sizing:border-box;	
	        display:block;	
            width: 500px;
	        padding:20px;
            margin:0 auto;
        }
        .head
        {
            top:50px;
            font-size:32px;
            color: #a94106;
            font-family:Verdana;
        }
        .lbl{
            width: 50%;            
	        font-weight:600;
            font-family: Verdana;
            color:#a94106;
        }        
        .btn
        {
	        cursor: pointer;
	        border: none;
	        width: 150px;
	        padding:10px;
	        font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style25">
        <div class="card">
            <center>
            <h2 class="head">Ask your Query</h2>                
            <img src="images/line4.png" height="80" width="400" /><br />
            <asp:Label class="lbl" ID="lblMsg1" runat="server" Text="" Font-Size="Medium" ForeColor="#009933" Visible="False"></asp:Label><br />
            <table style="margin:10px 50px">
		        <tr>
                    <td class="lbl">
                        Enter Your Email ID
                    <td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="350px" CausesValidation="true" BorderColor="#a94106"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email ID is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email ID must be in valid format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter your Query
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtQuery" runat="server" Height="300px" Width="350px" Font-Size="Large" Rows="10" TextMode="MultiLine" BorderColor="#a94106"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuery" ErrorMessage="Message is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        <center>
                            <asp:Button ID="btnQuery" runat="server" Text="SEND" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" ForeColor="White" class="btn" OnClick="btnQuery_Click" />    
                        </center>
                    </td>
                </tr>
            </table>
            </center>
      </div>
    </div>
</asp:Content>
