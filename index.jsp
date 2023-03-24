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
                                <a class="nav-link" href="index.jsp">Home</a>
                            </li>
                            <li class="nav-item">
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
        <section class="w3l-main-slider" id="home">
            <div class="companies20-content">
                <div class="owl-one owl-carousel owl-theme">
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view bg bg2">
                                <div class="banner-info">
                                    <div class="container">
                                        <div class="banner-info-bg">
                                            <h5 style="font-size: 43px;">Blockchain based Proxy Re-Encryption for Secure Data
                                                Sharing
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info  banner-view banner-top1 bg bg2">
                                <div class="banner-info">
                                    <div class="container">
                                        <div class="banner-info-bg">
                                            <h5 style="font-size: 43px;">Blockchain based Proxy Re-Encryption for Secure Data
                                                Sharing
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                </div>
            </div>
        </section>
        <section class="w3l-content-4">
            <div class="content-4-main py-5">
                <div class="container py-lg-4">
                    <div class="content-info-in row">
                        <div class="col-lg-12">
                            <h3 class="title-big text-center">ABSTRACT</h3>
                            <p class="mt-4" align="justify"> 
                                Proxy re-encryption (PRE) provides a promising
                                solution for encrypted data sharing in public cloud. When data
                                owner Alice is going to share her encrypted data with data
                                consumer Bob, Alice generates a re-encryption key and sends it
                                to the cloud server (proxy); by using it, the proxy can transform
                                Alice’s ciphertexts into Bob’s without learning anything about
                                the underlying plaintexts. Despite that existing PRE schemes can
                                prevent the proxy from recovering Alice’s secret key by collusion
                                attacks with Bob, due to the inherent functionality of PRE, it
                                is inevitable that the proxy and Bob together are capable to
                                gain and distribute Alices decryption capabilities. Even worse,
                                the malicious proxy can deny that it has leaked the decryption
                                capabilities and has very little risk of getting caught.
                                To tackle this problem, we introduce the concept of Accountable
                                Proxy Re-Encryption (APRE), whereby if the proxy is accused to
                                abuse the re-encryption key for distributing Alice’s decryption
                                capability, a judge algorithm can decide whether it is innocent or
                                not. We then present a non-interactive APRE scheme and prove
                                its CPA security and accountability under DBDH assumption in
                                the standard model. Finally, we show how to extend it to a CCA
                                secure one.
                            </p>
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
