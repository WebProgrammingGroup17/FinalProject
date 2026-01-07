<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/27/2025
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/login_logout/register.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/same_style/style.css">
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
<jsp:include page="/Assets/component/recycleFiles/header.jsp" />


<form action="" class="form-register" id="registerForm">
    <div class="container1">
        <h2 class="title">ĐĂNG KÝ</h2>
        <p>Đã có tài khoản, đăng nhập <a href="#">tại đây</a></p>
        <input class="input" type="text" id="reg_username" placeholder="Nhập tên của bạn(*)"><br>
        <input class="input" type="email" id="reg_email" placeholder="Nhập email của bạn(*)"><br>
        <input class="input" type="text" id="reg_phone" placeholder="Số điện thoại"><br>
        <input class="input" type="password" id="reg_password" placeholder="Mật khẩu"><br>
        <input class="input" type="password" id="reg_confirm" placeholder="Nhập lại mật khẩu"><br>
        <button class="button" type="submit">ĐĂNG KÝ</button>
        <p id="register_message"></p>
    </div>
</form>
<jsp:include page="/Assets/component/recycleFiles/footer.jsp" />
</body>
</html>
