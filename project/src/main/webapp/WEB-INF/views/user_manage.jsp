<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>QL User</title>
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
                                <i class="fas fa-tachometer-alt"></i>Điều khiển</a>
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
                                <i class="fas fa-home"></i>Nhà cung cấp</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="supplier_manage"><i class="fas fa-list-ul"></i>Danh mục nhà cung cấp</a>
                                </li>
                                <li>
                                    <a href="add_supplier"><i class="fas fa-plus-circle"></i>Thêm nhà cung cấp</a>
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
                            <a class="js-arrow" href="/thongke_manage">
                                <i class="fas fa-tachometer-alt"></i>Điều khiển</a>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tags"></i>Sản phẩm</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/product_manage"><i class="fas fa-list-ul"></i>Danh mục sản phẩm</a>
                                </li>
                                <li>
                                    <a href="/add_product"><i class="fas fa-plus-circle"></i>Thêm sản phẩm</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="far fa-copy"></i>Đơn hàng</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/order_manage"><i class="fas fa-list-ul"></i>Danh mục đơn hàng</a>
                                </li>
                                <li>
                                    <a href="/edit_order"><i class="fas fa-edit"></i>Sửa đơn hàng</a>
                                </li>
                            </ul>
                        </li>
                                                <li class="has-sub">
                            <a class="js-arrow" href="/userList">
                                <i class="fas fa-user"></i>Người dùng</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/user_manage"><i class="fas fa-list-ul"></i><span>Danh mục người dùng</span></a>
                                </li>
                                <li>
                                    <a href="/add_user"><i class="fas fa-plus-circle"></i>Thêm admin</a>
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
                            <form class="form-header" action="" method="">
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
                            <div class="col-lg-12" style="margin: auto">
                                <!-- USER DATA-->
                                <div class="user-data m-b-30">
                                    <h3 class="title-3 m-b-30">
                                        <i class="zmdi zmdi-account-calendar"></i>Thông tin tài khoản</h3>

                                    <div class="table-responsive table-data">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <td>
                                                        ID
                                                    </td>
                                                    <td>Tên tài khoản</td>
                                                    <td>Email</td>
                                                    <td>số điện thoại</td>
                                                    <td>Địa chỉ</td>
                                                    <td>Giới tính</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${userList}" var="u">

                                                <tr>
                                                    <td>${u.id}</td>
                                                    <td>${u.username}</td>
                                                    <td>${u.email}</td>
                                                    <td>${u.phone}</td>
                                                    <td>${u.address}</td>
                                                    <td>${u.gender}</td>

                                                   <td><a href="/editUser?id=${u.id}"><button style="background: #1d78cb;border: 5px; color: white; padding: 5px">Edit</button></a></td>
                                                    <td>
                                                        <form action="/deleteUser?id=${u.id}" method="post">
                                                            <input type="submit" value="Delete"  style="background: red ;border: 5px; color: white; padding: 5px;cursor: pointer;"/>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                                <!-- END USER DATA-->
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