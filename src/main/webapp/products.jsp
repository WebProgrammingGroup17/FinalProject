<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/6/2025
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


        <div class="title">THƯƠNG HIỆU</div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt1" name="checkbox2" value="sony"><label>Sony</label>
        </div>

        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt2" name="checkbox2" value="nintendo"><label>Nintendo</label>
        </div>

        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt3" name="checkbox2" value="xbox"><label>Xbox</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt4" name="checkbox2" value="asus"><label>Asus</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt5" name="checkbox2" value="steam"><label>Steam</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt6" name="checkbox2" value="msi"><label>MSI</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt7" name="checkbox2" value="gdp"><label>GDP</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt8" name="checkbox2" value="ayaneo"><label>Ayaneo</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt9" name="checkbox2" value="anbernic"><label>Anbernic</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt10" name="checkbox2" value="retroid"><label>Retroid</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-brand" id="checkt11" name="checkbox2" value="miyoo"><label>Miyoo</label>
        </div>

        <div class="title">
            DANH MỤC
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-category" id="checkt8" name="checkbox2"  value="homeconsole"><label>Home Console</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-category" id="checkt9" name="checkbox2"  value="remotehandheld"   ><label>Remote Handheld</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-category" id="checkt9" name="checkbox2" value="handheldpc"><label>Handheld PC</label>
        </div>
        <div class="choice">
            <input type="checkbox" class="check filter-category" id="checkt9" name="checkbox2" value="handheldconsole"><label>Handheld Console</label>
        </div>

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


        <div id="product-list"></div>
        <!--  San Pham -->
        <div id="product-list">
            <!--SP1 -->
            <div class="product-item sony remotehandheld" data-id="C001">
                <img src="Assets/image/products1.png" alt="">
                <div class="tag">Premium</div>

                <div class="product-info">
                    <h4>Tay Cầm Chơi Game Flydigi Vader 4 Pro Controller</h4>
                    <p class="price">2.599.000 ₫</p>
                </div>
            </div>

            <!-- SP 2 -->
            <div class="product-item sony remotehandheld" data-id="C002">
                <img src="Assets/image/products2.png" alt="">
                <div class="tag">Premium</div>

                <div class="product-info">
                    <h4>Tay Cầm Chơi Game Flydigi Apex 5 Elite Controller</h4>
                    <p class="price">2.149.000 ₫</p>
                </div>
            </div>

            <!-- SP 3 -->
            <div class="product-item sony remotehandheld" data-id="C003">
                <img src="Assets/image/products3.png" alt="">
                <div class="tag">Premium</div>

                <div class="product-info">
                    <h4>Tay Cầm Chơi Game Flydigi Apex 5 Wuchang Controller</h4>
                    <p class="price">2.349.000 ₫</p>
                </div>
            </div>

            <!-- SP 4 -->
            <div class="product-item sony remotehandheld" data-id="C004">
                <img src="Assets/image/products4.png" alt="">
                <div class="tag">Premium</div>

                <div class="product-info">
                    <h4>Tay Cầm Chơi Game Flydigi Direwolf 3 Controller</h4>
                    <p class="price">2.239.000 ₫</p>
                </div>
            </div>

            <!--SP2.1 -->
            <div class="product-item sony handheldpc" data-id="C005">
                <img src="Assets/image/products2_1.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro SJGAM M17 128GB – 4.3 Inch – 30.000+ Games</h4>
                    <p class="price">999.000 ₫</p>
                </div>
            </div>
            <!-- SP 2.2 --->
            <div class="product-item sony handheldpc" data-id="C006">
                <img src="Assets/image/products2_2.png" alt="">

                <div class="product-info">
                    <h4>Nitro Deck White Edition</h4>
                    <p class="price">938.000 ₫</p>
                </div>
            </div>

            <!-- 2.3-->
            <div class="product-item sony homeconsole" data-id="C007">
                <img src="Assets/image/products2_3.png" alt="">

                <div class="product-info">
                    <h4>Nitro Deck Black Edition</h4>
                    <p class="price">929.000 ₫</p>
                </div>
            </div>
            <!-- 2.4 -->
            <div class="product-item sony homeconsole" data-id="C008">
                <img src="Assets/image/products2_4.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro TrimUI Smart Pro – 4.96 Inch – 20.000+ Games</h4>
                    <p class="price">1.849.000 ₫</p>
                </div>
            </div>

            <!--   3.1      -->
            <div class="product-item sony homeconsole" data-id="C009">
                <img src="Assets/image/products3_1.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro G5 – 3.0 Inch – 500+ Games</h4>
                    <p class="price">189.000 ₫</p>
                </div>
            </div>

            <!-- 3.2-->
            <div class="product-item sony homeconsole" data-id="C0010">
                <img src="Assets/image/products3_2.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro R36S Real – 3.5 Inch – 20.000+ Games</h4>
                    <p class="price">749.000 ₫</p>
                </div>
            </div>


            <!--3.3-->
            <div class="product-item sony homeconsole" data-id="C0011">
                <img src="Assets/image/products3_3.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro SJGAM M19 – 3.5 Inch – 17.000+ Games</h4>
                    <p class="price">1.199.000 ₫</p>
                </div>
            </div>

            <!--3.4-->
            <div class="product-item sony homeconsole" data-id="C0012">
                <img src="Assets/image/products3_4.png" alt="">


                <div class="product-info">
                    <h4>Máy Game Retro TrimUI Brick – 3.2 Inch – 20.000+ Games</h4>
                    <p class="price">1.649.000 ₫</p>
                </div>
            </div>

            <!--4.1-->
            <div class="product-item sony homeconsole" data-id="C0013">
                <img src="Assets/image/products4_1.png" alt="">

                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Ghost Cipher Special Edition</h4>
                    <p class="price">1.499.000 ₫</p>
                </div>
            </div>

            <!-- 4.2-->
            <div class="product-item sony homeconsole" data-id="C0014">
                <img src="Assets/image/products4_2.png" alt="">

                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Fire Vapor Special Edition</h4>
                    <p class="price">1.499.000 ₫</p>
                </div>
            </div>


            <!-- 4.3-->
            <div class="product-item sony remotehandheld" data-id="C0015">
                <img src="Assets/image/products4_3.png" alt="">

                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Velocity Green</h4>
                    <p class="price">1.249.000 ₫</p>
                </div>
            </div>

            <!--4.4-->
            <div class="product-item miyoo homeconsole" data-id="C0016">
                <img src="Assets/image/products4_4.png" alt="">


                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Sky Cipher Special Edition</h4>
                    <p class="price">1.449.000 ₫</p>
                </div>
            </div>

            <div class="product-item sony homeconsole" data-id="C009">
                <img src="Assets/image/products3_1.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro G5 – 3.0 Inch – 500+ Games</h4>
                    <p class="price">189.000 ₫</p>
                </div>
            </div>

            <!-- 3.2-->
            <div class="product-item sony homeconsole" data-id="C0010">
                <img src="Assets/image/products3_2.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro R36S Real – 3.5 Inch – 20.000+ Games</h4>
                    <p class="price">749.000 ₫</p>
                </div>
            </div>


            <!--3.3-->
            <div class="product-item sony homeconsole" data-id="C0011">
                <img src="Assets/image/products3_3.png" alt="">

                <div class="product-info">
                    <h4>Máy Game Retro SJGAM M19 – 3.5 Inch – 17.000+ Games</h4>
                    <p class="price">1.199.000 ₫</p>
                </div>
            </div>

            <!--3.4-->
            <div class="product-item sony homeconsole" data-id="C0012">
                <img src="Assets/image/products3_4.png" alt="">


                <div class="product-info">
                    <h4>Máy Game Retro TrimUI Brick – 3.2 Inch – 20.000+ Games</h4>
                    <p class="price">1.649.000 ₫</p>
                </div>
            </div>

            <!--4.1-->
            <div class="product-item sony homeconsole" data-id="C0013">
                <img src="Assets/image/products4_1.png" alt="">

                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Ghost Cipher Special Edition</h4>
                    <p class="price">1.499.000 ₫</p>
                </div>
            </div>

            <!-- 4.2-->
            <div class="product-item sony homeconsole" data-id="C0014">
                <img src="Assets/image/products4_2.png" alt="">

                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Fire Vapor Special Edition</h4>
                    <p class="price">1.499.000 ₫</p>
                </div>
            </div>


            <!-- 4.3-->
            <div class="product-item sony remotehandheld" data-id="C0015">
                <img src="Assets/image/products4_3.png" alt="">

                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Velocity Green</h4>
                    <p class="price">1.249.000 ₫</p>
                </div>
            </div>

            <!--4.4-->
            <div class="product-item miyoo homeconsole" data-id="C0016">
                <img src="Assets/image/products4_4.png" alt="">


                <div class="product-info">
                    <h4>Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Sky Cipher Special Edition</h4>
                    <p class="price">1.449.000 ₫</p>
                </div>
            </div>


        </div>

        <!-- pagination-->
        <div class="pagination">
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">7</a>
            <a href="#">8</a>
            <a href="#">9</a>
            <a href="#">10</a>
            <a href="#">&raquo;</a>

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
