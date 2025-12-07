<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>InfinityTech</title>
    <link rel="stylesheet" href="Assets/css/same_style/style.css" />
    <link rel="stylesheet" href="Assets/css/homeStyle/home.css">
    <link rel="stylesheet" href="Assets/css/recycleFilecss/header.css" />
    <link rel="stylesheet" href="Assets/css/recycleFilecss/footer.css" />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
    />
    <!-- Font Awesome -->
    <script
            src="https://kit.fontawesome.com/a076d05399.js"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<!--
  Header
-->

<header class="header">
    <div class="main-header">
        <div class="container">
            <div class="box-header">
                <div class="hamburger">
                    <i class="bi bi-list" id="menuBTN"></i>
                    <i class="bi bi-search" style="font-size: 26px"></i>
                </div>
                <div class="menu-small-frame" style="display: none" id="menu-small">
                    <div>
                        <a href="index.html"><p>Trang Chủ</p></a>
                    </div>
                    <div>
                        <a href="products.html"><p>Sản Phẩm</p></a>
                    </div>
                    <div>
                        <a href="about.html"><p>Giới Thiệu</p></a>
                    </div>
                    <div>
                        <a href="contact.html"><p>Liên Hệ</p></a>
                    </div>
                </div>
                <!-- them vao day -->
                <div
                        class="search-box-mobile"
                        style="display: none"
                        id="search-box"
                >
                    <input type="text" placeholder="Tìm kiếm sản phẩm..." />
                </div>
                <!-- ------ -->
                <div class="logo">
                    <a href="index.html"
                    ><img
                            title="logo"
                            src="https://png.pngtree.com/png-clipart/20230217/original/pngtree-gaming-gamepad-icon-png-image_8957696.png"
                            alt="logo"
                    /></a>
                </div>
                <div class="center">
                    <div class="center-1 same-icon">
                        <i class="fa-solid fa-headset"></i>
                        <b style="font-size: 13px">HOTLINE:</b>
                        <span title="hotline">0123456789</span>
                    </div>
                    <div class="center-1 center2 same-icon">
                        <i class="bi bi-geo-alt-fill"></i>
                        <a href="https://www.google.com/maps?q=10.871309739267502, 106.79176838635757" style="color: #333;"><b style="font-size: 13px" class="map">VỊ TRÍ CỬA HÀNG</b></a>
                    </div>
                    <div class="center-1 center3">
                        <div class="input1">
                            <input type="text" placeholder="Tìm sản phẩm..." />
                            <div class="search">
                                <i title="tìm kiếm" class="bi bi-search"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="right1">
                    <div class="icon icon2" id="icon3">
                        <i class="bi bi-person-circle"></i>
                        <p style="margin: 0">TÀI KHOẢN</p>
                    </div>

                    <div class="register-login" id="loginForm">
                        <a
                                href="./Assets/component/login_logout/login.html"
                                class="a-same-nodecoration"
                        ><div class="no-margin">
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
                                />
                            </svg>
                            <p>Đăng nhập</p>
                        </div></a
                        >
                        <a
                                href="./Assets/component/login_logout/register.html"
                                class="a-same-nodecoration"
                        ><div class="no-margin">
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
                            </svg>
                            <p>Đăng ký</p>
                        </div></a
                        >
                    </div>

                    <div class="personal_logout" id="personal_logout">
                        <a
                                href="./Assets/component/cart_payment/Order.html"
                                class="a-same-nodecoration1"
                        ><div class="no-margin1">
                            <p>Trang cá nhân</p>
                        </div></a
                        >
                        <div class="no-margin1 no-margin2">
                            <span class="logoutbtn" id="logoutbtn">Đăng xuất</span>
                        </div>
                    </div>

                    <a href="./Assets/component/cart_payment/cart.html"
                    ><div class="icon">
                        <div class="cart">
                            <i class="bi bi-cart2" title="cart"></i>
                            <div class="num">
                                <p
                                        id="cart_num"
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
                    <a href="index.html"
                    ><div title="menu" class="menu3">TRANG CHỦ</div></a
                    >
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

