<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- Title Page-->
    <title>Trang Thống Kê</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
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
                            <i class="fas fa-home"></i>Nhà cung cấp</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_NSX.html"><i class="fas fa-list-ul"></i>Danh mục nhà cung cấp</a>
                            </li>
                            <li>
                                <a href="Add_Company.html"><i class="fas fa-plus-circle"></i>Thêm nhà cung cấp</a>
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
                            <i class="fas fa-calendar-alt"></i>Quản lí ảnh</a>
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
                            <i class="fas fa-home"></i>Nhà cung cấp</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_NSX.html"><i class="fas fa-list-ul"></i>Danh mục nhà cung cấp</a>
                            </li>
                            <li>
                                <a href="Add_Company.html"><i class="fas fa-plus-circle"></i>Thêm nhà cung cấp</a>
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
                            <i class="fas fa-newspaper"></i>Quản lí ảnh</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="QL_banner.html"><i class="fas fa-list-ul"></i><span>Danh mục ảnh</span></a>
                            </li>
                            <li>
                                <a href="Add_banner.html"><i class="fas fa-plus-circle"></i>Thêm ảnh</a>
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
                        <div class="col-md-12">
                            <div class="overview-wrap">
                                <h2 class="title-1">Tổng quan</h2>

                            </div>
                        </div>
                    </div>
                    <div class="row m-t-25">
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c1">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-account-o"></i>
                                        </div>
                                        <div class="text">
                                            <h2>10368</h2>
                                            <span>Thành viên </span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart1"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c2">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </div>
                                        <div class="text">
                                            <h2>388,688</h2>
                                            <span>Đã bán</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c3">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <i class="zmdi zmdi-calendar-note"></i>
                                        </div>
                                        <div class="text">
                                            <h2>1,086</h2>
                                            <span>Tuần này</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart3"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="overview-item overview-item--c4">
                                <div class="overview__inner">
                                    <div class="overview-box clearfix">
                                        <div class="icon">
                                            <h2 style="color: white">VND</h2>
                                        </div>
                                        <div class="text">
                                            <h2>150,060,386 </h2>
                                            <span>Tổng tiền</span>
                                        </div>
                                    </div>
                                    <div class="overview-chart">
                                        <canvas id="widgetChart4"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="title-1 m-b-25">Top 10 sản phẩm có doanh số cao</h2>
                            <div class="table-responsive m-b-40 " style="overflow: auto; height: 500px">
                                <table class="table table-borderless table-striped table-earning">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Mã SP</th>
                                        <th>Tên SP</th>
                                        <th>Nhãn hàng</th>
                                        <th>Mô tả</th>
                                        <th>Ngày tạo</th>
                                        <th>Thời gian BH</th>
                                        <th>Trạng thái</th>
                                        <th>Giá</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="tr-shadow">
                                        <td>01</td>
                                        <td>ASUS01</td>
                                        <td class="desc">Laptop ASUS A504 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM8GB, SSD 512GB</td>
                                        <td>27-09-2018 </td>
                                        <td>18 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>14.999.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>02</td>
                                        <td>ASUS02</td>
                                        <td class="desc">Laptop ASUS A603 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM16GB, SSD 512GB</td>
                                        <td>15-08-2020 </td>
                                        <td>24 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>24.500.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>03</td>
                                        <td>DELL01</td>
                                        <td class="desc">Laptop DELL A623 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM20GB, HDD 1TB</td>
                                        <td>12-08-2017</td>
                                        <td>12 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>8.950.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>04</td>
                                        <td>HP0001</td>
                                        <td class="desc">Laptop HP S12A4 i3</td>
                                        <td>HP</td>
                                        <td>CPU core i3, RAM4GB, HDD 1TB</td>
                                        <td>18-09-2019</td>
                                        <td>12 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>8.300.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>05</td>
                                        <td>ASUS05</td>
                                        <td class="desc">Laptop ASUS A456 C12 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM16GB, SSD 512GB</td>
                                        <td>05-02-2018</td>
                                        <td>12 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>17.000.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>06</td>
                                        <td>DELL003</td>
                                        <td class="desc">Laptop DELL A7891 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM8GB, SSD 512GB</td>
                                        <td>16-06-2019</td>
                                        <td>12 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>10.999.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>07</td>
                                        <td>DELL009</td>
                                        <td class="desc">Laptop DELL A785 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM8GB, HDD 1TB</td>
                                        <td>10-10-2020</td>
                                        <td>12 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>6.700.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>08</td>
                                        <td>ACER022</td>
                                        <td class="desc">Laptop ACER A704 i5</td>
                                        <td>ACER</td>
                                        <td>CPU core i5, RAM8GB, SSD 512GB</td>
                                        <td>18-02-2017</td>
                                        <td>24 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>5.600.000</td>

                                    </tr>

                                    <tr class="tr-shadow">
                                        <td>09</td>
                                        <td>ASUS0111</td>
                                        <td class="desc">Laptop ASUS A756 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i5, RAM8GB, SSD 512GB</td>
                                        <td>13-02-2020</td>
                                        <td>12 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>11.999.000</td>

                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>10</td>
                                        <td>DELL00a5</td>
                                        <td class="desc">Laptop DELL a002 i5</td>
                                        <td>ASUS</td>
                                        <td>CPU core i7, RAM 8GB, SSD 512GB</td>
                                        <td>18-02-2020</td>
                                        <td>18 tháng</td>
                                        <td>
                                            <span class="status--process">Còn hàng</span>
                                        </td>
                                        <td>18.999.000</td>

                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE-->
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
        <!-- END MAIN CONTENT-->
        <!-- END PAGE CONTAINER-->
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
