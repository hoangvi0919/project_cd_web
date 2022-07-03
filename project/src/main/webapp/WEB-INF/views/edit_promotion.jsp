<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <!-- Title Page-->
    <title>Sửa Khuyến Mãi</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
<%--    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">--%>
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
<div class="page-wrapper">
    <!-- HEADER MOBILE-->
    <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar">
            <div class="container-fluid">
                <div class="header-mobile-inner">
                    <a class="logo" href="thongke_manage">
                        <img src="images/icon/logo.png" alt="CoolAdmin" />
                    </a>
                    <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                    </button>
                </div>
            </div>
        </div>
        <nav class="navbar-mobile">
            <div class="container-fluid">
                <ul class="list-unstyled navbar__list">
                    <li class="has-sub">
                        <a class="js-arrow" href="thongke_manage">
                            <i class="fas fa-tachometer-alt"></i>Thống kê</a>

                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="product_manage"><i class="fas fa-list-ul"></i>Danh mục sản phẩm</a>
                            </li>

                            <li>
                                <a href="add_product"><i class="fas fa-plus-circle"></i>Thêm sản phẩm</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm khuyến mãi</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">

                            <li>
                                <a href="promotion_manage"><i class="fas fa-list-ul"></i>Danh mục khuyến mãi</a>
                            </li>
                            <li>
                                <a href="add_promotion"><i class="fas fa-plus-circle"></i>Thêm khuyến mãi</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="far fa-copy"></i>Đơn hàng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="order_manage"><i class="fas fa-list-ul"></i>Danh mục đơn hàng</a>
                            </li>
                            <li>
                                <a href="add_order"><i class="fas fa-plus-circle"></i>Thêm đơn hàng</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-home"></i>Nhà sản xuất</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="supplier_manage"><i class="fas fa-list-ul"></i>Danh mục nhà sản xuất</a>
                            </li>
                            <li>
                                <a href="add_supplier"><i class="fas fa-plus-circle"></i>Thêm nhà sản xuất</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-user"></i>Người dùng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="user_manage"><i class="fas fa-list-ul"></i><span>Danh mục người dùng</span></a>
                            </li>
                            <li>
                                <a href="add_user"><i class="fas fa-plus-circle"></i>Thêm admin</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="banner_manage">
                            <i class="fas fa-calendar-alt"></i>Quản lí banner</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- END HEADER MOBILE-->
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
            <a href="#">
                <img src="images/icon/logo.png" alt="Cool Admin" />
            </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
            <nav class="navbar-sidebar">
                <ul class="list-unstyled navbar__list">
                    <li class="has-sub">
                        <a class="js-arrow" href="thongke_manage">
                            <i class="fas fa-tachometer-alt"></i>Thống kê</a>

                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="product_manage"><i class="fas fa-list-ul"></i>Danh mục sản phẩm</a>
                            </li>

                            <li>
                                <a href="add_product"><i class="fas fa-plus-circle"></i>Thêm sản phẩm</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm khuyến mãi</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">

                            <li>
                                <a href="promotion_manage"><i class="fas fa-list-ul"></i>Danh mục khuyến mãi</a>
                            </li>
                            <li>
                                <a href="add_promotion"><i class="fas fa-plus-circle"></i>Thêm khuyến mãi</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="far fa-copy"></i>Đơn hàng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="order_manage"><i class="fas fa-list-ul"></i>Danh mục đơn hàng</a>
                            </li>
                            <li>
                                <a href="edit_order"><i class="fas fa-edit"></i>Sửa đơn hàng</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-home"></i>Nhà sản xuất</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="supplier_manage"><i class="fas fa-list-ul"></i>Danh mục nhà sản xuất</a>
                            </li>
                            <li>
                                <a href="add_supplier"><i class="fas fa-plus-circle"></i>Thêm nhà sản xuất</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-user"></i>Người dùng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="user_manage"><i class="fas fa-list-ul"></i><span>Danh mục người dùng</span></a>
                            </li>
                            <li>
                                <a href="add_user"><i class="fas fa-plus-circle"></i>Thêm admin</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-newspaper"></i>Quản lí banner</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="banner_manage"><i class="fas fa-list-ul"></i><span>Danh mục banner</span></a>
                            </li>
                            <li>
                                <a href="add_banner"><i class="fas fa-plus-circle"></i>Thêm banner</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <!-- END MENU SIDEBAR-->


    <!-- PAGE CONTAINER-->
    <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <form class="form-header" action="" method="POST">
                            <input class="au-input au-input--xl" type="text" name="search" placeholder="Tìm kiếm..." />
                            <button class="au-btn--submit" type="submit">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                        <div class="header-button">

                            <div class="account-wrap">
                                <div class="account-item clearfix js-item-menu">
                                    <div class="image">
                                        <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                    </div>
                                    <div class="content">
                                        <a class="js-acc-btn" href="#">Ana Nguyễn</a>
                                    </div>
                                    <div class="account-dropdown js-dropdown">
                                        <div class="info clearfix">
                                            <div class="image">
                                                <a href="#">
                                                    <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h5 class="name">
                                                    <a href="#">Ana Nguyễn</a>
                                                </h5>
                                                <span class="email">ananguyen@gamil.com</span>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__body">
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-account"></i>Tài khoản</a>
                                            </div>
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-settings"></i>Cài đặt</a>
                                            </div>
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-money-box"></i>Hóa đơn</a>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__footer">
                                            <a href="#">
                                                <i class="zmdi zmdi-power"></i>Đăng xuất</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- HEADER DESKTOP-->


        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-lg-10" style="margin: auto">
                            <div class="card">
                                <div class="card-header">Sửa Thông Tin Khuyến mãi</div>
                                <div class="card-body">
                                    <div class="card-title">
                                        <h3 class="text-center title-2">Thông tin khuyến mãi</h3>
                                    </div>
                                    <hr>
                                    <form action="" method="post" novalidate="novalidate">
                                        <div class="form-group">
                                            <label for="cc-payment" class="control-label mb-1">Mã sản phẩm</label>
                                            <input id="cc-payment" name="cc-payment" value="ASUS01" type="text" class="form-control" placeholder="Nhập mã sản phẩm">
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="cc-name" class="control-label mb-1">Tên sản phẩm</label>
                                            <input id="cc-name" name="cc-name" value="Laptop ASUS A504 i5" type="text" class="form-control" placeholder="Nhập tên sản phẩm">
                                        </div>

                                        <div class="row">
                                            <div class="col-4">
                                                <div class="form-group">
                                                    <label for="cc-number" class="control-label mb-1">Giá gốc</label>
                                                    <input id="cc-number" name="cc-number" value="7.000.000" type="text" class="form-control" placeholder="Nhập giá gốc">
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="form-group">
                                                    <label for="cc-number1" class="control-label mb-1">Giảm %</label>
                                                    <input id="cc-number1" name="cc-number1" value="10" type="text" class="form-control" placeholder="Nhập %">
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="form-group">
                                                    <label for="cc-number2" class="control-label mb-1">Giá khuyến mãi</label>
                                                    <input id="cc-number2" name="cc-number2" value="6.300.000" type="text" class="form-control" placeholder="Nhập giá KM">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-date" class="control-label mb-1">Ngày bắt đầu</label>
                                            <input id="cc-date" name="cc-date" value="2019-09-19" type="date" class="form-control" placeholder="Nhập ngày BĐ">
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-date1" class="control-label mb-1">Ngày kết thúc</label>
                                            <input id="cc-date1" name="cc-date1" value="2019-09-23" type="date" class="form-control" placeholder="Nhập ngày KT">
                                        </div>
                                        <div style="flex: auto">
                                            <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                                <i class="fas fa-edit"></i>&nbsp;
                                                <span id="payment-button-amount">Lưu</span>

                                            </button>
                                            <button  type="submit" class="btn btn-lg btn-info btn-block" style="background-color: red">
                                                <i class="fas fa-times"></i>&nbsp;
                                                <span >Hủy</span>

                                            </button>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2022 LaptopNLU. Thiết kế bởi <a href="#">Group chuyên để web</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->

