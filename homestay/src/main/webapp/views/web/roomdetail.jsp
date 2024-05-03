<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Room Detail</title>
</head>
<body>
<section class="room-details-section spad">
    <div class="container">
        <div class="row">
            <c:if test="${not empty roomlist}">
            <div class="col-lg-8">
                <div class="room-details-item">
                    <img src="${roomlist.img}" alt="">
                    <div class="rd-text">
                        <div class="rd-title">
                            <h3>${roomlist.title}</h3>
                            <div class="rdt-right">
                                <div class="rating">
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star"></i>
                                    <i class="icon_star-half_alt"></i>
                                </div>
                                <a href="#">Booking Now</a>
                            </div>
                        </div>
                        <h2>${roomlist.price}VND<span>/Day</span></h2>
                        <table>
                            <tbody>
                            <tr>
                            <c:forEach var="item" items="${categories}">
                                <c:if test="${item.id == roomlist.category_id}">
                                    <td class="r-o">Type:</td>
                                    <td>${item.name}</td>
                                </c:if>
                            </c:forEach>
                            </tr>
                            <tr>
                                <td class="r-o">Size:</td>
                                <td>${roomlist.acreage} m2</td>
                            </tr>
                            <tr>
                                <td class="r-o">Capacity:</td>
                                <td>${roomlist.capacity} person </td>
                            </tr>
                            <tr>
                                <td class="r-o">Bed:</td>
                                <td>${roomlist.amount_bed} /bed</td>
                            </tr>
                            <tr>
                                <td class="r-o">Services:</td>
                                <td style="overflow: hidden;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 1;">
                                        ${roomlist.amenities}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <p class="f-para">${roomlist.description}</p>
                        <p>The two commonly known recreational vehicle classes are the motorized and towable.
                            Towable rvs are the travel trailers and the fifth wheel. The rv travel trailer or fifth
                            wheel has the attraction of getting towed by a pickup or a car, thus giving the
                            adaptability of possessing transportation for you when you are parked at your campsite.
                        </p>
                    </div>
                </div>
                </c:if>
                <div class="review-add">
                    <h4>Add Review</h4>
                    <form action="#" class="ra-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="Name*">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Email*">
                            </div>
                            <div class="col-lg-12">
                                <div>
                                    <h5>You Rating:</h5>
                                    <div class="rating">
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star-half_alt"></i>
                                    </div>
                                </div>
                                <textarea placeholder="Your Review"></textarea>
                                <button type="submit">Submit Now</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="room-booking">
                    <h3>Your Reservation</h3>
                    <form action="#">
                        <div class="check-date">
                            <label for="date-in">Check In:</label>
                            <input type="text" class="date-input" id="date-in">
                            <i class="icon_calendar"></i>
                        </div>
                        <div class="check-date">
                            <label for="date-out">Check Out:</label>
                            <input type="text" class="date-input" id="date-out">
                            <i class="icon_calendar"></i>
                        </div>
                        <div class="select-option">
                            <label for="guest">Guests:</label>
                            <select id="guest">
                                <option value="">3 Adults</option>
                            </select>
                        </div>
                        <div class="select-option">
                            <label for="room">Room:</label>
                            <select id="room">
                                <option value="">1 Room</option>
                            </select>
                        </div>
                        <button type="submit">Check Availability</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Room Details Section End -->
</body>
</html>
