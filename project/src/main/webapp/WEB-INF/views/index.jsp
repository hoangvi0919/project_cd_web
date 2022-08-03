<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <title>LaptopNLU-Homepage</title>
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900"
          rel="stylesheet">
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugins/ps-icon/style.css">
    <!-- CSS Library-->
    <link rel="stylesheet" type="text/css" href="css/index.css">
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
    <style type="text/css">
        .rev_slider_wrapper,
        .rev_slider,
        .tp-fullwidth-forcer,
        .rev_slider .tp-bgimg.defaultimg {
            max-height: 300px !important;
        }

        .ps-product__price {
            color: #c1000c;
        }
    </style>
</head>
<body class="ps-loading">
<div class="header--sidebar"></div>
<header class="header">
    <div class="header__top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
                    <p>6 QL1A, Khu phố 1, Dĩ An, Bình Dương- Hotline: 0385190234 </p>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                    <div class="header__actions"><a href="register">Đăng ký</a>
                        <div class="header__actions"><a href="log-in">Đăng nhập</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navigation">
            <div class="container-fluid">
                <div class="navigation__column left">
                    <div class="header__logo"><a class="ps-logo" href="index"><img src="images/logo1.png" alt=""></a>
                    </div>
                </div>
                <div class="navigation__column center">
                    <ul class="main-menu menu">
                        <li class="menu-item">
                            <i class="fas fa-home"></i>
                            <a href="index">TRANG CHỦ</a>
                        </li>
                        <li class="menu-item"><a href="about">GIỚI THIỆU</a></li>

                        <li class="menu-item menu-item-has-children dropdown"><a href="product-detail">SẢN PHẨM</a>
                            <ul class="sub-menu">
                                <li class="menu-item"><a>Acer</a></li>
                                <li class="menu-item"><a>Asus</a></li>
                                <li class="menu-item"><a>Lenovo</a></li>
                                <li class="menu-item"><a>Dell</a></li>
                                <li class="menu-item"><a>HP</a></li>
                                <li class="menu-item"><a>Macbook</a></li>
                            </ul>
                        </li>
                        <li class="menu-item"><a href="contact-us">Liên Hệ</a></li>
                    </ul>
                </div>
                <div class="navigation__column right">
                    <form class="ps-search--header" action="do_action" method="post">
                        <input class="form-control" type="text" placeholder="Tìm kiếm sản phẩm...">
                        <button><i class="ps-icon-search"></i></button>
                    </form>
                    <div class="ps-cart"><a class="ps-cart__toggle" href="#"><i class="ps-icon-shopping-cart"></i></a>
                        <div class="ps-cart__listing">
                            <div class="ps-cart__content">
                                <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                    <div class="ps-cart-item__thumbnail"><a href="product-detail"></a><img
                                            src="images/cart-preview/1.jpg" alt=""></div>
                                    <div class="ps-cart-item__content"><a class="ps-cart-item__title"
                                                                          href="product-detail">Asus vivobook A412FA
                                    </a>
                                        <p style="color: white; font-weight: bold;">
                                            <span>SL:<i>1</i></span><span>Giá:<i>4 000 000đ</i></span></p>
                                    </div>
                                </div>
                                <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                    <div class="ps-cart-item__thumbnail"><a href="product-detail"></a><img
                                            src="images/cart-preview/2.jpg" alt=""></div>
                                    <div class="ps-cart-item__content"><a class="ps-cart-item__title"
                                                                          href="product-detail">Dell Inspiron 5584 I5
                                        8265U</a>
                                        <p style="color: white; font-weight: bold;">
                                            <span>SL:<i>1</i></span><span>Giá:<i>2 000 000đ</i></span></p>
                                    </div>
                                </div>
                                <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                    <div class="ps-cart-item__thumbnail"><a href="product-detail"></a><img
                                            src="images/cart-preview/3.jpg" alt=""></div>
                                    <div class="ps-cart-item__content"><a class="ps-cart-item__title"
                                                                          href="product-detail">Dell Vostro 3590 I7
                                        10510U</a>
                                        <p style="color: white; font-weight: bold;">
                                            <span>SL:<i>1</i></span><span>Giá:<i>3 000 000đ</i></span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="ps-cart__total">
                                <p style="color: white; font-weight: bold;">Tổng SL:<span>3</span></p>
                                <p style="color: white; font-weight: bold;">Tổng tiền:<span>9 000 000đ</span></p>
                            </div>
                            <div class="ps-cart__footer"><a class="ps-btn" href="cart">Thanh toán ngay<i
                                    class="ps-icon-arrow-left"></i></a></div>
                        </div>
                    </div>
                    <div class="menu-toggle"><span></span></div>
                </div>
            </div>
        </nav>
    </div>
