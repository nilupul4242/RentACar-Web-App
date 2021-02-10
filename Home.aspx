<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Rent_A_Car.Home" %>

  <!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>S&N Royals</title>

    <!--=== Bootstrap CSS ===-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--=== Vegas Min CSS ===-->
    <link href="css/plugins/vegas.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style1.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="css/responsive.css" rel="stylesheet">


    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   <%--     <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>--%>
</head>



    <!--== Header Area Start ==-->
    <header id="header-area" class="fixed-top">
        <!--== Header Top Start ==-->
        <div id="header-top" class="d-none d-xl-block">
            <div class="container">
                <div class="row">
                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-4 text-left">
                        <i class="fa fa-map-marker"></i> 15/B, Olimulla Junction, Nigambo Rd, Wattala
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-5 text-center">
                        <i class="fa fa-mobile"></i> 011-2930931 / 077-5654614 / 077-4346474 / 077-0441070
                    </div>
                    <!--== Single HeaderTop End ==-->

                    <!--== Single HeaderTop Start ==-->
                    <div class="col-lg-3 text-center">
                        <i class="fa fa-clock-o"></i> 24 Hours X 7 =365 Days 
                    </div>
             
                </div>
            </div>
        </div>
        
        <!--== Header Top End ==-->
           <div id="header-bottom">
            <div class="container">
                <div class="row">
                    <!--== Logo Start ==-->
                    <div class="col-lg-4">
                        <a href="#" class="logo">
                            <img src="img/1.png" alt="" height="70px" width="70px">
                        </a>
                    </div>
       
                    <!--== Logo End ==-->

                    <!--== Main Menu Start ==-->
                    <div class="col-lg-8 d-none d-xl-block">
                        <nav class="mainmenu alignright">
                            <ul>
                                <li class="active"><a href="#">Home</a>

                                </li>
                              
                                <li><a href="#">Rent A Car</a>
                                                                    <ul>
                                    <li><a href="Aggrement_Details.aspx">Aggrement Form</a></li>
                                    <li><a href="Handed_Over_Dtails.aspx">Handed Over Form</a></li>
                                </ul>
                                </li>
                              
                                <li><a href="#">Bill</a>
                                    <ul>
                                    <li><a href="Service_Bill.aspx">Service Bill</a></li>
                                        <li><a href="HiredVehicleRegister.aspx">Hired Vehicle Bill</a></li>
                                    
                                        </li>
                                </ul>
                                           <li><a href="#">Reports</a>
                                    <ul>
                                        <li><a href="R1.aspx"> Get Registered Customers Summery</a></li>
                                        <li><a href="R2.aspx">Get Service Bill Summery</a></li>
                                        <li><a href="R3.aspx">Get Hired Vehicle Details</a></li>
                                       
                                    </ul>
                                </li>
                                
                                <li><a href="#">Security</a>
                                    <ul>
                                        <li><a href="Register.aspx">Register</a></li>
                                       
                                    </ul>
                                </li>
                               
                                 <li><a href="Login.aspx">Logout</a></li>
                            </ul>
                        </nav>
                    </div>
       
    </header>
    <body>







  <section id="slider-area">
        <!--== slide Item One ==-->
        <div class="single-slide-item overlay">
            

                   <div class="col-lg-12 text-right">
                        <div class="display-table">
                            <div class="display-table-cell">
                                <div class="slider-right-text">
                                    <h1>S & N RENT A CAR</h1>
                                    <%--<h1>BOOK A CAR TODAY!</h1>--%>
                                    <p>FOR SAFE JOURNEY <br> FOR OUR GENUINE CUSTOMERS</p>
                                </div></div>
                            </div>
                        </div>
                    </div>



  </section>

<div class="scroll-top">
        <img src="img/scroll-top.png" alt="JSOFT">
    </div>
    <!--== Scroll Top Area End ==-->

    <!--=======================Javascript============================-->
    <!--=== Jquery Min Js ===-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!--=== Jquery Migrate Min Js ===-->
    <script src="js/jquery-migrate.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="js/bootstrap.min.js"></script>
    <!--=== Gijgo Min Js ===-->
    <script src="js/plugins/gijgo.js"></script>
    <!--=== Vegas Min Js ===-->
    <script src="js/plugins/vegas.min.js"></script>
    <!--=== Isotope Min Js ===-->
    <script src="js/plugins/isotope.min.js"></script>
    <!--=== Owl Caousel Min Js ===-->
    <script src="js/plugins/owl.carousel.min.js"></script>
    <!--=== Waypoint Min Js ===-->
    <script src="js/plugins/waypoints.min.js"></script>
    <!--=== CounTotop Min Js ===-->
    <script src="js/plugins/counterup.min.js"></script>
    <!--=== YtPlayer Min Js ===-->
    <script src="js/plugins/mb.YTPlayer.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="js/plugins/magnific-popup.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="js/plugins/slicknav.min.js"></script>

    <!--=== Mian Js ===-->
    <script src="js/main.js"></script>
<%--</form>--%>
</body>

</html>
