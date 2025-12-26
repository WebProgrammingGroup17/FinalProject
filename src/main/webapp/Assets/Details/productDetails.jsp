<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/homeStyle/productDetail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/recycleFilecss/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/recycleFilecss/footer.css">

    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
    />

</head>
<body>
<!-- <div id="header"></div> -->

<header class="header">
    <div class="main-header">
        <div class="container">
            <div class="box-header">
                <div class="hamburger">
                    <i class="bi bi-list" id="menuBTN"></i>
                    <i class="bi bi-search" style="font-size: 26px"></i>
                </div>
                <div class="menu-small-frame" style="display: none;" id="menu-small">
                    <div><a href="index.html"><p>Trang Chủ</p></a></div>
                    <div><a href="products.html"><p>Sản Phẩm</p></a></div>
                    <div><a href="about.html"><p>Giới Thiệu</p></a></div>
                    <div><a href="contact.html"><p>Liên Hệ</p></a></div>
                </div>

                <div class="search-box-mobile" style="display: none;" id="search-box">
                    <input type="text" placeholder="Tìm kiếm sản phẩm..." />
                </div>
                <div class="logo">
                    <a href="index.html"
                    ><img title="logo"
                          src="https://png.pngtree.com/png-clipart/20230217/original/pngtree-gaming-gamepad-icon-png-image_8957696.png"
                          alt="logo"
                    /></a>
                </div>
                <div class="center">
                    <div class="center-1 same-icon">
                        <i class="fa-solid fa-headset"></i>
                        <b style="font-size: 13px">HOTLINE:</b> <span title="hotline">0123456789</span>
                    </div>
                    <div class="center-1 center2 same-icon">
                        <i class="bi bi-geo-alt-fill"></i>
                        <a href="https://www.google.com/maps?q=10.871309739267502, 106.79176838635757" style="color: #333;"><b style="font-size: 13px" class="map">VỊ TRÍ CỬA HÀNG</b></a>
                    </div>
                    <div class="center-1 center3">
                        <div class="input1">
                            <input type="text" placeholder="Tìm sản phẩm..." />
                            <div class="search"><i title="tìm kiếm" class="bi bi-search"></i></div>
                        </div>
                    </div>
                </div>



                <div class="right1">
                    <div class="icon icon2" id="icon3">
                        <i class="bi bi-person-circle"></i>
                        <p style="margin: 0">TÀI KHOẢN</p>
                    </div>


                    <div class="register-login" id="loginForm">
                        <a href="./Assets/component/login_logout/login.html" class="a-same-nodecoration"><div class="no-margin">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="16"
                                    height="16"
                                    fill="currentColor"
                                    class="bi bi-box-arrow-in-right"
                                    viewBox="0 0 16 16"
                            >
                                <path
                                        fill-rule="evenodd"
                                        d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0z"
                                />
                                <path
                                        fill-rule="evenodd"
                                        d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"
                                /></svg><p>Đăng nhập</p>
                        </div></a>
                        <a href="./Assets/component/login_logout/register.html" class="a-same-nodecoration"><div class="no-margin">
                            <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="16"
                                    height="16"
                                    fill="currentColor"
                                    class="bi bi-person-plus"
                                    viewBox="0 0 16 16"
                            >
                                <path
                                        d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"
                                />
                                <path
                                        fill-rule="evenodd"
                                        d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5"
                                />
                            </svg><p>Đăng ký</p>
                        </div></a>
                    </div>
                    <div class="personal_logout" id="personal_logout">
                        <a href="./Assets/component/cart_payment/Order.html" class="a-same-nodecoration1"><div class="no-margin1">
                            <p>Trang cá nhân</p>
                        </div></a>
                        <div class="no-margin1 no-margin2">
                            <span id="logoutbtn" class="logoutbtn">Đăng xuất</span>
                        </div>
                    </div>



                    <a href="./Assets/component/cart_payment/cart.html"><div class="icon">
                        <div class="cart">
                            <i class="bi bi-cart2" title="cart"></i>
                            <div class="num">
                                <p id="cart_num"
                                   style="
                        border-radius: 8px;
                        padding: 2px;
                        background-color: #e85221;
                        color: white;
                      "
                                >
                                    0
                                </p>
                            </div>
                        </div>
                        <p class="cart3">GIỎ HÀNG</p>
                    </div>
                    </a>
                </div>
            </div>


        </div>




        <div class="menu">
            <div class="container">
                <div class="menu2">
                    <a href="index.html"><div title="menu" class="menu3">TRANG CHỦ</div></a>
                    <a href="products.html"
                    ><div title="menu" class="menu3">SẢN PHẨM</div></a
                    >

                    <a href="about.html"
                    ><div title="menu" class="menu3">GIỚI THIỆU</div></a
                    >
                    <a href="contact.html"
                    ><div title="menu" class="menu3">LIÊN HỆ</div></a
                    >
                </div>
            </div>
        </div>
    </div>
