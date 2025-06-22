<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Project_demo.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background{
            width: 100%;
            background-image: url("https://thumbs.dreamstime.com/b/emotion-face-symbol-yellow-wooden-cube-blocks-service-rating-ranking-customer-review-satisfaction-feedback-concept-185540154.jpg");
            background-repeat:no-repeat;
            background-size: 100% 100%;
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
    <div class="background">
        <div class="card">
            <center>
            <h2 class="head">Send Your <br/>Valuable Feedback</h2>                
            <img src="images/line4.png" height="80" width="400" /><br />
            <asp:Label class="lbl" ID="lblMsg1" runat="server" Font-Size="Medium" ForeColor="#009933" Visible="False"></asp:Label><br />
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
                        Enter Feedback Message
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtFeedback" runat="server" Height="300px" Width="350px" Font-Size="Large" Rows="10" TextMode="MultiLine" BorderColor="#a94106"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFeedback" ErrorMessage="Message is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        <center>
                            <asp:Button ID="btnFeedback" runat="server" Text="SEND" BackColor="#a94106" BorderColor="#a94106" BorderWidth="0px" ForeColor="White" class="btn" OnClick="btnFeedback_Click"/>
                        </center>
                    </td>
                </tr>
            </table>
            </center>
      </div>
    </div>
</asp:Content>
