<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/6/2025
  Time: 6:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Giới thiệu</title>
    <link rel="stylesheet" href="Assets/css/homeStyle/about.css" />
    <link rel="stylesheet" href="Assets/css/recycleFilecss/header.css">
    <link rel="stylesheet" href="Assets/css/recycleFilecss/footer.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
    />
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


<!--info content 1-->
<section class="info-section">
    <div class="info-content">
        <div class="service">
            <h2>Đổi mới, Chất lượng và Dịch vụ</h2>
        </div>

        <div class="info-box">
            <h4>50+ CỬA HÀNG</h4>
            <p>
                Hệ thống cửa hàng của chúng tôi được phân bố khắp cả nước tại các
                thành phố như Hà Nội, TP. Hồ Chí Minh, Đà Nẵng, Huế...
            </p>
        </div>

        <div class="info-box">
            <h4>200+ THƯƠNG HIỆU</h4>
            <p>
                Chúng tôi cung cấp sản phẩm đến từ nhiều thương hiệu nổi tiếng, uy
                tín và chất lượng được người dùng yêu thích.
            </p>
        </div>

        <div class="info-box">
            <h4>3+ TRUNG TÂM TƯ VẤN</h4>
            <p>
                Chúng tôi có hơn 3 trung tâm hỗ trợ luôn sẵn sàng giải đáp mọi thắc
                mắc của khách hàng về sản phẩm.
            </p>
        </div>

        <div class="info-box">
            <h4>5000+ KHÁCH HÀNG</h4>
            <p>
                Tính đến nay, cửa hàng của chúng tôi đã làm hài lòng hơn 5.000 khách
                hàng trong nước cũng như quốc tế.
            </p>
        </div>
    </div>

    <div class="info-image">
        <img src="/Assets/image/aboutUs_info.png" alt="Thông tin cửa hàng" />
    </div>
</section>

<!--content 2-->
<div class="service-content">
    <div class="box">
        <i class="fa-solid fa-headset"></i>
        <p>
            Cửa hàng luôn sẵn sàng tư vấn và hỗ trợ mọi thắc mắc của bạn bất cứ
            lúc nào.
        </p>
    </div>
    <div class="box">
        <i class="fa-solid fa-truck-fast"></i>
        <p>
            Chúng tôi có dịch vụ giao hàng tận nơi dành cho khách hàng không thể
            đến trực tiếp.
        </p>
    </div>
    <div class="box">
        <i class="fa-solid fa-gift"></i>
        <p>
            Cửa hàng thường xuyên có nhiều chương trình khuyến mãi vào các dịp đặc
            biệt khi bạn mua sản phẩm.
        </p>
    </div>
    <div class="box">
        <i class="fa-solid fa-bell"></i>
        <p>
            Chúng tôi sẽ thông báo cho bạn khi có sản phẩm mới nếu bạn có nhu cầu.
        </p>
    </div>
</div>

<!--WHAT WE DO-->
<div class="we">Chúng tôi làm gì</div>
<div class="we-do">
    <div class="do">
        <img src="/Assets/image/aboutUs_product.png" alt="Sản phẩm" />
        <h3>Sản phẩm của chúng tôi</h3>
        <p>
            Cửa hàng có đa dạng các loại máy chơi game bạn có thể thoải mái lựa
            chọn theo sở thích.
        </p>
    </div>

    <div class="do">
        <img src="/Assets/image/aboutUs_team.png" alt="Đội ngũ" />
        <h3>Đội ngũ của chúng tôi</h3>
        <p>
            Đội ngũ nhân viên luôn sẵn sàng hỗ trợ bạn bất cứ khi nào bạn cần.
        </p>
    </div>

    <div class="do">
        <img src="/Assets/image/aboutUs_store.png" alt="Cửa hàng" />
        <h3>Cửa hàng của chúng tôi</h3>
        <p>
            Chúng tôi luôn sẵn lòng phục vụ bạn, hãy đến với cửa hàng khi bạn có
            nhu cầu.
        </p>
    </div>

    <!-- PHẦN 4 -->
    <div class="final-content">
        <div class="text">
            <p>
                Cửa hàng có nhiều loại máy chơi game để bạn dễ dàng chọn theo sở
                thích của mình.
            </p>
            <h4>Nhóm 17</h4>
        </div>

        <div class="text">
            <p>Đội ngũ luôn sẵn sàng hỗ trợ bạn bất cứ khi nào.</p>
            <h4>Nhóm 17</h4>
        </div>

        <div class="text">
            <p>
                Cửa hàng luôn vui vẻ phục vụ bạn, đừng ngần ngại ghé thăm khi có nhu
                cầu.
            </p>
            <h4>Nhóm 17</h4>
        </div>
    </div>
</div>

<!-- <div id="footer"></div> -->

<!--Footer-->

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
