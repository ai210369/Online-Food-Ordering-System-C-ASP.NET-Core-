<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="homePage.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

          
        <h1 class="brand_name">
            <a href="Home.aspx">Secangkir Cafe</a>
        </h1>
        
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div><br /><br /><br />
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>                  
                  <ul class="sf-menu"> 
                    <li>
                        <asp:Label Text="" runat="server" ID="lblname"></asp:Label>
                    </li>
                    
                    <li class="active">
                        <a href="Home.aspx">Home</a><line>&nbsp;&nbsp;&nbsp;|</line>
                    </li>
                    <li>
                        <a href="Account.aspx">Profile</a><line>&nbsp;&nbsp;&nbsp;|</line>
                    </li>
                    <li>
                        <a href="MyOrder.aspx">My Order</a><line>&nbsp;&nbsp;&nbsp;|</line>
                    </li> <li>
                        <a href="MyCart.aspx">My Cart</a><line>&nbsp;&nbsp;&nbsp;|</line>
                    </li>
                    <li>
                        <a href="Password.aspx">Reset Password</a><line>&nbsp;&nbsp;&nbsp;|</line>
                    </li>
                    <li>
                        <a href="Default.aspx">Logout</a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>

            <!-- CONTENT -->            
            <main><br /><br /><br /><br />
                <section class="well">
                    <div class="container">
                        <h2><em></em></h2>
                    </div>
                    <div class="gallery">
                        <div class="gallery_col-1">
                        <div class="gallery_item">
                            <a data-fancybox-group="gallery" href="Products.aspx?id=1">
                                <img src="images/cafe4.jpg" alt="FOOD" />
                                <div class="gallery_overlay">
                                    <div class="gallery_caption">
                                        <p><em>FOOD</em></p>
                                    </div>
                                </div>
                            </a>
                            </div>
                        </div>
                        <div class="gallery_col-1">
                        <div class="gallery_item">
                            <a data-fancybox-group="gallery" href="Products.aspx?id=2">
                                <img src="images/fries.jpg" alt="SNACK" />
                                <div class="gallery_overlay">
                                    <div class="gallery_caption">
                                        <p><em>SNACK</em></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        </div>
                        <div class="gallery_col-1">
                        <div class="gallery_item">
                            <a data-fancybox-group="gallery" href="Products.aspx?id=4">
                                <img src="images/drinks.jpg" alt="BEVERAGE" />
                                <div class="gallery_overlay">
                                    <div class="gallery_caption">
                                        <p><em>BEVERAGE</em></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        </div>
                        <div class="gallery_col-1">
                        <div class="gallery_item">
                            <a data-fancybox-group="gallery" href="Products.aspx?id=3">
                                <img src="images/desserts1.jpg" alt="DESSERTS" />
                                <div class="gallery_overlay">
                                    <div class="gallery_caption">
                                        <p><em>DESSERTS</em></p>
                                    </div>
                                </div>
                            </a>
                            </div>
                        </div>
                    </div>
                </section>
            </main>

            <!-- FOOTER -->
            <footer>
                <div class="container">
                    <ul class="socials">
                        <li><a href="https://api.whatsapp.com/send?phone=601158884403&text=SECANGKIR%20COOPITIAM%20%E2%98%95%EF%B8%8F%0A%0A%20Waktu%20Operasi%20%3A%20%0A9pagi-%209malam%20(Jumaat%20tutup)%0A%0AHai.%20Boleh%20saya%20bantu%3F%20%E2%98%BA%EF%B8%8F" class="fa fa-whatsapp"></a></li>
                        <li><a href="https://www.instagram.com/secangkircoopitiam/?hl=en" class="fa fa-instagram"></a></li>
                        <li><a href="https://www.facebook.com/secangkircoopitiam/?locale=ms_MY" class="fa fa-facebook"></a></li>
                    </ul>
                </div>
                <div class="tm" style="color: white; font-size: 18px;">BIE33103 DOTNET PROGRAMMING (GROUP 5)</div>
            </footer>
        </div>
    </form>
</body>
</html>