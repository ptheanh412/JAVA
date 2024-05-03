<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-wrap p-0">
                    <h3 class="mb-4 text-center">Sign up</h3>
                    <form action="<c:url value='/dang-ky'/>" id="formSignup" method="POST" class="signup-box">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Username" id="userName" name="userName">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" id="password" name="password">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Phone" id="phone" name="phone">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email" id="email" name="email">
                        </div>
                        <input type="hidden" value="signup" name="action"/>
<%--                        <script>--%>
<%--                            function redirectToLoginPage() {--%>
<%--                                window.location.href = "<c:url value='/dang-nhap'/>";--%>
<%--                            }--%>
<%--                        </script>--%>
                        <div class="form-group">
                            <button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
                        </div>
                    </form>
                    <p class="w-100 text-center">&mdash; Or Sign Up With &mdash;</p>
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