</header>

<main>


<%--TESt--%>
<%--    <h2>${product.name}</h2>--%>
<%--    <p>ID: ${product.id}</p>--%>
<%--    <p>Giá: <fmt:formatNumber value="${product.price}"/> ₫</p>--%>
<%--    <p>${product.descriptionShort}</p>--%>

<%--    <img src="${pageContext.request.contextPath}/${product.image}" width="300">--%>
<%--TEST--%>

    <section id="product-details" class="product-details">
        <div class="product-container">
                <%--LEFT: IMAGE --%>

                    <div class="left">
                        <!-- Ảnh chính -->
                        <img src="${pageContext.request.contextPath}/${images[0]}" alt="${product.name}" />

                        <!-- Gallery các ảnh khác -->
                        <div class="gallery">
                            <c:forEach items="${images}" var="img">
                                <img src="${pageContext.request.contextPath}/${img}" alt="${product.name}" />
                            </c:forEach>
                        </div>
                    </div>

                <%-- RIGHT: INFO--%>
            <div class="right">
                <h2>${product.name}</h2>

                <p><strong>Mã sản phẩm:</strong> ${product.id}</p>
                <p><strong>Danh mục:</strong> ${product.categoryName}</p>
                <p><strong>Thương hiệu:</strong> ${product.brandName}</p>

                <p class="price">
                    <fmt:formatNumber value="${product.price}" type="number"/>₫
                </p>


<%--                <p>--%>
<%--                    <strong>Tình trạng:</strong>--%>
<%--                    <span style="color: ${product.quantity > 0 ? 'green' : 'red'}">--%>
<%--                        ${product.quantity > 0 ? 'Còn hàng' : 'Hết hàng'}--%>
<%--                    </span>--%>
<%--                </p>--%>

                <div class="product-info-box">

                        <%-- OFFER --%>
                    <div class="product-offer">
                        <h3>Ưu đãi</h3>
                        <ul>
                            <li>Bảo hành 12 tháng</li>
                            <li>Tặng dây cáp USB-C</li>
                            <li>Miễn phí giao hàng toàn quốc</li>
                        </ul>
                    </div>

                <%-- SHORT-DESCRIPTION--%>
                    <div class="product-description">
                        <h3>Mô tả sản phẩm</h3>
                        <p>${product.descriptionShort}</p>
                    </div>

                <%--QUANTITY--%>
                <div class="quantity-row">
                    <div class="quantity-control">
                        <button>-</button>
                        <span>1</span>
                        <button>+</button>
                    </div>
                </div>

                        <%-- ACTION --%>
                    <div class="action-row">
                        <a href="cart?action=add&id=${product.id}">
                            <button class="btn-add">Thêm vào giỏ hàng</button>
                        </a>
                        <a href="checkout?id=${product.id}">
                            <button>Mua ngay</button>
                        </a>
                    </div>

                    <div class="back-row">
                        <a href="products">
                            <button>← Quay lại</button>
                        </a>
                    </div>

                </div>
            </div>
        </div>
            <section class="product-detail-info">

                <div class="description-section">
                    <h3>Mô tả chi tiết</h3>
                    <p>${product.descriptionLong}</p>
                </div>

                <div class="description-section">
                    <h3>Giới thiệu về console và tay cầm</h3>
                    <p>${product.intro}</p>
                </div>

                <div class="description-section">
                    <h3>Đối tượng phù hợp</h3>
                    <p>${product.targetUser}</p>
                </div>

                <div class="description-section">
                    <h3>Công nghệ</h3>
                    <p>${product.technology}</p>
                </div>

                <div class="specs-section">
                    <h3>Thông số kỹ thuật</h3>

                    <table>
                        <tr>
                            <th>Thuộc tính</th>
                            <th>Giá trị</th>
                        </tr>

                        <tr>
                            <td>Kết nối</td>
                            <td>${product.specConnect}</td>
                        </tr>

                        <tr>
                            <td>Pin</td>
                            <td>${product.specBattery}</td>
                        </tr>

                        <tr>
                            <td>Thời gian sử dụng</td>
                            <td>${product.specUsageTime}</td>
                        </tr>

                        <tr>
                            <td>Hỗ trợ</td>
                            <td>${product.specSupport}</td>
                        </tr>

                        <tr>
                            <td>Khối lượng</td>
                            <td>${product.specWeight}</td>
                        </tr>

                    </table>
                </div>
            </section>

    </section>















