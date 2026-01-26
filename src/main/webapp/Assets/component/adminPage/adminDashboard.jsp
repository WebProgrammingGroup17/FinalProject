<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/Assets/css/AdminPage/adminDashboard.css">
</head>
<body>

<div class="admin-wrapper">

    <div class="sidebar">
        <h2 class="logo">${sessionScope.admin.username}</h2>

        <ul class="menu">
            <li><a href="#">🏠 Dashboard</a></li>
            <li><a href="#">📦 Quản lý sản phẩm</a></li>
            <li><a href="#">🧾 Quản lý đơn hàng</a></li>
            <li><a href="#">👤 Quản lý user</a></li>
            <li><a href="${pageContext.request.contextPath}/admin-logout">🚪 Đăng xuất</a></li>
        </ul>
    </div>

    <!-- CONTENT -->
    <div class="content">
        <div class="header">
            <h1>Xin chào ${sessionScope.admin.username} 👋</h1>
            <p>Chào mừng bạn đến trang quản trị</p>
        </div>

        <div class="cards">
            <div class="card">
                <h3>Sản phẩm</h3>
                <p>120</p>
            </div>

            <div class="card">
                <h3>Đơn hàng</h3>
                <p>45</p>
            </div>

            <div class="card">
                <h3>User</h3>
                <p>300</p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
