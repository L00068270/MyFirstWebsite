<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="login.aspx.cs" 
    Inherits="MyFirstWebsite.pages.login" %>

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
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <section id="headerArea">
            <div class="container"> 
                <div id="branding">
                    <h2><span class="float-left">Library Application Login</span></h2>
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
                    <div class="col-sm-4"style="background-color: #FFFFFF"></div>
                 
                    
                        
                    <div class="col-sm-4"style="background-color: #FFFFFF">                             
                        <Table class="table-hover table-bordered" style="padding: 3px; background-position: center; width:100%;">
                            <tr>
                                <td><asp:Label ID="lblUsername" runat="server" Font-Names="Calibri" Text="Username"></asp:Label></td>
                                <td><asp:TextBox ID="tbxUsername" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblPassword" runat="server" Font-Names="Calibri" Text="Password"></asp:Label></td>
                                <td><asp:TextBox ID="tbxPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" OnClientClick="return confirm('Do you want to log in')" Text="Login"
                                CssClass="btn btn-seccess" /></td>
                            </tr>
                        </Table>                               
                        <br />
                        <br />
                        <br />
                    
                        <asp:Label ID="lblMsg" runat="server" Font-Names="Calibri" Font-Size="Medium"></asp:Label>                       
                                                                         
                    </div>


                       
                    <div class="col-sm-4"style="background-color: #FFFFFF">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" 
                            SelectCommand="SELECT [Username], [Password] FROM [LibraryMember]"></asp:SqlDataSource>
                    </div>                   
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