<%--    <section id="product-details" class="product-details">--%>
    <%--        <div class="product-container">--%>
    <%--            <div class="left">--%>
    <%--                <img src="../../image/baner4.webp" alt="Flydigi Vader 4 Pro" />--%>

    <%--                <div class="gallery">--%>
    <%--                    <img src="../../image/baner4.webp" alt="" />--%>
    <%--                    <img src="../../image/baner4.webp" alt="" />--%>
    <%--                    <img src="../../image/baner4.webp" alt="" />--%>
    <%--                </div>--%>
    <%--            </div>--%>

    <%--            <div class="right">--%>
    <%--                <h2>Tay Cầm Chơi Game Flydigi Vader 4 Pro Controller</h2>--%>

    <%--                <p><strong>Mã sản phẩm:</strong> C001</p>--%>
    <%--                <p><strong>Danh mục:</strong> Tay cầm chơi game</p>--%>
    <%--                <p><strong>Thương hiệu:</strong> Flydigi</p>--%>

    <%--                <p class="price">8.990.000₫</p>--%>

    <%--                <p>--%>
    <%--                    <strong>Tình trạng:</strong>--%>
    <%--                    <span style="color: red">Còn hàng</span>--%>
    <%--                </p>--%>

    <%--                <div class="product-info-box">--%>
    <%--                    <div class="product-offer">--%>
    <%--                        <h3>Ưu đãi</h3>--%>
    <%--                        <ul>--%>
    <%--                            <li>Bảo hành 12 tháng</li>--%>
    <%--                            <li>Tặng dây cáp USB-C</li>--%>
    <%--                            <li>Miễn phí giao hàng toàn quốc</li>--%>
    <%--                        </ul>--%>
    <%--                    </div>--%>

    <%--                    <div class="product-description">--%>
    <%--                        <h3>Mô tả sản phẩm</h3>--%>
    <%--                        <p>--%>
    <%--                            Flydigi Vader 4 Pro là phiên bản nâng cấp với độ trễ cực thấp--%>
    <%--                            và độ bền vượt trội.--%>
    <%--                        </p>--%>

    <%--                        <strong><p>Cảm biến Hall Effect chống drift</p></strong>--%>
    <%--                        <strong><p>Khoá Trigger đa chế độ</p></strong>--%>
    <%--                        <strong><p>Kết nối 3 chế độ</p></strong>--%>
    <%--                        <strong><p>Tương thích PC / Android / iOS</p></strong>--%>
    <%--                    </div>--%>
    <%--                </div>--%>

    <%--                <div class="quantity-row">--%>
<%--                    <div class="quantity-control">--%>
<%--                        <button>−</button>--%>
<%--                        <span>1</span>--%>
<%--                        <button>+</button>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="action-row">--%>
<%--                    <a href="./notification.html"><button for="notify-toggle" class="btn-add">Thêm vào giỏ hàng</button></a>--%>
<%--                    <a href="../cart_payment/payment.html"><button>Mua ngay</button></a>--%>
<%--                </div>--%>

<%--                <div class="back-row">--%>
<%--                    <a href="../../../products_afterupdate.html"><button>← Quay lại</button></a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <section class="product-detail-info">--%>
<%--            <div class="description-section">--%>
<%--                <h3>Mô tả chi tiết</h3>--%>
<%--                <p>--%>
<%--                    Flydigi Vader 4 Pro sở hữu độ trễ cực thấp, cảm biến Hall Effect,--%>
<%--                    trigger đa chế độ, hỗ trợ rung mạnh mẽ và thiết kế công thái học--%>
<%--                    phù hợp với người dùng chơi lâu dài.--%>
<%--                </p>--%>
<%--            </div>--%>

