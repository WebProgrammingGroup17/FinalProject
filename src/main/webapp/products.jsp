
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="Assets/css/homeStyle/product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <link rel="stylesheet" href="Assets/css/recycleFilecss/header.css">
    <link rel="stylesheet" href="Assets/css/recycleFilecss/footer.css">
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


<main id="content">
    <!--  loc san pham          -->
    <div class="filter" id="filter-panel">
        <div class="title">CHỌN MỨC GIÁ</div>
        <div class="choice">
            <input type="checkbox" class="check filter-price" id="check1" name="checkbox1" value="under500"><label>Giá dưới 500.000đ </label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-price" id="check2" name="checkbox1" value="500-1000"><label>500.000đ - 1 triệu </label>
        </div>

        <div class="choice">
            <input type="checkbox" class="check filter-price" id="check3" name="checkbox1" value="1000-2000"><label>1 - 2 triệu </label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-price" id="check4" name="checkbox1" value="2000-3000"><label>2 - 3 triệu </label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-price" id="check5" name="checkbox1" value="higher3000"><label>Trên 3 triệu </label>
        </div>



        <%--==========================================--%>
        <%--       BRAND--%>
        <div class="title">THƯƠNG HIỆU</div>
        <ul class="brand-list">
            <c:forEach items="${brands}" var="b">
                 <li>
                     <input type="checkbox" value="${b.id}">
                         ${b.brand_name}
                 </li>
            </c:forEach>
        </ul>

        <%--========================================================--%>

        <%-- DANH MUC  --%>
        <div class="title">DANH MỤC</div>
        <ul class="category-list">
        <c:forEach items="${category}" var="c">
            <li>
                <input type="checkbox" value="${c.id}">
                ${c.category_name}
            </li>
        </c:forEach>
        </ul>

    </div>


    <!-- san pham           -->
    <div class="contain">

        <div class="contain-header">
            <div class="Loai">Console</div>

            <div class="sort">
                <i class="fa-solid fa-arrow-down-wide-short"></i></i>
                <label>Sắp xếp:</label>

                <div class="sort-box">
                    <span class="sort-selected">Mặc định</span>
                    <i class="fa-solid fa-chevron-down"></i>
                </div>

                <ul class="sort-menu">
                    <li>Giá tăng dần</li>
                    <li>Giá giảm dần</li>
                    <li>Hàng mới nhất</li>
                </ul>

            </div>
        </div>

        <button id="filter-btn" class="filter-toggle">
            <i class="fa-solid fa-sliders"></i> Bộ lọc
        </button>


<%-- cap nhat san pham dong--%>
        <!--  San Pham -->
        <div id="product-list">
            <c:forEach items="${products}" var="p">

                <a href="${pageContext.request.contextPath}/product-detail?id=${p.id}"
                   class="product-link">

                <div class="product-item ${p.brandId} ${p.categoryId}">
                    <img src="${p.image}" alt="">
                    <div class="product-info">
                        <h4>${p.name}</h4>
                        <p class="price">
                            <fmt:formatNumber value="${p.price}" pattern="#,###"/>₫
                    </div>
                    </div>
                </a>
            </c:forEach>
        </div>

            <%--PAGINATION DYNAMIC        --%>
        <div class="pagination">
            <c:forEach begin="1" end="${totalPages}" var="i">
                <a href="products?page=${i}"
                   class="${i == currentPage ? 'active' : ''}">
                    ${i}
                </a>
            </c:forEach>

        </div>



        <div id="no-products-message" style="display:none; text-align: center; margin-top: 20px;">
            ❌ Không có sản phẩm nào phù hợp với tiêu chí lọc.
        </div>

    </div>


</main>
<div id="main-content"></div>

<!-- <div id="footer"></div>
<script src="/Assets/js/main.js"></script>-->
<!--    <script src="./Assets/js/logic_main/products.js"></script> -->


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
</body>
</html>
