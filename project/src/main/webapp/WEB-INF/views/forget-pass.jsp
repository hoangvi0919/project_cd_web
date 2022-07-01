<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Page-->
    <title>Quên mật khẩu</title>
    <!-- Main CSS-->
    <link href="./forget-pass/css/theme.css" rel="stylesheet" media="all">
    <style>
        .page-wrapper {
            background:  url('a/tc.png') ;
            background-position: center center;
            background-size: cover;
            height: 700px;
        }
        .login-wrap {
            max-width: 540px;
            padding-top: 22vh;
            margin: 0 auto;
        }
        .login-logo {
            text-align: center;
            margin-bottom: 30px;
        }

    </style>
</head>

<body class="ps-loading">
<jsp:include page="header.jsp"></jsp:include>
<div class="header-services">
    <div class="ps-services owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="7000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="false" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
        <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Giao hàng miễn phí</strong>: Nhận giao hàng
            miễn phí với mọi đơn hàng tại cửa hàng Laptop NLU</p>
        <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Giao hàng miễn phí</strong>: Nhận giao hàng
            miễn phí với mọi đơn hàng tại cửa hàng Laptop NLU</p>
        <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Giao hàng miễn phí</strong>: Nhận giao hàng
            miễn phí với mọi đơn hàng tại cửa hàng Laptop NLU</p>
    </div>
</div>
<div class="page-wrapper">
    <div class="page-content--bge5">
        <div class="container">
            <div class="login-wrap">
                <div class="login-content">
                    <div class="login-logo">
                        <a href="#">
                            <img src="images/logo1.png" alt="laptopnlu">
                        </a>
                    </div>
                    <div class="login-form">
                        <form action="ForgetPass_SendID" method="post" >
                            <div class="form-group">
                                <label id="label">Vui lòng nhập địa chỉ email đã đăng ký:</label>
                                <input class="au-input au-input--full" type="text" name="email" placeholder="Email" id="email">
                                <div></div>
                            </div>
                            <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">GỬI</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="./forget-pass/js/main.js"></script>
<!-- Custom scripts-->
<script type="text/javascript" src="js/main.js"></script>
</body>

</html>
<!-- end document-->