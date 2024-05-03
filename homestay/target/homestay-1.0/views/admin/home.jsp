<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-room"/>
<c:url var="Newurl" value="/admin-room"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset =UTF-8">
</head>

<body>
		<div class="container-fluid">
			<form action="<c:url value='/admin-room'/>" id="formSubmit" method="get">
				<div class="main-content">
					<div class="main-content-inner">
						<div class="breadcrumbs ace-save-state" id="breadcrumbs">
							<ul class="breadcrumb">
								<li>
									<i class="ace-icon fa fa-home home-icon"></i>
									<a href="#"> Trang chủ</a>
								</li>
							</ul>
						</div>

						<br>
					</div>
				</div>
			</form>
			<div class="py-6 px-6 text-center">
				<p class="mb-0 fs-4">Design and Developed by PhamAnh</p>
			</div>
		</div>

</body>

</html>