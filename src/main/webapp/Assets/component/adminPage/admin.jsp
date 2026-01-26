<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/Assets/css/AdminPage/admin.css">
</head>
<body>

<div class="admin-wrapper">

    <div class="sidebar">
        <div class="logo">Admin</div>
        <ul class="menu">
            <li><a href="${pageContext.request.contextPath}/admin">🏠 Dashboard</a></li>
            <li><a href="${pageContext.request.contextPath}/admin?page=products">📦 Quản lý sản phẩm</a></li>
            <li><a href="#">🧾 Quản lý đơn hàng</a></li>
            <li><a href="#">👤 Quản lý user</a></li>
            <li><a href="${pageContext.request.contextPath}/admin-logout">🚪 Đăng xuất</a></li>
        </ul>
    </div>


    <div class="content">
        <jsp:include page="${contentPage}" />
    </div>

</div>

</body>
</html>

