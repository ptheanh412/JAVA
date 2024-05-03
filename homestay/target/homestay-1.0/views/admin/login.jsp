<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <%--                <h2 class="heading-section">Login</h2>--%>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-wrap p-0">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">
                            <strong>${message} </strong>
                        </div>
                    </c:if>
                    <h3 class="mb-4 text-center">Have an account?</h3>
                    <form action="<c:url value='/admin-dang-nhap'/>" id="formLogin" method="POST" class="signin-form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Username" id="userName" name="userName">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" id="password" name="password">
                        </div>
                        <input type="hidden" value="admin-login" name="action"/>
                        <div class="form-group">
                            <button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
                        </div>
                        <div class="form-group d-md-flex">
                            <div class="w-50">
                                <label class="checkbox-wrap checkbox-primary">Remember Me
                                    <input type="checkbox" checked>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="w-50 text-md-right">
                                <a href="#" style="color: #fff">Forgot Password</a>
                            </div>
                        </div>
                    </form>
                    <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
                    <div class="social d-flex text-center">
                        <a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
                        <a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Google+</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="<c:url value='/template/login/js/jquery.min.js'/>"></script>
<script src="<c:url value='/template/login/js/popper.js'/>"></script>
<script src="<c:url value='/template/login/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/login/js/main.js'/>"></script>
</body>
</html>
