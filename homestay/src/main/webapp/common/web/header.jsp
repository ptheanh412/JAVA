<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Section Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="canvas-open">
    <i class="icon_menu"></i>
</div>
<div class="offcanvas-menu-wrapper">
    <div class="canvas-close">
        <i class="icon_close"></i>
    </div>
    <div class="search-icon  search-switch">
        <i class="icon_search"></i>
    </div>
    <div class="header-configure-area">
        <div class="language-option">
            <img src="<c:url value="/template/web/img/flag.jpg"/>" alt="">
            <span>EN <i class="fa fa-angle-down"></i></span>
            <div class="flag-dropdown">
                <ul>
                    <li><a href="#">Zi</a></li>
                    <li><a href="#">Fr</a></li>
                </ul>
            </div>
        </div>
        <a href="#" class="bk-btn">Booking Now</a>
    </div>
    <nav class="mainmenu mobile-menu">
        <ul>
            <li><a href="/trang-chu">Home</a></li>
            <li><a href="/list-room">Rooms</a></li>
            <li><a href="./about-us.html">About Us</a></li>
            <li><a href="./pages.html">Pages</a>
                <ul class="dropdown">
                    <li><a href="./room-details.html">Room Details</a></li>
                    <li><a href="#">Deluxe Room</a></li>
                    <li><a href="#">Family Room</a></li>
                    <li><a href="#">Premium Room</a></li>
                </ul>
            </li>
            <li><a href="./blog.html">News</a></li>
            <li><a href="./contact.html">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="top-social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-tripadvisor"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
    </div>
    <ul class="top-widget">
        <li><i class="fa fa-phone"></i> 0853412203</li>
        <li><i class="fa fa-envelope"></i> pham041203theanh@gmail.com</li>
    </ul>
</div>
<!-- Offcanvas Menu Section End -->

<!-- Header Section Begin -->
<header class="header-section">
    <div class="top-nav">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <ul class="tn-left">
                        <li><i class="fa fa-phone"></i> 0853412203</li>
                        <li><i class="fa fa-envelope"></i> pham041203theanh@gmail.com</li>

                        <c:if test="${not empty USERMODEL}">
                            <li class="nav-item"><a class="nav-link" href="#">Welcome, ${USERMODEL.userName}</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/thoat?action=logout'/> ">Thoát</a></li>
                        </c:if>
                        <c:if test="${empty USERMODEL}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap?action=login'/> ">Đăng nhập</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value='/dang-ky?action=signup'/> ">Đăng ký</a></li>
                        </c:if>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <div class="tn-right">
                        <div class="top-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-tripadvisor"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                        <a href="#" class="bk-btn">Booking Now</a>
<%--                        <div class="language-option">--%>
<%--                            <img src="<c:url value="/template/web/img/flag.jpg"/>" alt="">--%>
<%--                            <span>EN <i class="fa fa-angle-down"></i></span>--%>
<%--                            <div class="flag-dropdown">--%>
<%--                                <ul>--%>
<%--                                    <li><a href="#">Zi</a></li>--%>
<%--                                    <li><a href="#">Fr</a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="menu-item">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo">
                        <a href="./index.html">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="nav-menu">
                        <nav class="mainmenu">
                            <ul>
                                <li class="active"><a href="/trang-chu">Home</a></li>
                                <li><a href="/list-room">Rooms</a></li>
                                <li><a href="./about-us.html">About Us</a></li>
                                <li><a href="./pages.html">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./room-details.html">Room Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="#">Family Room</a></li>
                                        <li><a href="#">Premium Room</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">News</a></li>
                                <li><a href="./contact.html">Contact</a></li>
                            </ul>
                        </nav>
                        <div class="nav-right search-switch">
                            <i class="icon_search" id="searchIcon"></i>
                            <input type="text" id="searchInput" placeholder="Search..">
                            <button id="searchButton">Search</button>
                        </div>

                        <script>
                            document.getElementById("searchButton").addEventListener("click", function() {
                                var keyword = document.getElementById("searchInput").value.trim();
                                if (keyword !== "") {
                                    // Gửi request tới Servlet khi nhấn nút Search
                                    window.location.href = "/list-room?keyword=" + keyword;
                                }
                            });
                        </script>

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var currentUrl = window.location.href;

        var menuItems = document.querySelectorAll('.mainmenu a');

        menuItems.forEach(function(item) {

            if (currentUrl.includes(item.getAttribute('href'))) {
                var items = document.querySelectorAll('.active')
                items.forEach(function (item){
                    item.classList.remove('active')
                })
                item.parentNode.classList.add('active');
                if (item.parentNode.classList.contains('dropdown')) {
                    item.parentNode.parentNode.querySelector('a').classList.add('active');
                }
            }
        });
    });


</script>