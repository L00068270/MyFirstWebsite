<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="register.aspx.cs" 
    Inherits="MyFirstWebsite.pages.register" %>

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
                <div id="branding" style="position: absolute">
                    <h2><span class="float-left">Regristration</span></h2>
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
            
                  
        <section id="mainBodyArea">
            <div class="container" style="background-color: #FFFFFF">                                   
                <div class="row">
                    <div class="col-sm-4"style="background-color: #FFFFFF"></div>
                 
                    
                        
                    <div class="col-sm-4"style="background-color: #FFFFFF; padding-top: 60px;">                         
                        <Table class="table-hover table-bordered" 
                            style="padding: 5px 3px 3px 3px; background-position: center; width:100%;">  
                            <tr>
                                <td><asp:Label ID="lblNameFirst" runat="server" Font-Names="Calibri" Text="First Name"></asp:Label></td>
                                <td><asp:TextBox ID="tbxNameFirst" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblNameInitial" runat="server" Font-Names="Calibri" Text="Initials"></asp:Label></td>
                                <td><asp:TextBox ID="tbxNameInitial" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblNameLast" runat="server" Font-Names="Calibri" Text="Last Name"></asp:Label></td>
                                <td><asp:TextBox ID="tbxNameLast" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblUsername" runat="server" Font-Names="Calibri" Text="Username"></asp:Label></td>
                                <td><asp:TextBox ID="tbxUsername" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblPassword" runat="server" Font-Names="Calibri" Text="Password"></asp:Label></td>
                                <td><asp:TextBox ID="tbxPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblConfirmPassword" runat="server" Font-Names="Calibri" Text="Confirm Password"></asp:Label></td>
                                <td><asp:TextBox ID="tbxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblAddress" runat="server" Font-Names="Calibri" Text="Address"></asp:Label></td>
                                <td><asp:TextBox ID="tbxAddress" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblStreet" runat="server" Font-Names="Calibri" Text="Street"></asp:Label></td>
                                <td><asp:TextBox ID="tbxStreet" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblTown" runat="server" Font-Names="Calibri" Text="Town"></asp:Label></td>
                                <td><asp:TextBox ID="tbxTown" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblCounty" runat="server" Font-Names="Calibri" Text="County"></asp:Label></td>
                                <td><asp:TextBox ID="tbxCounty" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblCountry" runat="server" Font-Names="Calibri" Text="Country"></asp:Label></td>
                                <td><asp:TextBox ID="tbxCountry" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblPostcode" runat="server" Font-Names="Calibri" Text="Postcode"></asp:Label></td>
                                <td><asp:TextBox ID="tbxPostcode" runat="server"></asp:TextBox></td>
                            </tr>
                        
                            <tr>
                                <td></td>
                                <td><asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register"
                                CssClass="btn btn-seccess red" /></td>
                            </tr>
                    </table>                       
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblSuccessful" runat="server"></asp:Label>
                        <asp:Label ID="lblReEnter" runat="server"></asp:Label>  
                        <asp:Label ID="lblUsernameNotAvailable" runat="server"></asp:Label>
                        <br />
                    
                        
                                               
                            
                                                                    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" 
                            SelectCommand="SELECT [MemberID], [NameFirst], [NameInitial], [NameLast], [Username], [Password], [Address], [Street], [Town], [County], [Country], [Postcode] FROM [LibraryMember]">
                        </asp:SqlDataSource>
                            
                                                                    
                    </div>


                       
                    <div class="col-sm-4"style="background-color: #FFFFFF">
                            
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