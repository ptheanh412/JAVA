<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Rooms</title>
</head>

<body>
<!-- Rooms Section Begin -->
<section class="rooms-section spad">
    <div class="container">
        <div class="row">
            <c:forEach var="list" items="${roomlist}">
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="${list.img}" alt="" style="width: 360px; height: 270px">
                    <div class="ri-text">
                        <h4>${list.title}</h4>
                        <h3>${list.price}VND<span>/Day</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <c:forEach var="item" items="${categories}">
                                    <c:if test="${item.id == list.category_id}">
                                        <td class="r-o">Type:</td>
                                        <td>${item.name}</td>
                                    </c:if>
                                </c:forEach>
                            </tr>
                            <tr>
                                <td class="r-o">Size:</td>
                                <td>${list.acreage} m2</td>
                            </tr>
                            <tr>
                                <td class="r-o">Capacity:</td>
                                <td>${list.capacity} person </td>
                            </tr>
                            <tr>
                                <td class="r-o">Bed:</td>
                                <td>${list.amount_bed} /bed</td>
                            </tr>
                            <tr>
                                <td class="r-o">Services:</td>
                                <td style="overflow: hidden;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 1;">
                                        ${list.amenities}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="/room-detail?id=${list.id}" class="primary-btn">More Details</a>
                    </div>
                </div>
            </div>
            </c:forEach>
            <div class="col-lg-12">
                <div class="room-pagination">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">Next <i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>


</body>

</html>