</header>
<div class="header-services">
    <div class="ps-services owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="7000" data-owl-gap="0"
         data-owl-nav="true" data-owl-dots="false" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1"
         data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
        <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Giao hàng miễn phí</strong>: Nhận giao hàng
            miễn phí với mọi đơn hàng tại cửa hàng Laptop NLU</p>
        <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Giao hàng miễn phí</strong>: Nhận giao hàng
            miễn phí với mọi đơn hàng tại cửa hàng Laptop NLU</p>
        <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Giao hàng miễn phí</strong>: Nhận giao hàng
            miễn phí với mọi đơn hàng tại cửa hàng Laptop NLU</p>
    </div>
</div>
<main class="ps-main">
    <div class="ps-banner" style="width: 1200px; margin: auto;">
        <div class="rev_slider fullscreenbanner" id="home-banner">
            <ul>
                <li class="ps-banner" data-index="rs-2972" data-transition="random" data-slotamount="default"
                    data-hideafterloop="0" data-hideslideonmobile="off" data-rotate="0"><img class="rev-slidebg"
                                                                                             src="images/slider/slider01.png"
                                                                                             alt=""
                                                                                             data-bgposition="center center"
                                                                                             data-bgfit="cover"
                                                                                             data-bgrepeat="no-repeat"
                                                                                             data-bgparallax="5"
                                                                                             data-no-retina>

                </li>
                <li class="ps-banner ps-banner--white" data-index="rs-100" data-transition="random"
                    data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-rotate="0"><img
                        class="rev-slidebg" src="images/slider/slider02.png" alt="" data-bgposition="center center"
                        data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" data-no-retina>

                </li>
            </ul>
        </div>
    </div>
    <div class="ps-section--features-product ps-section masonry-root pt-100 pb-100">
        <div class="ps-container">
            <div class="ps-section__header mb-50">
                <h3 class="ps-section__title" data-mask="NỔI BẬT NHẤT"> SẢN PHẨM NỔI BẬT</h3>
            </div>
            <!-- chứa sp-->
            <div class="ps-section__content pb-50">
                <div class="masonry-wrapper" data-col-md="4" data-col-sm="2" data-col-xs="1" data-gap="30"
                     data-radio="100%">
                    <div class="ps-masonry">
                        <div class="grid-sizer"></div>
                        <%--                        Start single product--%>
                        <c:forEach var="p" items="${listNoiBat}">

                            <div class="grid-item kids">
                                <div class="grid-item__content-wrapper">
                                    <div class="ps-shoe mb-30">
                                        <div class="ps-shoe__thumbnail">
                                            <c:set var = "isNew1"  value = "${fn:contains(p.trangThai, 'New')}"/>
                                            <c:if test="${isNew1}">
                                                <div class="ps-badge"><span>Mới</span></div>
                                            </c:if>

                                            <c:if test="${p.giamGia > 0}">
                                                <c:choose>
                                                    <c:when test="${isNew1}">
                                                        <div class="ps-badge ps-badge--sale ps-badge--2nd">
                                                <span>-<fmt:formatNumber type="percent" maxIntegerDigits="2"
                                                                         value="${p.giamGia}"/></span></div>

                                                    </c:when>

                                                    <c:otherwise>
                                                        <div class="ps-badge ps-badge--sale">
                                                        <span>
                                                            -<fmt:formatNumber type="percent" maxIntegerDigits="2"
                                                                               value="${p.giamGia}"/>
                                                        </span>
                                                        </div>
                                                    </c:otherwise>

                                                </c:choose>


                                            </c:if>


                                            <img src="${p.mainImg}" alt="">
                                            <a class="ps-shoe__overlay" href="detail?idName=${p.idName}"></a>
                                        </div>
                                        <br/><br/><br/>
                                        <div class="ps-shoe__content">
                                            <div class="ps-shoe__variants">
                                                <div class="ps-shoe__variant normal">
                                                    <img src="${p.images.get(0).getUrl()}">
                                                    <img src="${p.images.get(1).getUrl()}">
                                                    <img src="${p.images.get(2).getUrl()}">
                                                    <img src="${p.images.get(3).getUrl()}">
                                                    <img src="${p.images.get(4).getUrl()}">
                                                </div>
                                                <select class="ps-rating ps-shoe__rating">
                                                    <option value="1" ${p.soSaoDanhGia == 1 ? "selected": ""}>1</option>
                                                    <option value="2" ${p.soSaoDanhGia == 2 ? "selected": ""}>2</option>
                                                    <option value="3" ${p.soSaoDanhGia == 3 ? "selected": ""}>3</option>
                                                    <option value="4" ${p.soSaoDanhGia == 4 ? "selected": ""}>4</option>
                                                    <option value="5" ${p.soSaoDanhGia == 5 ? "selected": ""}>5</option>
                                                </select>
                                            </div>
                                            <div class="ps-shoe__detail">
                                                <a class="ps-shoe__name"
                                                   href="detail?id=${p.idName}">${p.name}<br>${p.idName}</a>
                                                <p>
                                                    RAM: ${p.ram}GB - ${p.ocung}<br/>
                                                    <fmt:setLocale value="vi_VN"/>
                                                    <strong class="price"><fmt:formatNumber value="${p.giaBan}"
                                                                                            type="currency"
                                                                                            maxFractionDigits="0"/></strong>
                                                    <c:if test="${p.giamGia != 0}">
                                                        <del><fmt:formatNumber value="${p.gia}" type="currency"
                                                                               maxFractionDigits="0"/></del>
                                                    </c:if>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </c:forEach>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-section--offer">
        <div class="ps-column"><a class="ps-offer" href="product-detail"><img src="images/banner/banner1.png"
                                                                              alt=""></a></div>
        <div class="ps-column"><a class="ps-offer" href="product-detail"><img src="images/banner/banner2.png"
                                                                              alt=""></a></div>
    </div>
    <div class="ps-section--sale-off ps-section pt-80 pb-40">
        <div class="ps-container">
            <div class="ps-section__header mb-50">
                <h3 class="ps-section__title" data-mask="Sale off">- Hot Deal Today</h3>
            </div>
            <div class="ps-section__content">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                        <div class="ps-hot-deal">
                            <h3>Nike DUNK Max 95 OG</h3>
                            <p class="ps-hot-deal__price">Only: <span>£155</span></p>
                            <ul class="ps-countdown" data-time="December 13, 2017 15:37:25">
                                <li><span class="hours"></span>
                                    <p>Hours</p></li>
                                <li class="divider">:</li>
                                <li><span class="minutes"></span>
                                    <p>minutes</p></li>
                                <li class="divider">:</li>
                                <li><span class="seconds"></span>
                                    <p>Seconds</p></li>
                            </ul>
                            <a class="ps-btn" href="#">Order Today<i class="ps-icon-next"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                        <div class="ps-hotspot"><a class="point first active" href="javascript:;"><i
                                class="fa fa-plus"></i>
                            <div class="ps-hotspot__content">
                                <p class="heading">JUMP TO HEADER</p>
                                <p>Dynamic Fit Collar en la zona del tobillo que une la parte inferior de la pierna y el
                                    pie sin reducir la libertad de movimiento.</p>
                            </div>
                        </a><a class="point second" href="javascript:;"><i class="fa fa-plus"></i>
                            <div class="ps-hotspot__content">
                                <p class="heading">JUMP TO HEADER</p>
                                <p>Dynamic Fit Collar en la zona del tobillo que une la parte inferior de la pierna y el
                                    pie sin reducir la libertad de movimiento.</p>
                            </div>
                        </a><a class="point third" href="javascript:;"><i class="fa fa-plus"></i>
                            <div class="ps-hotspot__content">
                                <p class="heading">JUMP TO HEADER</p>
                                <p>Dynamic Fit Collar en la zona del tobillo que une la parte inferior de la pierna y el
                                    pie sin reducir la libertad de movimiento.</p>
                            </div>
                        </a><img src="images/hot-deal.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-section ps-section--top-sales ps-owl-root pt-80 pb-80">
        <div class="ps-container">
            <div class="ps-section__header mb-50">
                <div class="row">
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                        <h3 class="ps-section__title" data-mask="BÁN CHẠY NHẤT">BÁN CHẠY NHẤT</h3>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                        <div class="ps-owl-actions"><a class="ps-prev" href="#"><i class="ps-icon-arrow-right"></i>TRƯỚC</a><a
                                class="ps-next" href="#">SAU<i class="ps-icon-arrow-left"></i></a></div>
                    </div>
                </div>
            </div>
            <div class="ps-section__content">
                <div class="ps-owl--colection owl-slider" data-owl-auto="true" data-owl-loop="true"
                     data-owl-speed="5000" data-owl-gap="30" data-owl-nav="false" data-owl-dots="false"
                     data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3"
                     data-owl-item-lg="4" data-owl-duration="1000" data-owl-mousedrag="on">
