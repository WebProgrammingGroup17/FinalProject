<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/same_style/style.css">
    <link rel="stylesheet" href="/Assets/css/recycleFilecss/header.css">
    <link rel="stylesheet" href="/Assets/css/recycleFilecss/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/login_logout/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"/>
</head>
<body>
<%@ include file="../recycleFiles/header.jsp"%>

<!-- Form đăng ký -->
<form action="<%= request.getContextPath() %>/register" method="post" class="form-register" id="registerForm">
    <div class="container1">
        <h2 class="title">ĐĂNG KÝ</h2>
        <p>Đã có tài khoản? <a href="<%= request.getContextPath() %>/login.jsp">Đăng nhập tại đây</a></p>

        <!-- Hiển thị thông báo từ server -->
        <% if (session.getAttribute("msg") != null) { %>
        <div class="alert alert-info">
            <%= session.getAttribute("msg") %>
        </div>
        <% session.removeAttribute("msg"); %>
        <% } %>

        <input class="input" type="text" name="username" placeholder="Nhập tên đăng nhập(*)" required><br>
        <input class="input" type="email" name="email" placeholder="Nhập email của bạn(*)" required><br>
        <input class="input" type="text" name="phoneNum" placeholder="Số điện thoại"><br>
        <input class="input" type="password" name="password" placeholder="Mật khẩu(*)" required><br>
        <input class="input" type="password" name="confirm_password" placeholder="Nhập lại mật khẩu(*)" required><br>

        <button class="button" type="submit">ĐĂNG KÝ</button>

        <p id="register_message"></p>
    </div>
</form>

<%@ include file="../recycleFiles/footer.jsp"%>
</body>
</html>
