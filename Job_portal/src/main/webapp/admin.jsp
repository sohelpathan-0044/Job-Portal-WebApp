<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/adm.jpg");
	width: 100%;
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body style="background-color: #f0f1f2;">

<c:if test= "${userobj.role ne 'admin'}" >
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	



	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<strong>
				<h1 class="text-dark p-6">
					<i class="fa-solid fa-cloud-arrow-up"></i> Welcome Admin
				</h1>
			</strong>
		</div>

	</div>

</body>
</html>