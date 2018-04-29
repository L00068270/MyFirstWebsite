﻿<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="reports.aspx.cs" 
    Inherits="MyFirstWebsite.pages.reports" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link href="../css-bootstrap/bootstrap.css" rel="stylesheet" />
    <meta http-equiv="content-type" content="text/html; charset=ISO-8889-1" />
    <link href="../Styles/login.css" rel="stylesheet">
    <title>Reports</title>
</head>
<body>
    <form id="form1" runat="server">
        <section id="headerArea">
            <div class="container"> 
                <div id="branding">
                    <h2><span class="float-left">Library Application Reports</span></h2>
                </div>

                <div id="logo">
                    <div>
                        <img src="../logo/LYIT%20LOGO.png" style="width: 160px; height: auto; top: 10px;" /> 
                    </div>                   
                </div>
            </div>
        </section>


        <section id="bannerArea">
            <div class="container">
                <div class="banner">
                    
                </div>               
            </div>
        </section>

        <section id="navArea">
            <div class="container">
                <div id="navBar">
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/pages/home.aspx" Text="HOME" Value="home">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/aboutus.aspx" Text="ABOUT US" 
                                Value="aboutus"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/reports.aspx" Text="REPORTS" Value="reports">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/register.aspx" Text="REGISTER" 
                                Value="register"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/login.aspx" Text="LOGIN" Value="login">
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </div>                
            </div>
        </section>
            
                  
        <section id="mainBodyArea">
            <div class="container" style="background-color: #FFFFFF">                                   
                <div class="row">
                    <div class="col-sm-4"style="background-color: #FFFFFF">
                        <h2>This Page is for Pubilcally Available Reports</h2>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />         
                    </div>
                 
                    
                        
                    <div class="col-sm-4"style="background-color: #FFFFFF"></div>


                       
                    <div class="col-sm-4"style="background-color: #FFFFFF"></div>                   
                </div>
            </div>           
        </section>

        <section id="footerArea">
            <div class="container">
                <div class="row">
                    <br />
                        <br />
                        <br />
                </div>                    
            </div>
        </section>
    </form>
</body>
</html>
