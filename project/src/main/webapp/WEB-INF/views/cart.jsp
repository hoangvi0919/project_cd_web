<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">

    <title>LaptopNLU - Cart</title>
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
    <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="ps-loading">
<%--<jsp:include page="header.jsp"></jsp:include>--%>
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
    <div class="ps-content pt-80 pb-80">
        <div class="ps-container">
            <div class="ps-cart-listing">
                <table class="table ps-cart__table">
                    <thead>
                    <tr>
                        <th>Tất cả sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="product1" id="product1">
                        <td><a class="ps-product__preview" href="product-detail.jsp"><img class="mr-15"
                                                                                          src="images/cart-preview/1.jpg"
                                                                                          alt=""> Laptop ASUS VivoBook
                            A412FA i5 </a></td>
                        <td class="price1">4000000</td>
                        <td>
                            <div class="form-group--number">
                                <button class="minus"><span>-</span></button>
                                <input class="form-control input" type="text" value="1">
                                <button class="plus"><span>+</span></button>
                            </div>
                        </td>
                        <td class="price">4000000</td>
                        <td>
                            <div class="ps-remove 1"></div>
                        </td>
                    </tr>
                    <tr class="product2">
                        <td><a class="ps-product__preview" href="product-detail.jsp"><img class="mr-15"
                                                                                          src="images/cart-preview/2.jpg"
                                                                                          alt=""> Dell Inspiron 5584 i5
                            8265U</a></td>
                        <td class="price1">2000000</td>
                        <td>
                            <div class="form-group--number">
                                <button class="minus"><span>-</span></button>
                                <input class="form-control input" type="text" value="1">
                                <button class="plus"><span>+</span></button>
                            </div>
                        </td>
                        <td class="price">2000000</td>
                        <td>
                            <div class="ps-remove 2"></div>
                        </td>
                    </tr>
                    <tr class="product3">
                        <td><a class="ps-product__preview" href="product-detail.jsp"><img class="mr-15"
                                                                                          src="images/cart-preview/3.jpg"
                                                                                          alt="">Dell Vostro 3590 i7
                            10510U</a></td>
                        <td class="price1">3000000</td>
                        <td>
                            <div class="form-group--number">
                                <button class="minus"><span>-</span></button>
                                <input class="form-control input" type="text" value="1">
                                <button class="plus"><span>+</span></button>
                            </div>
                        </td>
                        <td class="price">3000000</td>
                        <td>
                            <div class="ps-remove 3"></div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="ps-cart__actions">
                    <div class="ps-cart__promotion">
                        <div class="form-group">
                            <button onclick="window.location.href='product-listing.jsp'" class="ps-btn ps-btn--gray">
                                Tiếp tục mua sắm
                            </button>
                        </div>
                    </div>
                    <div class="ps-cart__total">
                        <h3>Tổng cộng: <span id="total"> 9,000,000</span></h3><a class="ps-btn" href="checkout.jsp">Thanh
                        toán<i class="ps-icon-next"></i></a>
                    </div>
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
                                    <li><a href="#">TRANG CHỦ</a></li>
                                    <li><a href="#">GIỚI THIỆU</a></li>
                                    <li><a href="#">SẢN PHẨM</a></li>
                                    <li><a href="#">LIÊN HỆ</a></li>
                                </ul>
                            </footer>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-md-2 col-sm-4 col-xs-12 ">
                        <aside class="ps-widget--footer ps-widget--link">
                            <header>
                                <h3 class="ps-widget__title">KẾT NỐI VỚI CHÚNG TÔI</h3>
                            </header>
                            <footer>
                                <ul class="ps-list--line">
                                    <li><a href="#"><i class="fa fa-facebook"></i>  Kết nối Facebook</a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i>  Kết nối G+</a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i>  Trao đổi Twitter</a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i>  Kết nối Instagram</a></li>
                                </ul>
                            </footer>
                        </aside>
                    </div>
                    <aside class="col-lg-12 row thanhtoan">

                        <p class="col-lg-3">Các hình thức thanh toán hỗ trợ:</p>
                        <img class="col-lg-9" src="images/thanhtoan2.png" alt="" style="width: 1000px;height: 50px">
                    </aside>
                </div>
            </div>
        </div>
        <div class="ps-footer__copyright">
            <div class="ps-container">
                <div class="row">
                    <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12 " >
                        <p style="text-align: center">&copy; <a href="#">LAPTOPNLU</a>. Design by <a href="#"> Group 02-LTWEB</a></p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</main>
    <!-- Footer -->
<jsp:include page="footer.jsp"></jsp:include>

<!-- quantity -->
<script>
    function formatNumber(nStr, decSeperate, groupSeperate) {
        nStr += '';
        x = nStr.split(decSeperate);
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
        }
        return x1 + x2;
    }

    function totalPrice() {
        var totalPrice = document.getElementsByClassName("price")
        var total = 0;
        for (var i = 0; i < totalPrice.length; i += 1) {
            var price = parseInt(totalPrice[i].innerHTML, 10)
            total += price
        }
        document.getElementById("total").innerHTML = formatNumber(total, ',', '.')
    }
</script>
<script>

    $(document).ready(function () {
        $('.plus').click(function () {
            var i = $(this).parent().find('.input').val()
            var c = parseInt(i, 10)
            $(this).parent().find('.input').val(c + 1)
            var u = $(this).parent().parent().parent().find('.price1').text()
            var u1 = parseInt(u, 10)
            $(this).parent().parent().parent().find('.price').text(u1 * (c + 1))
            totalPrice()
        });

        $('.minus').on('click', function () {
            var i = $(this).parent().find('.input').val()
            var count = parseInt(i, 10)
            if (count - 1 >= 1) $(this).parent().find('.input').val(count - 1)
            var u = $(this).parent().parent().parent().find('.price1').text()
            var price1 = parseInt(u, 10)
            if (count - 1 >= 1) $(this).parent().parent().parent().find('.price').text(price1 * (count - 1))
            totalPrice()
        });
    });
</script>
<!--quantity-->
</body>
</html>