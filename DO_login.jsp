<%-- 
    Document   : index
    Created on : 19 Apr, 2021, 4:04:17 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="//fonts.googleapis.com/css2?family=Cabin:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap" rel="stylesheet">
        <title>Accountable Proxy Re-Encryption</title>
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/style-starter.css">
    </head>
    <%
        if (request.getParameter("Register_Success") != null) {
    %>
    <script>alert('Registration Success');</script>
    <%            }
    %>
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
    <body>
        <!--header-->
        <header>
            <div class="container">
                <nav class="navbar navbar-expand-lg">
                    <h1>
                        <a class="navbar-brand">
                            <span class="sub-log">Proxy</span>&nbsp;&nbsp;Re-Encryption
                        </a>
                    </h1>
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                        <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                        </span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav mx-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Home</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="DO_login.jsp">Data Owner</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Delegator_login.jsp">Delegator</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Court_login.jsp">Court</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Cloud_login.jsp">Cloud</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <section class="w3l-about-breadcrumb">
            <div class="breadcrumb-bg breadcrumb-bg-about py-5">
                <div class="container py-lg-5 py-md-3">
                    <h2 class="title">Accountable Proxy Re-Encryption for Secure Data
                        Sharing</h2>
                </div>
            </div>
        </section>
        <section class="w3l-content-4">
            <div class="content-4-main py-5">
                <div class="container">
                    <div class="content-info-in row">
                        <div class="col-lg-6">
                            <img src="img/dologin.png" width="450" height="350" />
                        </div>
                        <div class="col-lg-6">
                            <h3 class="title-big text-center">Data Owner Login</h3><br><br>
                            <form action="do_signin.jsp" method="post">
                                <div class="form-group">
                                    <label>Email :</label>
                                    <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required="required">
                                </div>
                                <div class="form-group">
                                    <label>Password :</label>
                                    <input type="password" name="pass" class="form-control" placeholder="Enter Your Password" required="required">
                                </div>
                                <div class="text-lg-left text-center">
                                    <button type="submit" class="btn btn-style btn-success">Login</button>&nbsp;&nbsp;
                                    <a href="do_signup.jsp" class="btn btn-style btn-primary">Register!</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="w3l-footer py-5">

            <div class="text-center">
                <p class="copy-footer-29">© 2020</p>
            </div>
            <!-- //footer bottom -->

            <!-- move top -->
            <button onclick="topFunction()" id="movetop" title="Go to top">
                &#10548;
            </button>
            <script>
                // When the user scrolls down 20px from the top of the document, show the button
                window.onscroll = function () {
                    scrollFunction()
                };

                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("movetop").style.display = "block";
                    } else {
                        document.getElementById("movetop").style.display = "none";
                    }
                }

                // When the user clicks on the button, scroll to the top of the document
                function topFunction() {
                    document.body.scrollTop = 0;
                    document.documentElement.scrollTop = 0;
                }
            </script>
            <!-- /move top -->
        </footer>
        <!-- //footer -->

        <!-- Template JavaScript -->

        <script src="assets/js/jquery-3.3.1.min.js"></script>

        <script src="assets/js/theme-change.js"></script>

        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script>
                $(document).ready(function () {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',

                        fixedContentPos: false,
                        fixedBgPos: true,

                        overflowY: 'auto',

                        closeBtnInside: true,
                        preloader: false,

                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                    $('.popup-with-move-anim').magnificPopup({
                        type: 'inline',

                        fixedContentPos: false,
                        fixedBgPos: true,

                        overflowY: 'auto',

                        closeBtnInside: true,
                        preloader: false,

                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-slide-bottom'
                    });
                });
        </script>
        <!-- magnific popup -->

        <script src="assets/js/owl.carousel.js"></script>
        <!-- script for banner slider -->
        <script>
                $(document).ready(function () {
                    $('.owl-one').owlCarousel({
                        loop: true,
                        margin: 0,
                        nav: false,
                        responsiveClass: true,
                        autoplay: false,
                        autoplayTimeout: 5000,
                        autoplaySpeed: 1000,
                        autoplayHoverPause: false,
                        responsive: {
                            0: {
                                items: 1,
                                nav: false
                            },
                            480: {
                                items: 1,
                                nav: false
                            },
                            667: {
                                items: 1,
                                nav: true
                            },
                            1000: {
                                items: 1,
                                nav: true
                            }
                        }
                    })
                })
        </script>
        <!-- //script for banner slider -->

        <!-- script for Testimonials-->
        <script>
            $(document).ready(function () {
                $('.owl-two').owlCarousel({
                    loop: true,
                    margin: 30,
                    nav: true,
                    responsiveClass: true,
                    autoplay: false,
                    autoplayTimeout: 5000,
                    autoplaySpeed: 1000,
                    autoplayHoverPause: false,
                    responsive: {
                        0: {
                            items: 1,
                            nav: true
                        },
                        480: {
                            items: 1,
                            nav: true
                        },
                        667: {
                            items: 1,
                            nav: true
                        },
                        1000: {
                            items: 1,
                            nav: true
                        }
                    }
                })
            })
        </script>
        <!-- //script for Testimonials-->

        <!-- script for services -->
        <script>
            $(document).ready(function () {
                $('.owl-news').owlCarousel({
                    loop: true,
                    margin: 30,
                    nav: false,
                    responsiveClass: true,
                    autoplay: true,
                    autoplayTimeout: 5000,
                    autoplaySpeed: 1000,
                    autoplayHoverPause: false,
                    responsive: {
                        0: {
                            items: 1,
                            nav: false
                        },
                        480: {
                            items: 1,
                            nav: false
                        },
                        768: {
                            items: 2,
                            nav: false
                        },
                        1000: {
                            items: 3,
                            nav: false
                        }
                    }
                })
            })
        </script>
        <!-- //script for services -->

        <!-- disable body scroll which navbar is in active -->
        <script>
            $(function () {
                $('.navbar-toggler').click(function () {
                    $('body').toggleClass('noscroll');
                })
            });
        </script>
        <!-- disable body scroll which navbar is in active -->

        <script src="assets/js/bootstrap.min.js"></script>

    </body>

</html>
