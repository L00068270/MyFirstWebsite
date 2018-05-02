<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstWebsite.pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section id="headerArea">
            <div class="container"> 
                <div id="branding" style="position: absolute">
                    <h2><span class="float-left">Library Application</span></h2>
                </div>

                <div id="logo">
                    <div>
                        <img src="../logo/LYIT%20LOGO.png" style="width: 160px; height: auto; top: 10px;" /> 
                    </div>                   
                </div>
            </div>
        </section>



        <section id="navArea">
            <div class="container">
                <div id="navBar">
                    <span class="float-right">
                        <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
                            <Items>
                                <asp:MenuItem NavigateUrl="~/pages/home.aspx" Text="HOME" Value="home"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/pages/aboutus.aspx" Text="ABOUT US" Value="aboutus"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/pages/resources.aspx" Text="RESOURCES" Value="resources"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/pages/register.aspx" Text="REGISTER" Value="register"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/pages/login.aspx" Text="LOGIN" Value="login">
                                </asp:MenuItem>
                            </Items>
                        </asp:Menu>
                    </span>
                </div>                
            </div>
        </section>
   


        <section id="bannerArea">
            <div class="container">
                <div class="banner">
                    
                </div>               
            </div>
        </section>
    <div>
    
    </div>
        
    </form><asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="http://172.28.134.6/ReportServer">HyperLink</asp:HyperLink>
</body>
</html>
