<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
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
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./register/register.css">
</head>
<style>
    .page-wrapper {
        background: url('/static/a/tc.png');
        background-position: center center;
        background-size: cover;
    }

    #form {
        background: #fff;
        padding: 30px 30px 20px;
        -webkit-border-radius: 2px;
        -moz-border-radius: 2px;
        border-radius: 5px;
    }

    .content {
        padding: 50px;
    }
    .login-logo {
        text-align: center;
        margin-bottom: 30px;
    }
</style>
<body>
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
    <div class="content">
        <div id="form">
            <div class="login-logo">

                <img src="images/logo1.png" alt="laptopnlu">

            </div>
            <form action="/save-user" method="post" class="registerform"  >
                <div class="input">
                    <input type="text" id="user" name="username" value="${user.username}">
                    <div class="placeholder" id="place-user" >Tên đăng nhập</div>
                </div>
                <div class="input">
                    <input type="password" id="pass" name="password" value="${user.password}">
                    <div class="placeholder" id="place-pass" >Mật khẩu</div>
                    <div class="pass fas fa-eye" id="eye"></div>
                </div>
                <div class="input">
                    <input type="password" id="repass" name="rePassword">
                    <div class="placeholder" id="place-repass" >Nhập lại mật khẩu</div>
                </div>
                <div class="input">
                    <input type="text" id="name" name="name" value="${user.name}">
                    <div class="placeholder" id="place-name">Tên của bạn</div>
                </div>
                <div class="input">
                    <input type="number" id="phone" name="phone" value="${user.phone}">
                    <div class="placeholder" id="place-phone" >Số điện  thoại</div>
                </div>
                <div class="input">
                    <input type="text" id="email" name="email" value="${user.email}">
                    <div class="placeholder" id="place-email" >Email</div>
                </div>
                <div class="input">
                    <textarea id="txtaddress" oninput="auto_grow(this)" name="address" value="${user.address}"></textarea>
                    <div class="placeholder" id="place-txtaddress" >Địa chỉ</div>
                </div>
                <div class="input">
                    <input type="text" id="sex" name="gender" value="${user.gender}">
                    <div class="placeholder" id="place-gender" >Giới tính</div>
                </div>
                <div class="input">
                    <input type="text" id="datepicker" name="dateOfBirth" value="${user.dob}">
                    <div class="placeholder" id="place-datepicker">Ngày sinh</div>
                </div>
                <button id="btndk">Đăng ký</button>
                <p class="text-center">Bạn đã có tài khoản? <a href="/login" id="linkdn">Đăng nhập</a></p>
            </form>
        </div>
    </div>
</div>
<!-- Footer -->
<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>