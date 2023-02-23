<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection"  %>


<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%-- <style type="text/css">
.back-img {
	background: url("img/j1.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style> --%>
<%@include file="all_component/all_css.jsp"  %>
<style type="text/css">
.back-img{
background: url("img/j3.jpg");
width: 100%;
	height: 83vh;
	background-repeat: no-repeat;
	background-size: cover;

}

</style>

</head>
<body>
<%@include file="all_component/navbar.jsp" %>


	<div class="container-fluid back-img">
		<div class="text-center">
		<strong>
			<h1 class="text-black p-9">
				<i class="fa-solid fa-globe"></i> Online Job Portal
			</h1>
		</strong>
		</div>


	</div>
	
<%@include file="all_component/footer.jsp" %>

</body>
</html>