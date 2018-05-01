<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="resources.aspx.cs" 
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
    <title>Resources</title>
</head>
<body>
    <form id="form1" runat="server">
        <section id="headerArea">
            <div class="container"> 
                <div id="branding">
                    <h2><span class="float-left">Other Resources</span></h2>
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
                            <asp:MenuItem NavigateUrl="~/pages/home.aspx" Text="HOME" Value="home"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/aboutus.aspx" Text="ABOUT US" Value="aboutus"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/resources.aspx" Text="RESOURCES" Value="resources"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/pages/register.aspx" Text="REGISTER" Value="register"></asp:MenuItem>
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
                        <h2>Resources</h2>
                        <p style="font-size: 12px">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Nulla quis diam. Sed ut perspiciatis unde omnis iste natus 
                            error sit voluptatem accusantium doloremque laudantium, totam 
                            rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi 
                            architecto beatae vitae dicta sunt explicabo. In dapibus augue non sapien. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse 
                            cillum dolore eu fugiat nulla pariatur. Etiam dui sem, fermentum 
                            vitae, sagittis id, malesuada in, quam. In enim a arcu imperdiet 
                            malesuada. Cras elementum. Integer imperdiet lectus quis justo. 
                            Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus 
                            libero, eget facilisis enim ipsum id lacus. Integer rutrum, orci 
                            vestibulum ullamcorper ultricies, lacus quam ultricies odio, 
                            vitae placerat pede sem sit amet enim. Suspendisse sagittis 
                            ultrices augue. Nulla est. Vivamus luctus egestas leo.</p>
                    </div>
                 
                    
                        
                    <div class="col-sm-4"style="background-color: #FFFFFF;">
                        <p style="color: #00FF00">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Nulla quis diam. Sed ut perspiciatis unde omnis iste natus 
                            error sit voluptatem accusantium doloremque laudantium, totam 
                            rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi 
                            architecto beatae vitae dicta sunt explicabo. In dapibus augue non sapien. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse 
                            cillum dolore eu fugiat nulla pariatur. Etiam dui sem, fermentum 
                            vitae, sagittis id, malesuada in, quam. In enim a arcu imperdiet 
                            malesuada. Cras elementum. Integer imperdiet lectus quis justo. 
                            Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus 
                            libero, eget facilisis enim ipsum id lacus. Integer rutrum, orci 
                            vestibulum ullamcorper ultricies, lacus quam ultricies odio, 
                            vitae placerat pede sem sit amet enim. Suspendisse sagittis 
                            ultrices augue. Nulla est. Vivamus luctus egestas leo.</p>
                    </div>


                       
                    <div class="col-sm-4"style="background-color: #FFFFFF">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
                            Nulla quis diam. Sed ut perspiciatis unde omnis iste natus 
                            error sit voluptatem accusantium doloremque laudantium, totam 
                            rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi 
                            architecto beatae vitae dicta sunt explicabo. In dapibus augue non sapien. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse 
                            cillum dolore eu fugiat nulla pariatur. Etiam dui sem, fermentum 
                            vitae, sagittis id, malesuada in, quam. In enim a arcu imperdiet 
                            malesuada. Cras elementum. Integer imperdiet lectus quis justo. 
                            Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus 
                            libero, eget facilisis enim ipsum id lacus. Integer rutrum, orci 
                            vestibulum ullamcorper ultricies, lacus quam ultricies odio, 
                            vitae placerat pede sem sit amet enim. Suspendisse sagittis 
                            ultrices augue. Nulla est. Vivamus luctus egestas leo.</p>
                        
                          
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
