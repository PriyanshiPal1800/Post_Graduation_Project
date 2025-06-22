<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Project_demo.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .About25 {
            height: 100%;
            width: 100%;
            background-image: url("https://media.istockphoto.com/photos/abstract-blur-lobby-in-hotel-interior-background-picture-id1269899153?k=20&m=1269899153&s=170667a&w=0&h=Qmq0sQN8Jxk7EC9FkTl_u3ird43El2x8WdrbXLOfV8Y=");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            overflow: auto;
        }

        .About26 {
            font-size: xx-large;
            color: #FF6600;
            text-decoration: underline;
        }

        .About27 {
            text-align: center;
            width: 81%;
            left: 11%;
            position: relative;
            top: 10%;
            background-color: rgba(250, 235, 215,0.8);
            overflow: auto;
        }

        .About29 {
            font-size: x-large;
            color: #800000;
        }

        .About30 {
            text-align: justify;
        }

        .About31 {
            text-align: center;
            width: 47%;
            left: 20%;
            position: absolute;
            top: 60%;
            overflow: auto;
        }

        .About1 {
            position: relative;
            left: 19%;
            top: 35%;
            width: 250px;
            height: 70px;
        }

        .About3 {
            position: relative;
            left: 55%;
            top: 7%;
            width: 250px;
            height: 70px;
        }

        .About2 {
            position: relative;
            left: 18%;
            top: 50%;
            width: 250px;
            height: 70px;
        }

        .About4 {
            position: relative;
            left: 56%;
            top: 23%;
            width: 250px;
            height: 70px;
        }

        .About24 {
            height: 515px;
        }
        .About5{
            position: relative;
    top: 122px;
    left: 39%;
    font-size: xx-large;
            color: #FF6600;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="About25">
            <div class="About31">
               
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="About26" Text="About Us"></asp:Label>
                </strong>
               
            </div>
            <div class="About27">

                <br />
                <br />
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="About29" Text="DIVY DARSHAN is web-based service which intend to connect with the users for online as well as offline darshan.It will also help to connect external users to maintain their website."></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="About29" Text="We help users to:"></asp:Label>
                <br />
                </strong>
                <ul>
                    <li class="About30"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="About29" Text="Construct a profile within a bounded system."></asp:Label>
                        </strong></li>
                    <strong>
                    <br />
                    </strong>
                    <li class="About30"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="About29" Text=" Articulate a list of other users and ngo and the temple connected."></asp:Label>
                        </strong></li>
                    <strong>
                    <br />
                    </strong>
                    <li class="About30"><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="About29" Text="View the list of Temples and Ngo."></asp:Label>
                        </strong></li>
                </ul>
                <div class="About30">
                    <span class="About29">
                    <br />
                    <br />
                    <strong>&quot;DIVY DARSHAN&quot; provides a user- friendly interface with the users. Due to corona pandemic has dramatically changed the nature of our social interaction so that&#39;s why we provide an online and offline darshan as well as those who want to go to the temple with the minimum capacity of the people with the social distancing and precautions .Our website is associated with various temple and a NGO who works for underprivileged people.so user can join the prayers and arti of the temples they haveregistered for. We provide online darshan as well as offline darshan in order to establish communication with the user. We also provide various facilities like you can see history of temples, book the ticket for visiting the temple through E-pass, donate money to NGO or temple or combined according to your desire.</strong></span><br />
               
                    </div>

                
            </div><asp:Label ID="Label7" runat="server" CssClass="About5" Text="OUR TEAM"></asp:Label>

            <div class="About24"  >
                     <div class="About1">
                            <div class="flip-cardH">
                                <div class="flip-card-innerH">
                                    <div class="flip-card-frontH">

                                        <div class="chipH">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8OJ-zP363wkxMjd5AhIECl1fA3ngG6vyS1MYT8U8MNuMMvH2qmVj0fhiBJYFZcIwf5UM&usqp=CAU" alt="Person" width="100" height="100" />
                                            Priyanshi Pal
                                        </div>
                                    </div>
                                    <div class="flip-card-backH">
                                        <h1>9952XXXXXX<br />
                                            priya_123@gmail.com</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="About2">
                            <div class="flip-cardH">
                                <div class="flip-card-innerH">
                                    <div class="flip-card-frontH">

                                        <div class="chipH">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEI6G4BLc75gHp9OVjCtr534K8nM_RYL5K6HM6Fzn15VpW97upLM3ZaGGugTqeL5QgFa8&usqp=CAU" alt="Person" width="100" height="100" />
                                            Avantika Pandey
                                        </div>
                                    </div>
                                    <div class="flip-card-backH">
                                        <h1>9952XXXXXX<br />
                                            Avantika_123@gmail.com</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="About3">
                            <div class="flip-cardH">
                                <div class="flip-card-innerH">
                                    <div class="flip-card-frontH">

                                        <div class="chipH">
                                            <img src="https://cdn-icons-png.flaticon.com/512/146/146025.png" alt="Person" width="100" height="100" />
                                            Khushi Gupta
                                        </div>
                                    </div>
                                    <div class="flip-card-backH">
                                        <h1>9952XXXXXX<br />
                                            Khushi_123@gmail.com</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="About4">
                            <div class="flip-cardH">
                                <div class="flip-card-innerH">
                                    <div class="flip-card-frontH">

                                        <div class="chipH">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhCl51yRwlA5dhspiRvbRXhkpdMX38KWY9UDPxOdTLSwW7c0WNy_C0TtiOZi96saSr8C8&usqp=CAU" alt="Person" width="100" height="100" />
                                            Laveena Tanwani
                                        </div>
                                    </div>
                                    <div class="flip-card-backH">
                                        <h1>9952XXXXXX<br />
                                            Laveena_123@gmail.com</h1>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
    </div>
</asp:Content>