<%--            <div class="description-section">--%>
<%--                <h3>Giới thiệu về console và tay cầm</h3>--%>
<%--                <p>--%>
<%--                    Console và tay cầm chơi game mang đến trải nghiệm giải trí sống--%>
<%--                    động, phản hồi nhanh và dễ điều khiển. Tay cầm hiện đại tích hợp--%>
<%--                    nhiều tính năng giúp người chơi linh hoạt và tiện lợi.--%>
<%--                </p>--%>
<%--            </div>--%>

<%--            <div class="description-section">--%>
<%--                <h3>Đối tượng phù hợp</h3>--%>
<%--                <p>--%>
<%--                    Sản phẩm hướng tới game thủ mọi lứa tuổi và những người yêu công--%>
<%--                    nghệ, phù hợp cho giải trí, học tập hay thi đấu eSports.--%>
<%--                </p>--%>
<%--            </div>--%>

<%--            <div class="description-section">--%>
<%--                <h3>Công nghệ</h3>--%>
<%--                <p>--%>
<%--                    Console và tay cầm sử dụng công nghệ không dây, cảm biến chuyển--%>
<%--                    động, rung phản hồi, và màn hình sắc nét, giúp trải nghiệm chơi--%>
<%--                    game mượt mà và chính xác.--%>
<%--                </p>--%>
<%--            </div>--%>

<%--            <div class="specs-section">--%>
<%--                <h3>Thông số kỹ thuật</h3>--%>

<%--                <table>--%>
<%--                    <tr>--%>
<%--                        <th>Thuộc tính</th>--%>
<%--                        <th>Giá trị</th>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td>Kết nối</td>--%>
<%--                        <td>Bluetooth / 2.4G / Wired</td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td>Pin</td>--%>
<%--                        <td>1200mAh</td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td>Thời gian sử dụng</td>--%>
<%--                        <td>12–15 giờ</td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td>Hỗ trợ</td>--%>
<%--                        <td>Android, iOS, PC</td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td>Khối lượng</td>--%>
<%--                        <td>285g</td>--%>
<%--                    </tr>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </section>--%>
<%--    </section>--%>
</main>

<!-- <div id="footer"></div> -->

<!--
  reviews
 -->
<div class="review-section">
    <h2>Đánh giá & nhận xét <span id="product_name"></span></h2>

    <div class="overall-rating">
        <div class="score">
            <h3>5.0/5</h3>
            <div class="stars">
                <i class="fas fa-star"></i><i class="fas fa-star"></i>
                <i class="fas fa-star"></i><i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <p>5 đánh giá</p>
        </div>
        <div class="rating-bars">
            <div class="rating-bar">
                5 <i class="fas fa-star"></i>
                <div class="bar-container">
                    <div class="bar" style="width: 100%"></div>
                </div>
                <span>5 đánh giá</span>
            </div>
            <div class="rating-bar">
                4 <i class="fas fa-star"></i>
                <div class="bar-container">
                    <div class="bar" style="width: 0%"></div>
                </div>
                <span>0 đánh giá</span>
            </div>
            <div class="rating-bar">
                3 <i class="fas fa-star"></i>
                <div class="bar-container">
                    <div class="bar" style="width: 0%"></div>
                </div>
                <span>0 đánh giá</span>
            </div>
            <div class="rating-bar">
                2 <i class="fas fa-star"></i>
                <div class="bar-container">
                    <div class="bar" style="width: 0%"></div>
                </div>
                <span>0 đánh giá</span>
            </div>
            <div class="rating-bar">
                1 <i class="fas fa-star"></i>
                <div class="bar-container">
                    <div class="bar" style="width: 0%"></div>
                </div>
                <span>0 đánh giá</span>
            </div>
        </div>
    </div>

    <a href="./reviews.html" class="review-button">Đánh giá ngay</a>

    <!-- List reviews -->
    <div class="review-item">
        <h4>Huy Phan <span class="stars">★★★★★</span></h4>
        <p>Nhận xét: Hàng chất lắm đáng mua</p>
        <div class="review-date">2 năm trước</div>
    </div>

    <div class="review-item">
        <h4>Thanh Huy <span class="stars">★★★★★</span></h4>
        <p>Nhận xét: Rất ngon</p>
        <div class="review-date">3 năm trước</div>
    </div>

    <div class="review-item">
        <h4>Nguyễn Phước Thịnh <span class="stars">★★★★★</span></h4>
        <p>Nhận xét: Chất lượng tốt, đáng mua</p>
        <div class="review-date">3 năm trước</div>
    </div>
