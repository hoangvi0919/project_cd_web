<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <!-- Title Page-->
    <title>QL Nhà cung cấp</title>

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
    <style>

        .table-data2 thead {
            background-color: #333;

        }
        .table-data2.table thead th {

            color: white;
        }
        .table-data2 thead  th {
            background-color: #333;
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 2;
        }


    </style>
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
                            <i class="fas fa-home"></i>Nhà cung cấp</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="supplier_manage"><i class="fas fa-list-ul"></i>Danh mục Nhà cung cấp</a>
                            </li>
                            <li>
                                <a href="add_supplier"><i class="fas fa-plus-circle"></i>Thêm Nhà cung cấp</a>
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
                            <i class="fas fa-home"></i>Nhà cung cấp</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="supplier_manage"><i class="fas fa-list-ul"></i>Danh mục Nhà cung cấp</a>
                            </li>
                            <li>
                                <a href="add_supplier"><i class="fas fa-plus-circle"></i>Thêm Nhà cung cấp</a>
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
                            <i class="fas fa-newspaper"></i>Quản lí ảnh</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="banner_manage"><i class="fas fa-list-ul"></i><span>Danh mục ảnh</span></a>
                            </li>
                            <li>
                                <a href="add_banner"><i class="fas fa-plus-circle"></i>Thêm ảnh</a>
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
                            <!-- DATA TABLE -->
                            <h3 class="title-5 m-b-35">Thông tin Nhà cung cấp</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md">
                                        <select class="js-select2" name="property">
                                            <option selected="selected">Tất cả</option>
                                            <option value=""> DELL</option>
                                            <option value=""> LENOVO</option>
                                            <option value=""> ASUS</option>
                                            <option value=""> HP</option>
                                            <option value=""> ACER</option>
                                            <option value=""> APPLE</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <div class="rs-select2--light rs-select2--md">
                                       <input class="" placeholder="Nhập tên NCC" type="text" size="15px" style="padding: 7px 0px;border-radius: 5px">
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>Lọc
                                    </button>
                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <a href="add_supplier" style="color: white"><i class="zmdi zmdi-plus"></i>thêm</a>
                                    </button>
                                    <button class="au-btn au-btn-icon au-btn--red au-btn--small ">
                                        <a href="" style="color: white"><i class="zmdi zmdi-delete"></i>Xoá</a>
                                    </button>
                                    <div class="rs-select2--dark" >
                                        <button class="au-btn au-btn-load au-btn au-btn-icon au-btn--small">cập nhật</button>

                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2 "  style="overflow: auto;height: 500px">
                                <table class="table table-data2">
                                    <thead >
                                    <tr>
                                        <th style="width: 35px">
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </th>
                                        <th>Mã NCC</th>
                                        <th>Tên NCC</th>
                                        <th>Địa chỉ</th>
                                        <th>Nhãn hiệu cung cấp</th>
                                        <th>SĐT</th>
                                        <th>Ngày BD</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC01</td>
                                        <td class="desc">Cty CP JCheery</td>
                                        <td>Đường Nguyễn Công Bằng, Cai Lậy, TG</td>
                                        <td>ASUS, DELL</td>
                                        <td>0275.256.255</td>
                                        <td>23-09-2019</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                   <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC02</td>
                                        <td class="desc">Cty CP Banana</td>
                                        <td>Đường 3/2, Quận 3, TPHCM</td>
                                        <td>ASUS, DELL</td>
                                        <td>0289.333.255</td>
                                        <td>11-11-2018</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                    <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC03</td>
                                        <td class="desc">Cty CP Strawberry</td>
                                        <td>Đường Võ Thị Sáu, Quận 3, TPHCM</td>
                                        <td>ASUS, DELL</td>
                                        <td>0296.111.222</td>
                                        <td>24-11-2017</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                    <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC04</td>
                                        <td class="desc">Cty CP Button</td>
                                        <td>Đường NKKN, Quận 10, TPHCM</td>
                                        <td>ASUS, DELL, ACER, HP</td>
                                        <td>0275.333.222</td>
                                        <td>23-02-2019</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                    <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC05</td>
                                        <td class="desc">Cty CP VietXX</td>
                                        <td>Đường 3/2, Quận 3, TPHCM</td>
                                        <td>ASUS, DELL,HP , APPLE</td>
                                        <td>0296.777.265</td>
                                        <td>26-12-2018</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                    <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC06</td>
                                        <td class="desc">Cty CP JCheery</td>
                                        <td>Đường NTPhuong, Quận 10, TPHCM</td>
                                        <td>ASUS, DELL</td>
                                        <td>0298.338.339</td>
                                        <td>25-06-2017</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                    <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    <tr class="tr-shadow">
                                        <td>
                                            <label class="au-checkbox">
                                                <input type="checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </td>
                                        <td>NCC07</td>
                                        <td class="desc">Cty CP Doggy</td>
                                        <td>Đường 3/2, Quận 3, TPHCM</td>
                                        <td>ASUS, DELL , HP, ACER</td>
                                        <td>0396.559.558</td>
                                        <td>21-10-2018</td>
                                        <td>
                                            <div class="table-data-feature">

                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Edit">
                                                    <a href="edit_supplier"><i class="zmdi zmdi-edit"></i></a>
                                                </button>
                                                <button class="item" data-toggle="tooltip" data-placement="top"
                                                        title="Delete">
                                                    <i class="zmdi zmdi-delete"></i>
                                                </button>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="spacer"></tr>
                                    </tbody>
                                </table>
                                <div class="user-data__footer">
                                    <button class="au-btn au-btn-load">cập nhật</button>
                                </div>
                            </div>
                            <!-- END DATA TABLE -->
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
