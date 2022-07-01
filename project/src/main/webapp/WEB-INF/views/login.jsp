<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>LaptopNLU-Login</title>
    <link href="login/main.css" rel="stylesheet" media="all">
    <style>
        .page-wrapper {
            background:  url(/static/a/tc.png) ;
            background-position: center center;
            background-size: cover;

        }
        #eye{
            position: relative;
            transform: translate(450px,-32px);
        }

    </style>
</head>

<body class="ps-loading animsition">
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
                        <form action="DoLogin" method="post">
                            <div class="form-group">
                                <label>Tên tài khoản:</label>
                                <input name="username" class="au-input au-input--full" type="text"  placeholder="Nhập tên tài khoản">
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu:</label>
                                <input name="password"  class="au-input au-input--full" id="pass" type="password" placeholder="Nhập mật khẩu">
                                <div class="pass fas fa-eye" id="eye"></div>
                                <div></div>
                            </div>
                            <div class="login-checkbox">
                                <label>
                                    <input name="remember" type="checkbox" >Ghi nhớ tôi
                                </label>
                                <label>
                                    <a href="forget-pass.jsp">Quên mật khẩu?</a>
                                </label>
                            </div>
                            <button class="au-btn au-btn--block au-btn--green m-b-20" >Đăng nhập</button>
                            <div class="register-link">
                                <p>
                                    Bạn không có tài khoản?
                                    <a href="./register.jsp">Đăng kí ở đây</a>
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>