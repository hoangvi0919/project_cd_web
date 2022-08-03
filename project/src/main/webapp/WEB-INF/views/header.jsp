<%@ page import="nlu.web.project.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LaptopNLU-header</title>
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugins/ps-icon/style.css">
    <!-- CSS Library-->
    <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="plugins/Magnific-Popup/dist/magnific-popup.css">
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="plugins/revolution/css/settings.css">
    <link rel="stylesheet" href="plugins/revolution/css/layers.css">
    <link rel="stylesheet" href="plugins/revolution/css/navigation.css">
    <!-- Custom-->
    <link rel="stylesheet" href="css/style.css">
    <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--WARNING: Respond.js doesn't work if you view the page via file://-->
    <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Fontfaces CSS-->
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <!-- Main CSS-->
    <link href="login/main.css" rel="stylesheet" media="all">
</head>
<body class="ps-loading">
<header class="header">
    <div class="header__top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
                    <p>6 QL1A, Khu phố 1, Dĩ An, Bình Dương-  Hotline: 0385190234 </p>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                    <form:form action="/val"></form:form>
                    <div class="header__actions">
                        <a href="log-in" >
                            ĐĂNG NHẬP
                        </a>
                    </div>
                    <div class="header__actions">
                        <a href="register">ĐĂNG KÝ
                        </a>
                    </div>
                    <div class="header__actions">

                        <a href="/User/logout">
                            ĐĂNG XUẤT
                        </a>

                    </div>
                </div>
            </div>
        </div>
        <nav class="navigation">
            <div class="container-fluid">
                <div class="navigation__column left">
                    <div class="header__logo"><a class="ps-logo" href="index"><img src="images/logo1.png" alt=""></a></div>
                </div>
                <div class="navigation__column center">
                    <ul class="main-menu menu">
                        <li class="menu-item">
                            <i class="fas fa-home"></i>
                            <a href="index">TRANG CHỦ</a>
                        </li>
                        <li class="menu-item"><a href="about">GIỚI THIỆU</a> </li>

                        <li class="menu-item menu-item-has-children dropdown"><a href="product-listing">SẢN PHẨM</a>
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="acer-list">Acer</a></li>
                                <li class="menu-item"><a>Asus</a></li>
                                <li class="menu-item"><a>Lenovo</a></li>
                                <li class="menu-item"><a>Dell</a></li>
                                <li class="menu-item"><a>HP</a></li>
                                <li class="menu-item"><a>Macbook</a></li>
                            </ul>
                        </li>
                        <li class="menu-item"><a href="contact-us">Liên Hệ</a></li>

                        <li class="menu-item menu-item-has-children dropdown">
<%--                            <a><%=u!=null?"TÀI KHOẢN":""%></a>--%>
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="ViewInfo">Xem thông tin</a></li>
                                <li class="menu-item"><a href="Edit_InformationUser">Thay đổi thông tin</a></li>
                                <li class="menu-item"><a href="ChangePassword">Thay đổi mật khẩu</a></li>
                                <li class="menu-item"><a>Xem đơn hàng</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="navigation__column right">
                    <form class="ps-search--header" action="do_action" method="post">
                        <input class="form-control" type="text" placeholder="Tìm kiếm sản phẩm...">
                        <button><i class="ps-icon-search"></i></button>
                    </form>
                    <div class="ps-cart"><a class="ps-cart__toggle" href="cart"><i class="ps-icon-shopping-cart"></i></a>
                        <div class="ps-cart__listing">
                            <div class="ps-cart__content">
                                <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                    <div class="ps-cart-item__thumbnail"><a href="product-detail"></a><img src="images/cart-preview/1.jpg" alt=""></div>
                                    <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="product-detail">Asus vivobook A412FA
                                    </a>
                                        <p style="color: white; font-weight: bold;" ><span>SL:<i>1</i></span><span>Giá:<i>4 000 000đ</i></span></p>
                                    </div>
                                </div>
                                <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                    <div class="ps-cart-item__thumbnail"><a href="product-detail"></a><img src="images/cart-preview/2.jpg" alt=""></div>
                                    <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="product-detail">Dell Inspiron 5584 I5 8265U</a>
                                        <p style="color: white; font-weight: bold;"><span>SL:<i>1</i></span><span>Giá:<i>2 000 000đ</i></span></p>
                                    </div>
                                </div>
                                <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                    <div class="ps-cart-item__thumbnail"><a href="product-detail"></a><img src="images/cart-preview/3.jpg" alt=""></div>
                                    <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="product-detail">Dell Vostro 3590 I7 10510U</a>
                                        <p style="color: white; font-weight: bold;"><span>SL:<i>1</i></span><span>Giá:<i>3 000 000đ</i></span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="ps-cart__total">
                                <p style="color: white; font-weight: bold;">Tổng SL:<span>3</span></p>
                                <p style="color: white; font-weight: bold;">Tổng tiền:<span>9 000 000đ</span></p>
                            </div>
                            <div class="ps-cart__footer"><a class="ps-btn" href="cart">Giỏ hàng<i class="ps-icon-arrow-left"></i></a></div>
                        </div>
                    </div>
                    <div class="menu-toggle"><span></span></div>
                </div>
            </div>
        </nav>
    </div>
</header>
<!-- JS Library-->
<script type="text/javascript" src="plugins/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
<script type="text/javascript" src="plugins/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="plugins/gmap3.min.js"></script>
<script type="text/javascript" src="plugins/imagesloaded.pkgd.js"></script>
<script type="text/javascript" src="plugins/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="plugins/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="plugins/slick/slick/slick.min.js"></script>
<script type="text/javascript" src="plugins/elevatezoom/jquery.elevatezoom.js"></script>
<script type="text/javascript" src="plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="plugins/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script>
<script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<!-- Custom scripts-->
<script src="./login/animsition.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/mainlogin.js"></script>
<script type="text/javascript" src="./register/register.js"></script>
</body>

</html>