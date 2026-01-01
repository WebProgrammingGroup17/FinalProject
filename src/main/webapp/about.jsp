<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/6/2025
  Time: 6:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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

<%@ include file="Assets/component/recycleFiles/header.jsp" %>


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

<%@ include file="Assets/component/recycleFiles/footer.jsp" %>
</body>
</html>
