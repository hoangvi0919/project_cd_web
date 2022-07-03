<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">


    <title>LaptopNLU-EditInformation</title>
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900"
          rel="stylesheet">
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
        <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Fontfaces CSS-->
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <!-- Vendor CSS-->
<%--    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">--%>
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <!-- Main CSS-->
    <link href="login/main.css" rel="stylesheet" media="all">
    <style>
        .page-wrapper {
            background-position: center center;
            background-size: cover;
            background-color: gray;
        }

        .edit-info-conten {
            border: 2px solid gray;
        }

        .page-content--bge5 {

        }


    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="page-wrapper" style="height: 900px !important">
    <div class="page-content--bge5">
        <div class="container">
            <div class="login-wrap edit-info-wap ">
                <div class="login-content edit-info-conten">
                    <div class="login-logo title-edit-info">
                        <h2>Thay đổi thông tin</h2>
                    </div>
                    <div class="login-form title-edit-info">
                        <form action="" method="post">
                            <div class="form-group">
                                <label>Tên người dùng:</label>
                                <input name="name" value=""
                                       class="au-input au-input--full" type="name" placeholder="Nhập tên thay đổi mới">
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại:</label>
                                <input name="phone" value=""
                                       class="au-input au-input--full" type="phone"
                                       placeholder="Nhập số điện thoại mới">
                            </div>
                            <div class="form-group">
                                <label>Email:</label>
                                <input name="email" value=""
                                       class="au-input au-input--full" type="email" placeholder="Nhập Email mới">
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ:</label>

                                <input name="address" value=""
                                       class="au-input au-input--full" type="address" placeholder="Nhập địa chỉ mới">
                            </div>
                            <div class="input">
                                <label style="float: left; padding-right: 10px">Ngày sinh:</label>
                                <input name="dob" value="" type="date"
                                       class="au-input au-input--full" type="date" id="datepicker">
                            </div>
                            <div class="form-group" style="padding-top: 15px;">
                                <label style="float: left; padding-right: 10px; ">Giới tính:</label>
                                <input name="gioitinh"
                                       type="radio" value="Nam"/> Nam
                                <input name="gioitinh"
                                       type="radio" value="Nữ"/> Nữ
                            </div>
                            <input type="submit" class="au-btn au-btn--block au-btn--green m-b-20"
                                   style="font-weight: bold;" value="Lưu thay đổi">
                            <input type="reset" class="au-btn au-btn--block  m-b-20 btn-danger"
                                   style="font-weight: bold;" value="Hoàn tác">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<!-- JS Library-->

</body>
</html>

