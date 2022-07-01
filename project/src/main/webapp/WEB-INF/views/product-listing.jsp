<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LaptopNLU - Product Listing</title>
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
<main class="ps-main">
    <div class="ps-products-wrap pt-80 pb-80">
        <div class="ps-products" data-mh="product-listing">
            <div class="ps-product-action">
                <div class="ps-product__filter">
                    <select class="ps-select selectpicker">
                        <option value="1">Sắp xếp</option>
                        <option value="2">Bán chạy nhất</option>
                        <option value="3">Giá cao đến thấp</option>
                        <option value="3">Giá thấp đến cao</option>
                    </select>
                </div>
                <div class="ps-pagination">
                    <ul class="pagination">
                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- Grid sản phẩm -->
            <div class="ps-product__columns">
                <%-- Start Single Product --%>

            <!-- Lọc -->
            <div class="ps-product-action">
                <div class="ps-product__filter">
                    <select class="ps-select selectpicker">
                        <option value="1">Sắp xếp</option>
                        <option value="2">Bán chạy nhất</option>
                        <option value="3">Giá cao đến thấp</option>
                        <option value="3">Giá thấp đến cao</option>
                    </select>
                </div>
                <div class="ps-pagination">
                    <ul class="pagination">
                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="ps-sidebar" data-mh="product-listing">
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>Hãng</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">Apple (Macbook)</a></li>
                        <li><a href="">Acer</a></li>
                        <li><a href="">Asus</a></li>
                        <li><a href="">Dell</a></li>
                        <li><a href="">Lenovo</a></li>
                        <li><a href="">HP</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>Mức giá</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">Dưới 10 triệu</a></li>
                        <li><a href="">10 - 15 triệu</a></li>
                        <li><a href="">15 - 20 triệu</a></li>
                        <li><a href="">20 - 25 triệu</a></li>
                        <li><a href="">Trên 25 triệu</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>Màn hình</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">Trên 15 inch</a></li>
                        <li><a href="">Khoảng 14 inch</a></li>
                        <li><a href="">Khoảng 13 inch</a></li>
                        <li><a href="">Cảm ứng</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>CPU</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">Intel Core i7</a></li>
                        <li><a href="">Intel Core i5</a></li>
                        <li><a href="">Intel Core i3</a></li>
                        <li><a href="">Intel Celeron/ Pentium</a></li>
                        <li><a href="">AMD</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>RAM</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">16 GB</a></li>
                        <li><a href="">8 GB</a></li>
                        <li><a href="">4 GB</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>Tính năng đặc biệt</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">Ổ cứng SSD</a></li>
                        <li><a href="">Card đồ hoạ rời</a></li>
                        <li><a href="">CPU Intel thế hệ 11 (Mới)</a></li>
                        <li><a href="">CPU Intel thế hệ 10</a></li>
                        <li><a href="">Bộ nhớ Intel Optane</a></li>
                        <li><a href="">Bàn phím số</a></li>
                        <li><a href="">Ổ đĩa quang</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>

            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>Ổ cứng</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">SSD: 1 TB</a></li>
                        <li><a href="">SSD: 512 GB</a></li>
                        <li><a href="">SSD: 256 GB</a></li>
                        <li><a href="">SSD: 128 GB</a></li>
                        <li><a href="">HDD: 1 TB</a></li>
                        <li><a href="">HDD dưới 1 TB</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
            <aside class="ps-widget--sidebar ps-widget--category">
                <div class="ps-widget__header">
                    <h3>Khuyến mãi</h3>
                </div>
                <div class="ps-widget__content">
                    <ul class="ps-list--checked">
                        <li><a href="">Đang giảm giá</a></li>
                    </ul>
                    <a class="ac-slider__filter ps-btn" href="#" style="line-height: 0px; font-size: 12px;">Lọc</a>
                </div>
            </aside>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="footer.jsp"></jsp:include>
</main>
</body>

</html>