<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/6/2025
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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

<%@ include file="Assets/component/recycleFiles/header.jsp" %>


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


<%@ include file="Assets/component/recycleFiles/footer.jsp" %>
</body>
</html>