<div class="slider">
    <div class="slides">
        <a href="./products.html" data-id="C0017"
        ><img
                title="ps5"
                src="Assets/image/newps5_2.png"
                class="active"
                alt=""
        /></a>
        <a href="./products.html" data-id="C0018"
        ><img title="ps4" src="Assets/image/newps4_3.png" alt=""
        /></a>
        <a href="./products.html" data-id="C0019"
        ><img
                title="flydigi apex 5 elite"
                src="Assets/image/NewFlidigi.png"
                alt=""
        /></a>
        <a href="./products.html" data-id="C0020"
        ><img title="elite series 2" src="Assets/image/elite2.png" alt=""
        /></a>
        <a href="./products.html" data-id="C0021"
        ><img
                title="three new version"
                src="Assets/image/threeversion.png"
                alt=""
        /></a>
    </div>

    <!-- Mũi tên -->
    <div class="arrows">
        <span class="prev" title="previous">&#10094;</span>
        <span class="next" title="next">&#10095;</span>
    </div>

    <!-- Dấu chấm -->
    <div class="dots">
        <span class="dot active"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
</div>

<!---->

<div class="features" style="margin-top: 60px">
    <div class="feature-box">
        <svg
                style="color: #e95221"
                xmlns="http://www.w3.org/2000/svg"
                width="30"
                height="30"
                fill="currentColor"
                class="bi bi-truck"
                viewBox="0 0 16 16"
        >
            <path
                    d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5zm1.294 7.456A2 2 0 0 1 4.732 11h5.536a2 2 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456M12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2"
            />
        </svg>
        <div class="text">
            <h4>Vận chuyển toàn quốc</h4>
            <p>Thanh toán khi <b>NHẬN HÀNG</b></p>
        </div>
    </div>

    <div class="feature-box">
        <svg
                style="color: #e95221"
                xmlns="http://www.w3.org/2000/svg"
                width="30"
                height="30"
                fill="currentColor"
                class="bi bi-hand-thumbs-up"
                viewBox="0 0 16 16"
        >
            <path
                    d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2 2 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a10 10 0 0 0-.443.05 9.4 9.4 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a9 9 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.2 2.2 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.9.9 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"
            />
        </svg>
        <div class="text">
            <h4>Bảo đảm chất lượng</h4>
            <p>Sản phẩm bảo đảm chất lượng</p>
        </div>
    </div>

    <div class="feature-box">
        <svg
                style="color: #e95221"
                xmlns="http://www.w3.org/2000/svg"
                width="30"
                height="30"
                fill="currentColor"
                class="bi bi-credit-card"
                viewBox="0 0 16 16"
        >
            <path
                    d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1z"
            />
            <path
                    d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1z"
            />
        </svg>
        <div class="text">
            <h4>Tiến hành thanh toán</h4>
            <p>Với nhiều <b>PHƯƠNG THỨC</b></p>
        </div>
    </div>

    <div class="feature-box">
        <svg
                style="color: #e95221"
                xmlns="http://www.w3.org/2000/svg"
                width="30"
                height="30"
                fill="currentColor"
                class="bi bi-coin"
                viewBox="0 0 16 16"
        >
            <path
                    d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518z"
            />
            <path
                    d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"
            />
            <path
                    d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11m0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12"
            />
        </svg>
        <div class="text">
            <h4>Đổi sản phẩm mới</h4>
            <p>Nếu sản phẩm lỗi</p>
        </div>
    </div>
</div>

