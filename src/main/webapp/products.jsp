<%-- Created by IntelliJ IDEA.--%>
<%--  User: HUU DAT--%>
<%--  Date: 12/6/2025--%>
<%--  Time: 6:46 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<jsp:include page="/Assets/component/recycleFiles/header.jsp"/>


<main id="content">
    <!--  lọc sản phẩm  -->
    <form id="filterForm"
          action="${pageContext.request.contextPath}/filter-products"
          method="get">

        <div class="filter" id="filter-panel">

            <!-- phân loại -->
            <div class="title">LOẠI SẢN PHẨM</div>
            <c:forEach var="c" items="${categories}">
                <div class="choice">
                    <input type="radio"
                           name="categoryId"
                           value="${c.ID}"
                           <c:if test="${param.categoryId == c.ID}">checked</c:if>>
                    <label>${c.name}</label>
                </div>
            </c:forEach>

            <!-- giá -->
            <div class="title">CHỌN MỨC GIÁ</div>

            <div class="choice">
                <input type="radio" name="priceRange" value="under500"
                       <c:if test="${param.priceRange == 'under500'}">checked</c:if>>
                <label>Giá dưới 500.000đ</label>
            </div>

            <div class="choice">
                <input type="radio" name="priceRange" value="500-1m"
                       <c:if test="${param.priceRange == '500-1m'}">checked</c:if>>
                <label>500.000đ - 1 triệu</label>
            </div>

            <div class="choice">
                <input type="radio" name="priceRange" value="1-2m"
                       <c:if test="${param.priceRange == '1-2m'}">checked</c:if>>
                <label>1 - 2 triệu</label>
            </div>

            <div class="choice">
                <input type="radio" name="priceRange" value="2-3m"
                       <c:if test="${param.priceRange == '2-3m'}">checked</c:if>>
                <label>2 - 3 triệu</label>
            </div>

            <div class="choice">
                <input type="radio" name="priceRange" value="over3m"
                       <c:if test="${param.priceRange == 'over3m'}">checked</c:if>>
                <label>Trên 3 triệu</label>
            </div>

            <!-- thương hiệu -->
            <div class="title">THƯƠNG HIỆU</div>
            <c:forEach var="b" items="${brands}">
                <div class="choice">
                    <input type="checkbox"
                           name="brandId"
                           value="${b.ID}"
                    <c:if test="${fn:contains(fn:join(paramValues.brandId, ','), b.ID)}">
                           checked
                    </c:if>>
                    <label>${b.brand_name}</label>
                </div>
            </c:forEach>

            <!-- pin -->
            <div class="title">Pin</div>
            <c:forEach var="e" items="${energy}">
                <div class="choice">
                    <input type="checkbox"
                           name="useTime"
                           value="${e.useTime}"
                    <c:if test="${fn:contains(fn:join(paramValues.useTime, ','), e.useTime)}">
                           checked
                    </c:if>>
                    <label>${e.useTime} hours</label>
                </div>
            </c:forEach>

        </div>
    </form>


    <!-- san pham           -->
    <div class="contain">

        <div class="contain-header">
            <div class="Loai">Console</div>
                <%--Chức năng sắp xếp theo giá tăng/giảm dần và mới nhất--%>
            <form method="get" id="sortForm">
            <div class="sort">
                <i class="fa-solid fa-arrow-down-wide-short"></i></i>
                <label>Sắp xếp:</label>

                <div class="sort-box" onclick="toggleSortMenu()">
                    <span class="sort-selected">
                        <c:choose>
                            <c:when test="${param.sort == 'price_asc'}">Giá tăng dần</c:when>
                            <c:when test="${param.sort == 'price_desc'}">Giá giảm dần</c:when>
                            <c:when test="${param.sort == 'newest'}">Hàng mới nhất</c:when>
                            <c:otherwise>Mặc định</c:otherwise>
                        </c:choose>
                    </span>
                    <i class="fa-solid fa-chevron-down"></i>
                </div>
                    <%--hidden input gui len servlet--%>
                    <input type="hidden" name="sort" id="sortInput" value="${param.sort}">

                    <ul class="sort-menu" id="sortMenu">
                        <li onclick="selectSort('')">Mặc định</li>
                        <li onclick="selectSort('price_asc')">Giá tăng dần</li>
                        <li onclick="selectSort('price_desc')">Giá giảm dần</li>
                        <li onclick="selectSort('newest')">Hàng mới nhất</li>
                    </ul>
                </div>
            </form>
        </div>





        <button id="filter-btn" class="filter-toggle">
            <i class="fa-solid fa-sliders"></i> Bộ lọc
        </button>


        <!--  San Pham -->
        <div id="product-list">

            <c:forEach var="c" items="${products}">
                <a href="${pageContext.request.contextPath}/product-detail?id=${c.ID}">
                    <div class="product-item sony handheldpc">
                        <img src="${c.image}" alt="">

                        <c:if test="${c.ispremium}">
                            <div class="tag">Premium</div>
                        </c:if>
                        <div class="product-info">
                            <h4>${c.name}</h4>
                            <p class="price">${c.price}đ</p>
                        </div>
                    </div>
                </a>
            </c:forEach>


        </div>

        <!-- pagination-->
        <div class="pagination">
            <c:forEach begin="1" end="${totalPage}" var="i">
                <a href="${pageContext.request.contextPath}/product?page=${i}&sort=${param.sort}"
                   class="${i == currentPage ? 'active' : ''}">
                        ${i}
                </a>
            </c:forEach>

            <c:if test="${currentPage < totalPage}">
                <a href="${pageContext.request.contextPath}/product?page=${currentPage + 1}&sort=${param.sort}">
                    &raquo;
                </a>
            </c:if>
        </div>

        <div id="no-products-message" style="display:none; text-align: center; margin-top: 20px;">
            ❌ Không có sản phẩm nào phù hợp với tiêu chí lọc.
        </div>

    </div>


</main>

<%-- chức năng sắp xếp sản phẩm theo giá tăng, giảm dần--%>
<script>
    function toggleSortMenu(){
        document.getElementById("sortMenu").classList.toggle("active");
    }

    function selectSort(value){
        document.getElementById("sortInput").value = value;
        document.getElementById("sortForm").submit();
    }

    // đóng menu khi click ra ngoài
    document.addEventListener("click", function (e){
        if (!e.target.closest(".sort")){
            document.getElementById("sortMenu").classList.remove("active");

        }
    });
</script>


<script>
    let filterTimeout;

    document.querySelectorAll(
        '#filter-panel input[type="checkbox"], #filter-panel input[type="radio"]'
    ).forEach(input => {
        input.addEventListener('change', () => {
            clearTimeout(filterTimeout);
            filterTimeout = setTimeout(() => {
                document.getElementById('filterForm').submit();
            }, 500); // 0.5 giây
        });
    });
</script>

<script>
    document.querySelectorAll('#filter-panel input[type="radio"]').forEach(function (radio) {

        radio.addEventListener('click', function () {

            var name = this.name;

            // nếu radio đã được check từ trước -> bỏ check
            if (this.wasChecked) {
                this.checked = false;
            }

            // reset trạng thái cho tất cả radio cùng name
            document.querySelectorAll('input[name="' + name + '"]')
                .forEach(function (r) {
                    r.wasChecked = false;
                });

            // lưu trạng thái hiện tại
            this.wasChecked = this.checked;

            // submit form
            document.getElementById('filterForm').submit();
        });
    });
</script>

<jsp:include page="/Assets/component/recycleFiles/footer.jsp"/>
</body>
</html>