</div>

<footer class="footer">
    <div class="footer-container">
        <!-- CONNECT WITH US -->
        <div class="footer-section">
            <h3>Liên Hệ Với Chúng Tôi</h3>
            <div class="subscribe">
                <input type="email" placeholder="Nhập Email" />
                <button><i class="fa-solid fa-paper-plane"></i>Gửi</button>
            </div>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-tiktok"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"
                ><img
                        src="https://upload.wikimedia.org/wikipedia/commons/9/91/Icon_of_Zalo.svg"
                        alt="Zalo"
                        style="width: 22px; height: 22px"
                /></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
        </div>

        <!-- USEFUL LINKS -->
        <div class="footer-section">
            <h3>Truy cập nhanh</h3>
            <ul>
                <li><a href="#">Liên Hệ</a></li>
                <li><a href="#">Điều khoản và điều kiện</a></li>
                <li><a href="#">Phương thức thanh toán</a></li>
                <li><a href="#">Giao hàng và trả hàng</a></li>
                <li><a href="#">Chính sách bảo mật</a></li>
            </ul>
        </div>
        <!-- CONTACT -->
        <div class="footer-section">
            <h3>Liên hệ</h3>
            <p>
                <i class="fa-regular fa-envelope" style="color: #e95221"></i>
                nhom17@gmail.com
            </p>
            <p>
                <i class="fa-solid fa-phone" style="color: #e95221"></i> 0987654321
            </p>
        </div>

        <!-- HELP -->
        <div class="footer-section">
            <h3>Chúng tôi luôn sẵn sàng giúp đỡ bạn</h3>
            <p>
                Đội ngũ hỗ trợ của chúng tôi luôn sẵn sàng hỗ trợ bạn mọi thắc mắc,
                đơn hàng hoặc vấn đề. Hãy liên hệ với chúng tôi. Chúng tôi rất vui
                được hỗ trợ!
            </p>
        </div>
    </div>
</footer>

<!--    <script src="../js/product_details/productDetails.js"></script>-->
<!--    <script src="../js/fetch_header_footer/main.js"></script>-->
<!--    <script src="../js/logic_login_logout/login_logout.js"></script>-->
<!--    <script src="../js/display_num_cart/num_cart.js"></script>-->

<!-- <script>
        document.addEventListener("DOMContentLoaded", () => {
            const params = new URLSearchParams(window.location.search);
            let productId = params.get("data-id");

            // Nếu không có ID -> lấy sản phẩm đầu tiên
            if (!productId) productId = productData[0].id;

            const product = productData.find((p) => p.id === productId);

            if (!product) {
                document.body.innerHTML =
                    '<h2 style="color:red;text-align:center;margin-top:50px;">Không tìm thấy sản phẩm!</h2>';
                return;
            }

            // Gán dữ liệu
            document.getElementById("product-name").textContent = product.name;
            document.getElementById("product-id").textContent = product.id;
            document.getElementById("product-category").textContent = product.category;
            document.getElementById("product-price").textContent =
                product.price.toLocaleString("vi-VN") + " ₫";
            document.getElementById("product-description").textContent = product.description;
            document.getElementById("product-full-description").textContent =
                product.fullDescription;

            // Ảnh chính
            document.getElementById("product-image").src = product.image;

            // Gallery
            document.getElementById("product-gallery").innerHTML = product.gallery
                .map((img) => `<img src="${img}" alt="">`)
                .join("");

            // Ưu đãi
            document.getElementById("product-bonus").innerHTML = product.bonus
                .map((b) => `<li>${b}</li>`)
                .join("");

            // Thông số kỹ thuật
            const specs = document.getElementById("product-specs");
            for (let key in product.specs) {
                const row = document.createElement("tr");
                row.innerHTML = `<td>${key}</td><td>${product.specs[key]}</td>`;
                specs.appendChild(row);
            }

            document.querySelector(".product-details").classList.remove("hidden");
        });
    </script>
    <script src="../js/product_details/productDetails.js"></script>
    <script src="../js/fetch_header_footer/main.js"></script>
    <script src="../js/login_UI_status/UI_status.js"></script>
    <script src="../js/display_num_cart/num_cart.js"></script>
    <script src="../js/logic_logout/logout.js"></script> -->
</body>
</html>

