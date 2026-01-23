<%--
  Created by IntelliJ IDEA.
  User: HUU DAT
  Date: 12/6/2025
  Time: 6:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/cart_payment/payment.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Assets/css/same_style/style.css">
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
<!--Header-->
<jsp:include page="/Assets/component/recycleFiles/header.jsp" />

<main>
    <div class="container1">
        <div class="grid_three_colum">
            <div class="information1">
                <p class="title title1">Thông tin nhận hàng</p>
                <div class="name_infor">
                    <p class="p1 p-same">Họ và tên người nhận hàng</p>
                    <p class="p2">${sessionScope.auth.username}</p>
                </div>
                <div class="name_infor">
                    <p class="p1 p-same">Số Điện Thoại</p>
                    <p class="p2">${sessionScope.auth.phoneNum}</p>
                </div>
                <!-- CHƯA CÓ ĐỊA CHỈ / ĐÃ CÓ ĐỊA CHỈ -->
                <c:choose>
                    <c:when test="${sessionScope.auth.location == null
                   || fn:trim(sessionScope.auth.location) == ''}">

                        <form action="${pageContext.request.contextPath}/update-address" method="post">
                            <div class="same-style">
                                <div class="parent">
                                    <input class="input11"
                                           type="text"
                                           name="address"
                                           placeholder="Nhập địa chỉ"
                                           required />
                                    <div class="child">
                                        <p class="p3 p-same">Địa chỉ</p>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="same-btn btn-green">Lưu địa chỉ</button>
                        </form>

                    </c:when>

                    <c:otherwise>
                        <div class="name_infor">
                            <p class="p1 p-same">Địa chỉ</p>
                            <p class="p2">${sessionScope.auth.location}</p>
                        </div>
                    </c:otherwise>
                </c:choose>

                <div class="name_infor">
                    <p class="p1 p-same">Email</p>
                    <p class="p2">${sessionScope.auth.email}</p>
                </div>
                <div class="same-style">
                    <div class="parent"><input class="input11" type="text"/>
                        <div class="child"><p class="p3 p-same">Ghi chú đơn hàng (tùy chọn)</p></div>
                    </div>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/place-order" method="post">
                <div class="payment-main">
                    <p class="title title2">Thanh toán</p>
                    <div class="payment1">

                        <div class="payment_method_1 payment">
                            <div class="radio-p">
                                <input type="radio"
                                       name="paymentMethod"
                                       value="COD"
                                       required />
                                Thanh toán khi nhận hàng (COD)
                            </div>
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                     class="bi bi-cash" viewBox="0 0 16 16">
                                    <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>
                                    <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2z"/>
                                </svg>
                            </div>
                        </div>

                        <div class="payment_method_2 payment">
                            <div class="radio-p">
                                <input type="radio"
                                       name="paymentMethod"
                                       value="BANK" />
                                Thanh toán qua ngân hàng
                            </div>
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                     class="bi bi-bank2" viewBox="0 0 16 16">
                                    <path d="M8.277.084a.5.5 0 0 0-.554 0l-7.5 5A.5.5 0 0 0 .5 6h1.875v7H1.5a.5.5 0 0 0 0 1h13a.5.5 0 1 0 0-1h-.875V6H15.5a.5.5 0 0 0 .277-.916zM12.375 6v7h-1.25V6zm-2.5 0v7h-1.25V6zm-2.5 0v7h-1.25V6zm-2.5 0v7h-1.25V6zM8 4a1 1 0 1 1 0-2 1 1 0 0 1 0 2M.5 15a.5.5 0 0 0 0 1h15a.5.5 0 1 0 0-1z"/>
                                </svg>
                            </div>
                        </div>

                        <div class="button-payment button-top">
                            <input type="radio"
                                   name="paymentMethod"
                                   value="CARD"
                                   style="display:none" />
                            <p class="font-big">Thanh toán qua thẻ</p>
                            <p class="font-small">Visa, Master, JCB</p>
                        </div>

                        <div class="button-payment button-bottom">
                            <input type="radio"
                                   name="paymentMethod"
                                   value="INSTALLMENT"
                                   style="display:none" />
                            <p class="font-big">Trả góp qua thẻ</p>
                            <p class="font-small">Visa, Master, JCB</p>
                        </div>

                    </div>
                </div>
            </form>

            <div class="product1">
                <p class="title title3">
                    Đơn hàng (${quantity} sản phẩm)
                </p>


                    <div class="flex_infor_product padding-same same">
                        <div class="part1">
                            <div class="parent2">
                                <img src="${product.image}" alt="${product.metatitle}" />
                                <div class="child2">
                                    <p class="number">${quantity}</p>
                                </div>
                            </div>
                        </div>

                        <div>
                            <p class="title-item">
                                    ${product.name}
                            </p>
                        </div>

                        <div class="part3">
                            <p>${totalPrice}đ</p>
                        </div>
                    </div>


                <!-- MÃ GIẢM GIÁ -->
                <div class="same-style same">
                    <div class="parent">
                        <input class="input11" type="text" name="discountCode"
                               placeholder="Nhập mã giảm giá" />
                        <div class="child">
                            <p class="p3 p-same">Mã giảm giá</p>
                        </div>
                    </div>
                    <button class="btn-use" type="button" style="cursor:pointer">
                        Sử dụng
                    </button>
                </div>

                <!-- TỔNG TIỀN -->
                <div class="infor2 same grid-same">
                    <div class="total-price"><p>Tổng cộng:</p></div>
                    <div>
                        <p style="font-size:20px">${totalPrice}đ</p>
                    </div>
                </div>

                <!-- NÚT -->
                <div class="update_and_order same grid-same">
                    <div>
                        <button class="same-btn btn-green" type="button">
                            <a href="${pageContext.request.contextPath}/cart"
                               style="color:#fff">Sửa giỏ hàng</a>
                        </button>
                        <button class="same-btn btn-green" type="button">
                            <a href="${pageContext.request.contextPath}/profile"
                               style="color:#fff">Sửa địa chỉ</a>
                        </button>
                    </div>

                    <button type="submit"
                            class="same-btn btn-red"
                            style="cursor:pointer">
                        Đặt hàng
                    </button>
                </div>
            </div>

        </div>
    </div>
</main>


<!--Footer-->
<jsp:include page="/Assets/component/recycleFiles/footer.jsp" />
</body>
</html>