<%--                    Start single product--%>
<%--                    <c:forEach var="p" items="listBanChay">--%>

<%--                        <div class="ps-shoes--carousel">--%>
<%--                            <div class="ps-shoe">--%>
<%--                                <div class="ps-shoe__thumbnail">--%>
<%--                                    <c:set var = "isNew2"  value = "${fn:contains(p.trangThai, 'New')}"/>--%>
<%--                                    <c:if test="${isNew2}">--%>
<%--                                        <div class="ps-badge"><span>Mới</span></div>--%>
<%--                                    </c:if>--%>

<%--                                    <c:if test="${p.giamGia > 0}">--%>
<%--                                        <c:choose>--%>
<%--                                            <c:when test="${isNew2}">--%>
<%--                                                <div class="ps-badge ps-badge--sale ps-badge--2nd">--%>
<%--                                                <span>-<fmt:formatNumber type="percent" maxIntegerDigits="2"--%>
<%--                                                                         value="${p.giamGia}"/></span></div>--%>

<%--                                            </c:when>--%>

<%--                                            <c:otherwise>--%>
<%--                                                <div class="ps-badge ps-badge--sale">--%>
<%--                                                        <span>--%>
<%--                                                            -<fmt:formatNumber type="percent" maxIntegerDigits="2"--%>
<%--                                                                               value="${p.giamGia}"/>--%>
<%--                                                        </span>--%>
<%--                                                </div>--%>
<%--                                            </c:otherwise>--%>

