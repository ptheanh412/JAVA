<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title><dec:title default="Trang chủ" /></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modernize Free</title>
    <link rel="stylesheet" href="<c:url value="/template/admin/css/styles.css"/> " />
    <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.2.0/css/font-awesome.min.css' />" />
    <script src="<c:url value="/template/admin/libs/jquery/dist/jquery.min.js"/> "></script>
    <script src="<c:url value="/template/admin/libs/bootstrap/dist/js/bootstrap.bundle.min.js"/> "></script>
    <script src="<c:url value="/template/admin/js/sidebarmenu.js"/> "></script>
    <script src="<c:url value="/template/admin/js/app.min.js"/> "></script>
<%--    <script src="<c:url value="/template/admin/libs/apexcharts/dist/apexcharts.min.js"/> "></script>--%>
    <script src="<c:url value="/template/admin/libs/simplebar/dist/simplebar.js"/> "></script>
<%--    <script src="<c:url value="/template/admin/js/dashboard.js"/> "></script>--%>
    <link rel="stylesheet" href="<c:url value="/template/admin/libs/bootstrap/dist/css/bootstrap.min.css"/> ">
    <script src="<c:url value="/template/admin/libs/bootstrap/dist/js/bootstrap.min.js"/> "></script>
    <script src="<c:url value="/template/page/jquery.twbsPagination.js"/> "></script>
    <script src="<c:url value='/ckeditor/ckeditor.js' />"></script>
</head>
<body class="no-skin">
<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
     data-sidebar-position="fixed" data-header-position="fixed">

        <%@ include file="/common/admin/menu.jsp" %>

        <div class="body-wrapper">
            <%@ include file="/common/admin/header.jsp"%>

        <dec:body/>

    </div>
</div>
</body>
</html>