<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8"/>
    <title>Chi tiết đơn hàng</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/Assets/css/cart_payment/OrderDetails.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/Assets/css/recycleFilecss/footer.css"/>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>

<body>

<!-- HEADER -->
<jsp:include page="/Assets/component/recycleFiles/header.jsp"/>

<div class="order-detail-container">
    <h2>CHI TIẾT ĐƠN HÀNG #${order.id}</h2>

    <!-- thông báo đặt hàng thành công -->
    <c:if test="${confirmed}">
        <div class="order-success">
            <i class="fa-solid fa-circle-check"></i>
            Đặt hàng thành công!
        </div>
    </c:if>

    <p><strong>Ngày đặt:</strong> ${order.orderDate}</p>

    <!-- thông tin khách hàng -->
    <div class="order-info">
        <h3>THÔNG TIN KHÁCH HÀNG</h3>
        <p><strong>Họ tên:</strong> ${order.username}</p>
        <p><strong>Số điện thoại:</strong> ${order.phone}</p>
        <p><strong>Địa chỉ:</strong> ${order.address}</p>
    </div>

    <!-- sản phẩm -->
    <div class="order-products">
        <h3>SẢN PHẨM</h3>
        <table>
            <thead>
            <tr>
                <th>Sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá</th>
                <th>Thành tiền</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="item" items="${orderItems}">
                <tr>
                    <td>${item.productName}</td>
                    <td>${item.quantity}</td>
                    <td>
                        <fmt:formatNumber value="${item.price}" type="number" groupingUsed="true"/> ₫
                    </td>
                    <td>
                        <fmt:formatNumber value="${item.thanhtien}" type="number" groupingUsed="true"/> ₫
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- tổng tiền -->
    <div class="order-summary">
        <p>
            <strong>Tổng cộng:</strong>
            <span class="total">
                <fmt:formatNumber value="${order.totalPrice}" type="number" groupingUsed="true"/> ₫
            </span>
        </p>
    </div>

    <!-- button -->
    <div class="order-actions">
        <c:if test="${!confirmed}">
            <form action="${pageContext.request.contextPath}/confirm-order" method="post">
                <button type="submit" class="confirm-btn">
                    <i class="fa-solid fa-check"></i> Xác nhận đặt hàng
                </button>
            </form>
        </c:if>


    </div>
</div>

<c:if test="${confirmed}">
    <c:remove var="pendingOrder" scope="session"/>
    <c:remove var="pendingOrderItems" scope="session"/>
    <c:remove var="orderConfirmed" scope="session"/>
    <c:remove var="confirmedOrderId" scope="session"/>
</c:if>


<!-- FOOTER -->
<jsp:include page="/Assets/component/recycleFiles/footer.jsp"/>

</body>
</html>
