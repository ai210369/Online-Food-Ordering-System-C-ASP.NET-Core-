<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Secangkir Cafe</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <style type="text/css">
        @import "animate.css";
        @import url(//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css);
        @import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400,700);
        @import url(http://fonts.googleapis.com/css?family=Yesteryear);
        /* Custom CSS styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px auto;
        }

        .gallery_col-1,
        .gallery_col-2 {
            width: 49.2%;
            margin-bottom: 20px;
        }

        .gallery_item {
        position: relative;
        width: 100%;
        padding-bottom: 100%;
        }

        .gallery_item img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        }

        .gallery_overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: rgba(0, 0, 0, 0.7);
        opacity: 0;
        transition: opacity 0.3s;
        }

        .gallery_item:hover .gallery_overlay {
        opacity: 1;
        }

        .gallery_caption {
        text-align: center;
        color: #fff;
        font-size: 20px;
        font-weight: bold;
        }

        .gallery_caption em {
        font-style: normal;
        }

        /* Responsive Styles */
        @media screen and (max-width: 767px) {
        .gallery {
        grid-template-columns: 1fr;
        }
        }

        /* Header styles */
        header {
            background-color: #333;
            padding: 20px;
            color: #fff;
        }

        .brand_name a {
            color: #fff;
            text-decoration: none;
        }

        .nav {
            display: flex;
            justify-content: flex-end;
        }

        .sf-menu {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
        }

        .sf-menu li {
            margin-right: 20px;
        }

        .sf-menu li a {
            color: #fff;
            text-decoration: none;
        }

        /* Footer Styles */
        footer {
            padding: 45px 0 0 0;
            text-align: center;
            background-color: black;
        }

        footer .socials {
            display: inline-block;
            overflow: hidden;
        }

        footer .socials li {
            float: left;
        }

        footer .socials li + li {
            margin-left: 100px;
        }

        @media (max-width: 767px) {
            footer .socials li + li {
                margin-left: 30px;
            }
        }

        @media (max-width: 479px) {
            footer .socials li + li {
                margin-left: 15px;
            }
        }

        footer .socials a {
            display: inline-block;
            width: 94px;
            height: 94px;
            line-height: 94px;
            text-align: center;
            background: white;
            color: black;
            border-radius: 50%;
            font-size: 60px;
            text-decoration: none;
            margin-bottom: 20px;
        }

        @media (max-width: 479px) {
            footer .socials a {
                font-size: 40px;
                width: 80px;
                height: 80px;
                line-height: 80px;
                background-color: black;
            }
        }

        footer .socials a:hover {
            background: #4ed9ad;
        }

        footer .gallery_overlay {
            opacity: 0;
        }

        footer .gallery_item:hover .gallery_overlay {
            opacity: 0;
        }

        footer .gallery_item img {
            filter: grayscale(100%);
        }

        footer .gallery_item:hover img {
            filter: none;
        }

        footer .gallery_caption {
            display: none;
        }

        .tm {
            background: #423e3e;
        }

        * + footer .tm {
            margin-top: 11px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="page">
            <!-- HEADER -->
            <header>
                <div class="brand">
                    <h1 class="brand_name">
                        <a href="Default.aspx">Secangkir Cafe</a>
                    </h1>
                </div>

                <br /><nav class="nav">
                    <ul class="sf-menu">
                        <li><a href="Default.aspx">Home</a> |</li>
                        <li><a href="Registration.aspx">Registration</a> |</li>
                        <li><a href="Login.aspx">Member Login</a> |</li>
                        <li><a href="Fpassword.aspx">Forgot Password</a> |</li>
                        <li><a href="ADMIN/AdminLogin.aspx">Admin Login</a> |</li>
                        <li><a href="Contactus.aspx">Contact Us</a></li>
                    </ul>
                </nav><br />
            </header>

            <!-- CONTENT -->
            <div class="gallery">
                <div class="gallery_col-1">
                    <div class="gallery_item">
                        <a href="Login.aspx">
                            <img src="images/cafe4.jpg" alt="" />
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
                        <a href="Login.aspx">
                            <img src="images/fries.jpg" alt="" />
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
                        <a href="Login.aspx">
                            <img src="images/drinks.jpg" alt="" />
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
                        <a href="Login.aspx">
                            <img src="images/desserts1.jpg" alt="" />
                            <div class="gallery_overlay">
                                <div class="gallery_caption">
                                    <p><em>DESSERTS</em></p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

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
