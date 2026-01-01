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
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Liên hệ</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    />
    <link rel="stylesheet" href="Assets/css/homeStyle/contact.css" />
    <link rel="stylesheet" href="Assets/css/recycleFilecss/header.css" />
    <link rel="stylesheet" href="Assets/css/recycleFilecss/footer.css" />
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
<main>
    <!-- <div id="header"></div> -->

    <%@ include file="Assets/component/recycleFiles/header.jsp" %>





    <section class="contact-section">
        <div class="contact-container">
            <!-- Phần thông tin bên trái -->
            <div class="contact-info">
                <h4 class="contact-title">liên hệ</h4>
                <h2 class="store-title">Thông tin cửa hàng của chúng tôi</h2>

                <div class="info-item">
                    <i class="fa-solid fa-building" style="color: #e95221"></i>
                    <p>
                        Địa chỉ: Khu phố 6, Phường Linh Trung, Quận Thủ Đức, TP. Hồ Chí
                        Minh.
                    </p>
                </div>

                <div class="info-item">
                    <i class="fa-solid fa-envelope" style="color: #e95221"></i>
                    <p>Email: nhom17@gmail.com</p>
                </div>

                <h3 class="feedback-title">
                    Chúng tôi luôn sẵn sàng lắng nghe những gì bạn nói
                </h3>
                <textarea
                        style="height: 50px"
                        class="feedback-input"
                        placeholder="Viết cho tôi những lưu ý..."
                ></textarea>
                <button class="feedback-btn">Gửi</button>
            </div>

            <div class="contact-image">
                <img
                        src="/Assets/image/contact_support-team.jpg"
                        alt="Support Team"
                />
            </div>
        </div>
    </section>
</main>
<!-- <div id="footer"></div>
<script src="/Assets/js/main.js"></script> -->


<%@ include file="Assets/component/recycleFiles/footer.jsp" %>
</body>
</html>