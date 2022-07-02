
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <!-- Title Page-->
    <title>Xem Sản Phẩm</title>

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
                    <a class="logo" href="index.html">
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
                        <a class="js-arrow" href="index.html">
                            <i class="fas fa-tachometer-alt"></i>Thống kê</a>

                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_SanPham.html"><i class="fas fa-list-ul"></i>Danh mục sản phẩm</a>
                            </li>

                            <li>
                                <a href="Add_SP.html"><i class="fas fa-plus-circle"></i>Thêm sản phẩm</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm khuyến mãi</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">

                            <li>
                                <a href="QL_KM.html"><i class="fas fa-list-ul"></i>Danh mục khuyến mãi</a>
                            </li>
                            <li>
                                <a href="Add_KM.html"><i class="fas fa-plus-circle"></i>Thêm khuyến mãi</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="far fa-copy"></i>Đơn hàng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_DonHang.html"><i class="fas fa-list-ul"></i>Danh mục đơn hàng</a>
                            </li>
                            <li>
                                <a href="Add_DH.html"><i class="fas fa-plus-circle"></i>Thêm đơn hàng</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-home"></i>Nhà sản xuất</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_NSX.html"><i class="fas fa-list-ul"></i>Danh mục nhà sản xuất</a>
                            </li>
                            <li>
                                <a href="Add_Company.html"><i class="fas fa-plus-circle"></i>Thêm nhà sản xuất</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-user"></i>Người dùng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_User.html"><i class="fas fa-list-ul"></i><span>Danh mục người dùng</span></a>
                            </li>
                            <li>
                                <a href="Add_User.html"><i class="fas fa-plus-circle"></i>Thêm admin</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="QL_banner.html">
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
                        <a class="js-arrow" href="index.html">
                            <i class="fas fa-tachometer-alt"></i>Thống kê</a>

                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_SanPham.html"><i class="fas fa-list-ul"></i>Danh mục sản phẩm</a>
                            </li>

                            <li>
                                <a href="Add_SP.html"><i class="fas fa-plus-circle"></i>Thêm sản phẩm</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tags"></i>Sản phẩm khuyến mãi</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">

                            <li>
                                <a href="QL_KM.html"><i class="fas fa-list-ul"></i>Danh mục khuyến mãi</a>
                            </li>
                            <li>
                                <a href="Add_KM.html"><i class="fas fa-plus-circle"></i>Thêm khuyến mãi</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="far fa-copy"></i>Đơn hàng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_DonHang.html"><i class="fas fa-list-ul"></i>Danh mục đơn hàng</a>
                            </li>
                            <li>
                                <a href="SuaDH.html"><i class="fas fa-edit"></i>Sửa đơn hàng</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-home"></i>Nhà sản xuất</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_NSX.html"><i class="fas fa-list-ul"></i>Danh mục nhà sản xuất</a>
                            </li>
                            <li>
                                <a href="Add_Company.html"><i class="fas fa-plus-circle"></i>Thêm nhà sản xuất</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-user"></i>Người dùng</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_User.html"><i class="fas fa-list-ul"></i><span>Danh mục người dùng</span></a>
                            </li>
                            <li>
                                <a href="Add_User.html"><i class="fas fa-plus-circle"></i>Thêm admin</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-newspaper"></i>Quản lí banner</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_banner.html"><i class="fas fa-list-ul"></i><span>Danh mục banner</span></a>
                            </li>
                            <li>
                                <a href="Add_banner.html"><i class="fas fa-plus-circle"></i>Thêm banner</a>
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
                                <div class="card-header" style="text-align: center">
                                    <strong style="font-size: 25PX">XEM THÔNG TIN SẢN PHẨM</strong>
                                </div>
                                <div class="card-body card-block">
                                    <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div>
                                            <h4>1) Thông tin sản phẩm:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label  class=" form-control-label">Mã SP:</label>
                                            </div>
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">ASUS01</label>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Tên SP:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label  class=" form-control-label">Laptop ASUS A504 i5</label>

                                            </div>
                                        </div>
                                        <div class="row form-group ">

                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Giá:</label>
                                                </div>
                                                <div class="col col-md-9">
                                                    <label class=" form-control-label">14.999.000</label>

                                                </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Nhãn hiệu:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label class=" form-control-label">ASUS</label>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label  class=" form-control-label">Ngày nhập:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label  class=" form-control-label">27-08-2019</label>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label  class=" form-control-label">Thời gian bảo
                                                    hành:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label   class=" form-control-label">18 tháng</label>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label  class=" form-control-label">Mô tả:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label   class=" form-control-label">CPU core i5, RAM 8GB, SSD 512GB</label>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label   class=" form-control-label">Tình trạng:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label   class=" form-control-label">Còn hàng</label>
                                            </div>
                                        </div>
                                        <div>
                                            <h4> 2) Cấu hình sản phẩm:</h4>
                                            <br/>
                                        </div>

                                        <!--  CPU -->

                                        <div>
                                            <h4> CPU:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Công nghệ:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Intel Core i3 Coffee Lake</label>


                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Loại:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">8145U</label>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Tốc độ:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">2.10 GHz</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Tốc độ tối đa:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">Turbo Boost 3.9 GHz</label>

                                                </div>
                                            </div>
                                        </div>


                                        <!--  Bộ nhớ -->
                                        <hr/>
                                        <div>
                                            <h4> Bộ nhớ:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Dung lượng RAM:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">8 GB</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Hỗ trợ RAM tối đa:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">16 GB</label>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Loại:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">DDR4 (On board 4GB +1 khe 4GB)</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Tốc độ bus:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">2133 MHz</label>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Ổ cứng:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">SSD 256GB NVMe PCIe</label>

                                                </div>
                                            </div>
                                        </div>

                                        <!--  Màn hình -->
                                        <hr/>
                                        <div>
                                            <h4> Màn hình:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Kích thước:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">14 inch</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Độ phân giải:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Full HD (1920 x 1080)</label>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Công nghệ:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Tấm nền TN;<br/> 60Hz; <br/>LED Backlit</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Cảm ứng:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">Có</label>

                                                </div>
                                            </div>
                                        </div>
                                        <!--  Card đồ họa -->
                                        <hr/>
                                        <div>
                                            <h4> Đồ họa, âm thanh:</h4>
                                            <br/>
                                        </div>

                                        <div class="row form-group">
                                            <div class="row col-lg-4">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Tên:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Intel® UHD Graphics 620</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-4">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Loại:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Card đồ họa tích hợp</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-4">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">CN âm thanh:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Dolby Audio</label>

                                                </div>
                                            </div>
                                        </div>

                                        <!--  Cổng kết nối & tính năng mở rộng: -->
                                        <hr/>
                                        <div>
                                            <h4> Cổng kết nối & tính năng mở rộng:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Cổng giao tiếp:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">2 x USB 3.1; <br/>HDMI;<br/> USB Type-C</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Kết nối không dây:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Bluetooth v5.0, Wi-Fi 802.11 a/b/g/n/ac</label>
                                                     </div>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Khe đọc thẻ nhớ:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">SD</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Ổ đĩa quang:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">Không</label>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Webcam:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">HD webcam</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Tính năng khác:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Bảo mật vân tay</label>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Đèn bàn phím:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">Có</label>

                                                </div>
                                            </div>

                                        </div>
                                        <!--  Pin & Adapter sạc -->
                                        <hr/>
                                        <div>
                                            <h4> Pin & Adapter sạc:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Loại:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">PIN liền</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Thông tin PIN:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">Li-Ion 4 cell</label>

                                                </div>
                                            </div>
                                        </div>

                                        <!--  Hệ điều hành -->
                                        <hr/>
                                        <div>
                                            <h4> Hệ điều hành:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Tên:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">Windows 10 Home SL</label>

                                                </div>
                                            </div>

                                        </div>

                                        <!--  Kích thước & trọng lượng -->
                                        <hr/>
                                        <div>
                                            <h4> Kích thước & trọng lượng:</h4>
                                            <br/>
                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-12">
                                                <div class="col col-md-2" style="margin-right: 30px">
                                                    <label  class=" form-control-label">Kích thước:</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <label  class=" form-control-label">Dài 328 mm - Rộng 229 mm - Dày 17.9 mm</label>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="row form-group">
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label class=" form-control-label">Trọng lượng:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label class=" form-control-label">1.6 kg</label>

                                                </div>
                                            </div>
                                            <div class="row col-lg-6">
                                                <div class="col col-md-5">
                                                    <label  class=" form-control-label">Chất liệu:</label>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <label  class=" form-control-label">Vỏ nhựa</label>

                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <h4> 3) Hình ảnh sản phẩm:</h4>
                                            <br/>
                                        </div>


                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Chọn ảnh chính:</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label  class=" form-control-label">ASUS01.png</label>

                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">Chọn ảnh phụ (chọn 5 ảnh):</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <label class=" form-control-label">ASUS02.png; ASUS03.png; ASUS04.png; ASUS05.png; ASUS06.png</label>

                                            </div>
                                        </div>
                                    </form>
                                </div>

                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2022 LaptopNLU. Thiết kế bởi <a href="#">Group chuyên đề web</a>.</p>
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