<%--                                        </c:choose>--%>

<%--                                    </c:if>--%>

<%--                                    <img src="${p.mainImg}" alt=""><a class="ps-shoe__overlay" href="detail?idName=${p.idName}"></a>--%>
<%--                                </div>--%>
<%--                                <br/><br/>--%>
<%--                                <div class="ps-shoe__content">--%>
<%--                                    <div class="ps-shoe__variants">--%>
<%--                                        <div class="ps-shoe__variant normal">--%>
<%--                                            <img src="${p.images.get(0).getUrl()}">--%>
<%--                                            <img src="${p.images.get(1).getUrl()}">--%>
<%--                                            <img src="${p.images.get(2).getUrl()}">--%>
<%--                                            <img src="${p.images.get(3).getUrl()}">--%>
<%--                                            <img src="${p.images.get(4).getUrl()}">--%>
<%--                                        </div>--%>
<%--                                        <select class="ps-rating ps-shoe__rating">--%>
<%--                                            <option value="1" ${p.soSaoDanhGia == 1 ? "selected": ""}>1</option>--%>
<%--                                            <option value="2" ${p.soSaoDanhGia == 2 ? "selected": ""}>2</option>--%>
<%--                                            <option value="3" ${p.soSaoDanhGia == 3 ? "selected": ""}>3</option>--%>
<%--                                            <option value="4" ${p.soSaoDanhGia == 4 ? "selected": ""}>4</option>--%>
<%--                                            <option value="5" ${p.soSaoDanhGia == 5 ? "selected": ""}>5</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-shoe__detail"><a class="ps-shoe__name" href="detail?idName=${p.idName}">--%>
<%--                                            ${p.name}<br>${p.idName}--%>
<%--                                    </a>--%>
<%--                                        <p>--%>
<%--                                            RAM: ${p.ram}GB - ${p.ocung}<br/>--%>
<%--                                            <fmt:setLocale value="vi_VN"/>--%>
<%--                                            <strong class="price"><fmt:formatNumber value="${p.giaBan}"--%>
<%--                                                                                    type="currency"--%>
<%--                                                                                    maxFractionDigits="0"/></strong>--%>
<%--                                            <c:if test="${p.giamGia != 0}">--%>
<%--                                                <del><fmt:formatNumber value="${p.gia}" type="currency"--%>
<%--                                                                       maxFractionDigits="0"/></del>--%>
<%--                                            </c:if>--%>
<%--                                        </p>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </c:forEach>--%>

    <div class="ps-shoes--carousel">
        <div class="ps-shoe">
            <div class="ps-shoe__thumbnail">
                <div class="ps-badge"><span>Mới</span></div><img src="images/shoe/BanChayNhat/asus/1.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail"></a>
            </div>
            <br/><br/>
            <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/BanChayNhat/asus/1.jpg" alt=""><img src="images/shoe/BanChayNhat/asus/2.jpg" alt=""><img src="images/shoe/BanChayNhat/asus/3.jpg" alt=""><img src="images/shoe/BanChayNhat/asus/5.jpg" alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="2">5</option>
                    </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detail">Laptop Asus VivoBook X509MA N5030</a>
                    <p>RAM:4GB - HDD:1000GB<br/><strong class="ps-product__price">11 090 000đ</strong></p>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-shoes--carousel">
        <div class="ps-shoe">
            <div class="ps-shoe__thumbnail">
                <div class="ps-badge"><span>Mới</span></div>
                <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div><img src="images/shoe/BanChayNhat/hp/1.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail"></a>
            </div>
            <br/><br>
            <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/BanChayNhat/hp/1.jpg" alt=""><img src="images/shoe/BanChayNhat/hp/2.jpg" alt=""><img src="images/shoe/BanChayNhat/hp/4.jpg" alt=""><img src="images/shoe/BanChayNhat/hp/5.jpg" alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="2">5</option>
                    </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detail">Laptop HP 348 G7 i3 8130U</a>
                    <p >
                        RAM:4G-SSD:256GB<br/><del> 12 890 000 đ</del><strong class="ps-product__price"> 8 990 000 đ </strong>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-shoes--carousel">
        <div class="ps-shoe">
            <div class="ps-shoe__thumbnail"><img src="images/shoe/hp2/1.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail"></a>
            </div>
            <br/><br/>
            <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/hp2/2.jpg" alt=""><img src="images/shoe/hp2/3.jpg" alt=""><img src="images/shoe/hp2/4.jpg" alt=""><img src="images/shoe/hp2/5.jpg" alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="2">5</option>
                    </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">Laptop HP 348 G7 i5 10210U</a>
                    <p> RAM:8GB-SSD:512GB<br/><strong class="ps-product__price">15 170 000 đ</strong> </p>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-shoes--carousel">
        <div class="ps-shoe">
            <div class="ps-shoe__thumbnail"><img src="images/shoe/asus/1.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail"></a>
            </div>
            <br/><br/>
            <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/asus/2.jpg" alt=""><img src="images/shoe/asus/3.jpg" alt=""><img src="images/shoe/asus/4.jpg" alt=""><img src="images/shoe/asus/5.jpg" alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="2">5</option>
                    </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#">Laptop Asus VivoBook A412FA i3 10110U</a>
                    <p> RAM:4GB-SSD:512GB<br/><strong class="ps-product__price">12 430 000đ</strong> </p>
                </div>
            </div>
        </div>
    </div>

    <div class="ps-shoes--carousel">
        <div class="ps-shoe">
            <div class="ps-shoe__thumbnail">
                <div class="ps-badge"><span>Mới</span></div><img src="images/shoe/5.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail"></a>
            </div>
            <br/><br/>
            <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg" alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="2">5</option>
                    </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detail">Laptop ASUS VIVOBOOK A412FA</a>
                    <p>RAM:8GB - SSD:256GB<br/><del> 16 000 000 đ </del><strong class="ps-product__price">14 999 000đ  </strong>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-shoes--carousel">
        <div class="ps-shoe">
            <div class="ps-shoe__thumbnail"><img src="images/shoe/acer/1.jpg" alt=""><a class="ps-shoe__overlay" href="product-detail"></a>
            </div>
            <br/>
            <br/>
            <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/acer2/1.jpg" alt=""><img src="images/shoe/acer/2.jpg" alt=""><img src="images/shoe/acer/3.jpg" alt=""><img src="images/shoe/acer/4.jpg" alt=""><img src="images/shoe/acer/5.jpg" alt=""> alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="2">5</option>
                    </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detail">Laptop Acer Aspire 3 A315 54K 37B0 i3 8130U</a>
                    <p>RAM:4GB - SSD:256GB<br/>
                        <strong class="ps-product__price">9 990 000 đ</strong>
                    </p>
                </div>
            </div>
        </div>
    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="ps-home-testimonial bg--parallax pb-80"
         style="border-top: 3px #eeeeee solid;border-bottom:  3px #eeeeee solid; ">
        <div class="container">
            <div class="owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0"
                 data-owl-nav="false" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1"
                 data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on"
                 data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
                <div class="ps-testimonial">
                    <div class="ps-testimonial__thumbnail"><img src="images/user/thanhvien1.png" alt=""><i
                            class="fa fa-quote-left"></i></div>
                    <header>
                        <p>CEO</p>
                    </header>
                    <footer>
                        <p>“Chúng tôi rất hân hạnh được phục vụ quý khách hàng, quý bà con trong thời gian qua.
                            Đến với chúng tôi quý khách sẽ được trải nghiệm những sản phẩm tốt nhất, mới nhất, chất
                            lượng nhất.
                            Hãy tin tưởng và đặt niềm tin vào chúng tôi! “</p>
                    </footer>
                </div>
                <div class="ps-testimonial">
                    <div class="ps-testimonial__thumbnail"><img src="images/user/thanhvien2.png" alt=""><i
                            class="fa fa-quote-left"></i></div>
                    <header>
                        <p>THÀNH VIÊN</p>
                    </header>
                    <footer>
                        <p>“Với phương châm "Khách hàng là thượng đế". Chúng tôi luôn lấy sự thoải mái của khách hàng
                            làm niềm vui, niềm hạnh phúc của bản thân. Đến với chúng tôi, bạn sẽ được hỗ trợ bảo hành,
                            sửa chữa khi sản phẩm gặp vấn đề.“</p>
                    </footer>
                </div>
                <div class="ps-testimonial">
                    <div class="ps-testimonial__thumbnail"><img src="images/user/thanhvien3.png" alt=""><i
                            class="fa fa-quote-left"></i></div>
                    <header>

                        <p>THÀNH VIÊN</p>
                    </header>
                    <footer>
                        <p>“Hãy đến mua hàng ở cửa hàng chúng tôi ngay bây giờ. Chúng tôi luôn đem những ưu đãi tốt nhất
                            đến người tiêu dùng.“</p>
                    </footer>
                </div>
            </div>
        </div>
    </div>


    <!-- Footer -->
    <div class="ps-footer bg--cover">
        <div class="ps-footer__content">
            <div class="ps-container">
                <div class="row" style="margin: auto">
                    <aside class="col-lg-12 ">
                        <img src="images/logolap1.png" alt="" style="width: 1800px;height: 80px">
                    </aside>
                    <div class="col-lg-2 ">
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">

                        <aside class="ps-widget--footer ps-widget--info">
                            <header>
                                <h3 class="ps-widget__title">Địa chỉ:</h3>
                            </header>
                            <footer>
                                <p><strong>Số 996 QL1A, Khu Phố 1, Dĩ An, Bình Dương</strong></p>
                                <p>Email: <a href='mailto:support@store.com'>laptopnlu@gmail.com</a></p>
                                <p>Phone: 09999999999</p>
                                <p>Fax: 123456789</p>
                            </footer>
                        </aside>
                    </div>

                    <div class="col-lg-3 col-md-2 col-sm-4 col-xs-12 ">
                        <aside class="ps-widget--footer ps-widget--link">
                            <header>
                                <h3 class="ps-widget__title">LIÊN KẾT</h3>
                            </header>
                            <footer>
                                <ul class="ps-list--link">
                                    <li><a href="index">TRANG CHỦ</a></li>
                                    <li><a href="about">GIỚI THIỆU</a></li>
                                    <li><a href="product-listing">SẢN PHẨM</a></li>
                                    <li><a href="contact-us">LIÊN HỆ</a></li>
                                </ul>
                            </footer>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-md-2 col-sm-4 col-xs-12 ">
                        <aside class="ps-widget--footer">
                            <header>
                                <h3 class="ps-widget__title">KẾT NỐI VỚI CHÚNG TÔI</h3>
                            </header>
                            <footer>
                                <ul class="ps-list--line">
                                    <li><a href="#"><i class="fa fa-facebook"></i> Kết nối Facebook</a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i> Kết nối G+</a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i> Trao đổi Twitter</a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i> Kết nối Instagram</a></li>
                                </ul>
                            </footer>
                        </aside>
                    </div>
                    <aside class="col-lg-12 row thanhtoan">

                        <p class="col-lg-3" style="color: #3a3a3a">Các hình thức thanh toán hỗ trợ:</p>
                        <img class="col-lg-9" src="images/thanhtoan2.png" alt="" style="width: 1000px;height: 50px">
                    </aside>
                </div>
            </div>
        </div>
        <div class="ps-footer__copyright">
            <div class="ps-container">
                <div class="row">
                    <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12 ">
                        <p style="text-align: center">&copy; <a href="#">LAPTOPNLU</a>. Design by <a href="#"> Group
                            02-LTWEB</a></p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</main>
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
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script>
<script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript"
        src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<!-- Custom scripts-->
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
</body>
</html>
