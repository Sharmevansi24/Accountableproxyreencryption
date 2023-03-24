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
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Login Success');</script>
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
                            <li class="nav-item active">
                                <a class="nav-link" href="Delegator_Home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Search_file.jsp">Search File</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Requested_files.jsp">Requested File</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="downloaded_file1.jsp">Downloaded File</a>
                            </li>
                        </ul>
                    </div>
                    <div class="d-lg-block d-none">
                        <a href="index.jsp" class="btn btn-style btn-primary">Logout</a>
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
        <%
            String id = (String) session.getAttribute("deid");
            String name = (String) session.getAttribute("dename");
            String email = (String) session.getAttribute("demail");


        %>
        <section class="w3l-content-4">
            <div class="content-4-main py-5">
                <div class="container py-lg-4">
                    <div class="content-info-in row">
                        <div class="col-lg-12">
                            <h3 class="title-big text-center">Welcome <%=name.toUpperCase()%>!</h3><br><br>
                            <img src="img/duhome.jpg" width="1150" height="500" />
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
