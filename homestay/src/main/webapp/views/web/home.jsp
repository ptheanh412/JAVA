<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Homestay</title>
</head>
<body>
<section class="hero-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="hero-text">
                    <h1>Homestay in Dalat</h1>
                    <p>Here are the best homestay booking sites, including recommendations for international
                        travel and for finding low-priced</p>
                </div>
            </div>
            <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                <div class="booking-form">
                    <h3>Booking Homestay</h3>
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
                                <option value="">2 Adults</option>
                                <option value="">3 Adults</option>
                            </select>
                        </div>
                        <div class="select-option">
                            <label for="room">Room:</label>
                            <select id="room">
                                <option value="">1 Room</option>
                                <option value="">2 Room</option>
                            </select>
                        </div>
                        <button type="submit">Check Availability</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/image/memory/1.jpg"/>"></div>
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/image/home.jpg"/>"></div>
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/image/memory/3.jpg"/>"></div>
    </div>
</section>
<!-- Hero Section End -->

<!-- About Us Section Begin -->
<section class="aboutus-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-text">
                    <div class="section-title">
                        <span>About Us</span>
                        <h2>Healing in Dallas <br/>TayNguyenSoundForLife</h2>
                    </div>
                    <p class="f-para">Homestay in Dalat is a leading online accommodation site. We’re passionate about
                        travel. Every day, we inspire and reach millions of travelers across 90 local websites in 41
                        languages.</p>
                    <p class="s-para">So when it comes to booking the perfect hotel, vacation rental, resort,
                        apartment, guest house, or tree house, we’ve got you covered.</p>
                    <a href="#" class="primary-btn about-btn">Read More</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-pic">
                    <div class="row">
                        <div class="col-sm-6">
                            <img src="/template/web/image/23.jpg" alt="">
                        </div>
                        <div class="col-sm-6">
                            <img src="/template/web/image/24.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Us Section End -->

<!-- Services Section End -->
<section class="services-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>What We Do</span>
                    <h2>Discover Our Services</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-036-parking"></i>
                    <h4>Travel Plan</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-033-dinner"></i>
                    <h4>Catering Service</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-026-bed"></i>
                    <h4>Babysitting</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-024-towel"></i>
                    <h4>Laundry</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-044-clock-1"></i>
                    <h4>Hire Driver</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-012-cocktail"></i>
                    <h4>Bar & Drink</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->

<!-- Home Room Section Begin -->
<section class="hp-room-section">
    <div class="container-fluid">
        <div class="hp-room-items">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Best Room</h2>
                    </div>
                </div>
                <c:forEach var="room" items="${trendyroom}">
                    <div class="col-lg-4 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="${room.img}">
                            <div class="hr-text">
                                <c:forEach var="item" items="${categories}">
                                    <c:if test="${item.id eq room.category_id}">
                                        <h3>${item.name}</h3>
                                    </c:if>
                                </c:forEach>

                                <h3>${room.price}VND<span>/Day</span></h3>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="r-o">Size:</td>
                                        <td>${room.acreage} m2</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Capacity:</td>
                                        <td>Max person ${room.capacity}</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Bedroom</td>
                                        <td>${room.amount_bed} /bed</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">Services:</td>
                                        <td style="overflow: hidden;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 1;">
                                                ${room.amenities}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <a href="/room-detail?id=${room.id}" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <div class="hp-room-items">
        <div class="row">
        <div class="col-lg-12">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Special of Homestay</span>
                    <h2>Beautiful View</h2>
                </div>
            </div>
        </div>
        <c:forEach var="room" items="${popularroom}">
            <div class="col-lg-4 col-md-6">
                <div class="hp-room-item set-bg" data-setbg="${room.img}">
                    <div class="hr-text">
                        <c:forEach var="item" items="${categories}">
                            <c:if test="${item.id eq room.category_id}">
                                <h3>${item.name}</h3>
                            </c:if>
                        </c:forEach>

                        <h3>${room.price}VND<span>/Day</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <td class="r-o">Size:</td>
                                <td>${room.acreage} m2</td>
                            </tr>
                            <tr>
                                <td class="r-o">Capacity:</td>
                                <td>Max person ${room.capacity}</td>
                            </tr>
                            <tr>
                                <td class="r-o">Bedroom</td>
                                <td>${room.amount_bed} /bed</td>
                            </tr>
                            <tr>
                                <td class="r-o">Services:</td>
                                <td style="overflow: hidden;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 1;">
                                        ${room.amenities}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="/room-detail?id=${room.id}" class="primary-btn">More Details</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    </div>
    </div>
</section>
<!-- Home Room Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Testimonials</span>
                    <h2>What Customers Say?</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="testimonial-slider owl-carousel">
                    <div class="ts-item">
                        <p>After a construction project took longer than expected, my husband, my daughter and I
                            needed a place to stay for a few nights. Neighborhood and the types of housing options available and absolutely love our
                            vacation at Homestay in your life.</p>
                        <div class="ti-author">
                            <div class="rating">
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star-half_alt"></i>
                            </div>
                            <h5> - Favorite Pet</h5>
                        </div>
                        <img src="" alt="">
                    </div>
                    <div class="ts-item">
                        <p>Due to unexpected circumstances during renovations, my family - my husband, daughter,
                            and I - found ourselves seeking a short-term place to stay. As longtime residents of Chicago,
                            we have a deep understanding of the city, its diverse neighborhoods, and the available housing options.
                            Our stay at Homestay was a delightful experience that added an extra layer of joy to our lives</p>
                        <div class="ti-author">
                            <div class="rating">
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                                <i class="icon_star"></i>
                            </div>
                            <h5> -MinhCao</h5>
                        </div>
                        <img src="img/testimonial-logo.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Blog Section Begin -->
<!-- Blog Section End -->
</body>
</html>
