<%-- 
    Document   : index
    Created on : 19 Apr, 2021, 4:04:17 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
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
                                <a class="nav-link" href="Court_Home.jsp">Home</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="Auditing_request.jsp">Auditing Request</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="audit_files.jsp">Requested Files</a>
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
        <section class="w3l-content-4">
            <div class="content-4-main py-5">
                <div class="container">
                    <div class="content-info-in row">
                        <div class="col-lg-6">
                            <br><br><br><br>
                            <img src="img/verify.jpg" width="450" height="350" />
                        </div>
                        <%
                            String fid = request.getParameter("fid");
                            String filename = request.getParameter("fname");
                            String hashcode = request.getParameter("hash");
                            System.out.println("File ID : " + fid);
                            Connection con = SQLconnection.getconnection();
                            Statement st = con.createStatement();
                            Statement st1 = con.createStatement();
                            try {

                                ResultSet rs = st1.executeQuery("Select * from do_files where id = '" + fid + "' ");
                                if (rs.next()) {
                        %>
                        <div class="col-lg-6">
                            <h3 class="title-big text-center">Auditing Verify</h3><br><br>
                            <form onsubmit="return checkForm(this);" class="email-form">
                                <div class="form-group">
                                    <label><b>File Name :</b></label><br>
                                    <input type="text" class="form-control" name="username" value="<%=rs.getString("filename")%>" readonly="" />  <br>         
                                </div>
                                <div class="form-group mt-3">
                                    <label><b>Hashcode :</b></label><br>
                                    <input type="text" class="form-control" name="pwd1" readonly="" value="<%=hashcode%>" readonly="" />   <br>        	
                                </div>
                                <div class="form-group">
                                    <label><b>Verified Hash:</b></label><br>
                                    <input type="text" class="form-control" name="pwd2" value="<%=rs.getString("hashcode1")%>" readonly="" />  <br>         
                                </div>
                                <div class="text-lg-left text-center">
                                    <button type="submit" class="btn btn-style btn-success">Verify</button>
                                </div>
                            </form>
                        </div>
                        <%}

                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
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
        <script  src="assets/js/validation.js"></script>
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