<!-- Product Category Section -->
<section class="product-category">
    <div class="container">
        <h2 class="section-title">Danh Mục Console & Tay Cầm</h2>
        <div class="category-grid">
            <!-- Category 1 -->
            <div class="category-item">
                <img src="https://m.media-amazon.com/images/I/51YXZgm0DbL._AC_SL1000_.jpg" alt="Console" />
                <div class="category-info">
                    <h3>Console</h3>
                    <p>PlayStation, Xbox, Nintendo Switch</p>
                </div>
            </div>
            <!-- Category 2 -->
            <div class="category-item">
                <img
                        src="https://rptech.qa/cdn/shop/files/optimize_2_2048x.png?v=1734450756"
                        alt="Controller"
                />
                <div class="category-info">
                    <h3>Tay Cầm</h3>
                    <p>Gamepad chất lượng cao cho mọi console</p>
                </div>
            </div>
            <!-- Category 3 -->
            <div class="category-item">
                <img src="https://bizweb.dktcdn.net/100/321/653/files/ps4-slim.jpg?v=1616142349737" alt="Accessory" />
                <div class="category-info">
                    <h3>Phụ Kiện</h3>
                    <p>Ốp lưng, sạc, tai nghe, phụ kiện gaming</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="best-prices">
    <h2>Giá ưu đãi</h2>
    <div class="product-grid">
        <div class="product-card product-item" data-id="C008">
            <div class="discount">-20%</div>
            <img src="Assets/image/console.webp" alt="Smart TV" />
            <div class="info">
                <h3>Xbox Game Pass</h3>
                <p class="price">16.520.000đ</p>
                <div class="stars">★★★★★</div>
                <p class="sold">Đã mua 2.7K</p>
                <button class="buy-btn"><i>🛒</i> Mua ngay</button>
            </div>
        </div>

        <div class="product-card product-item" data-id="C009">
            <div class="discount">-20%</div>
            <img src="Assets/image/baner3.webp" alt="Laptop" />
            <div class="info">
                <h3>Meta Quest 3S</h3>
                <p class="price">18.340.000đ</p>
                <div class="stars">★★★★★</div>
                <p class="sold">Đã mua 2K</p>
                <button class="buy-btn"><i>🛒</i> Mua ngay</button>
            </div>
        </div>

        <div class="product-card product-item" data-id="C0010">
            <div class="discount">-20%</div>
            <img src="Assets/image/baner4.webp" alt="Watch" />
            <div class="info">
                <h3>Xbox Game Pass2</h3>
                <p class="price">9.020.000đ</p>
                <div class="stars">★★★★★</div>
                <p class="sold">Đã mua 1K</p>
                <button class="buy-btn"><i>🛒</i> Mua ngay</button>
            </div>
        </div>

        <div class="product-card product-item" data-id="C0011">
            <div class="discount">-20%</div>
            <img src="Assets/image/ps5.webp" alt="Tablet" />
            <div class="info">
                <h3>Play Station 5</h3>
                <p class="price">20.230.000đ</p>
                <div class="stars">★★★★★</div>
                <p class="sold">Đã mua 5K</p>
                <button class="buy-btn"><i>🛒</i> Mua ngay</button>
            </div>
        </div>
    </div>
</section>
<!-- MACBOOK SECTION -->
<section class="featured-product">
    <div class="featured-content">
        <div class="text">
            <h1>BACKBONE ONE<br />Microsoft Xbox</h1>
            <div class="line"></div>
            <p class="subtitle">SKU: BB-02-B-XW</p>
            <p class="details">138g &nbsp; | &nbsp; Lightning Xbox</p>

            <div class="price-box">
                <span class="new-price">16.520.000đ</span>
                <span class="old-price">18.540.000đ</span>
            </div>
        </div>

        <div class="image">
            <img src="/Assets/image/console.webp" alt="" />
        </div>
    </div>
</section>

<!-- CAMERA SECTION -->
<section class="camera-section">
    <div class="camera-grid">
        <!-- LEFT: Banner -->
        <div class="camera-banner">
            <img src="/Assets/image/baner4.webp" alt="Camera Banner" />
            <div class="banner-text">
                <p class="top">Top Handle Brands</p>
                <h2>Tất cả sản phẩm<br />Dưới $50</h2>
                <button class="shop-btn">Mua ngay</button>
            </div>
        </div>

        <!-- MIDDLE: Video -->
        <!--
        <iframe width="402" height="715" src="https://www.youtube.com/embed/jJRDGkEvrx0" title="A closer look at the Backbone One Xbox Edition. Link in bio. @xbox #backbone #xbox" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        -->

        <div class="camera-video">
            <iframe
                    src="https://www.youtube.com/embed/jJRDGkEvrx0"
                    title="Mi Home Security Camera"
                    frameborder="0"
                    allowfullscreen
            ></iframe>
            <img src="/Assets/image/baner4.webp" alt="Camera Room" />
        </div>

        <!-- RIGHT: Product images -->
        <!--
        <div class="camera-side">
          <img src="Assets/image/camera.webp" alt="Camera 1" />
          <img src="Assets/image/grip.webp" alt="Camera 2" />
        </div>
        -->
    </div>
</section>

<!--Laptop 2-->
<section class="featured-product">
    <div class="featured-content">
        <div class="text">
            <h1>SONY PLAYSTATION 5<br />PS5</h1>
            <div class="line"></div>
            <p class="subtitle">SKU: CFI-7019</p>
            <p class="details">Wifi 7 &nbsp; | &nbsp; Adaptive Triggers</p>

            <div class="price-box">
                <span class="new-price">20.230.000đ</span>
                <span class="old-price">22.230.000đ</span>
            </div>
        </div>

        <div class="image">
            <img src="/Assets/image/ps5.webp" alt="Ps5" />
        </div>
    </div>
</section>

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