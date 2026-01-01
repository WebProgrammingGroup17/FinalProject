<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/27/2025
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/login_logout/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/same_style/style.css">
    <link rel="stylesheet" href="/Assets/css/recycleFilecss/header.css">
    <link rel="stylesheet" href="/Assets/css/recycleFilecss/footer.css">
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
<%@ include file="../recycleFiles/header.jsp" %>
<form action="" class="form-login" id="loginForm2">
    <div class="container1">
        <h2 class="title">ĐĂNG NHẬP</h2>
        <input class="input" type="text" type="email" id="username" placeholder="Tên đăng nhập/Email"><br>
        <input class="input" type="password" id="password" placeholder="Mật Khẩu"><br>
        <button class="button" type="submit">Đăng nhập</button>
        <p id="message"></p>
        <a href="">Quên mật khẩu</a>
        <a href="" class="link1">Đăng ký tại đây</a>
    </div>
</form>
<%@ include file="../recycleFiles/footer.jsp" %>
</body>
</html>
