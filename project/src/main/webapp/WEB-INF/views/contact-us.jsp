<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LaptopNLU-ContactUs</title>
</head>
<body class="ps-loading">
<jsp:include page="header.jsp"></jsp:include>
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
</div>
<main class="ps-main">
    <div class="ps-contact ps-contact--2 ps-section pt-80 pb-80">
        <div class="ps-container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                    <div class="ps-section__header pt-50">
                        <h2 class="ps-section__title" data-mask="LIÊN HỆ">Thông tin liên hệ</h2>
                        <form class="ps-contact__form" action="do_action" method="post">
                            <div class="form-group">
                                <label>Họ và tên*</label>
                                <input class="form-control" type="text" placeholder="VD: NGUYỄN VĂN A">
                            </div>
                            <div class="form-group">
                                <label>Email*</label>
                                <input class="form-control" type="email" placeholder="VD: abc@gmail.com">
                            </div>
                            <div class="form-group mb-25">
                                <label>Nội dung<sub/>*</label>
                                <textarea class="form-control" rows="6"></textarea>
                            </div>
                            <div class="form-group">
                                <button class="ps-btn">Gửi<i class="ps-icon-next"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                    <iframe style="padding-top: 194px;"
                            src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7838.684254869503!2d106.70676642475235!3d10.785086936675276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1547181657956"
                            width="600" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="footer.jsp"></jsp:include>
</main>
</body>
</html>
