<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Jobs Portal</title>
<%@include file="all_component/all_css.jsp"  %>


</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
	<div class="continer-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center">
							<i class="fa-sharp fa-solid fa-user-plus"></i>
							<h4>Login Page</h4>
						</div>
						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-danger">${ succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> 
						<form action="login" method="post">
							<div class="form-group">
								<label>Enter Email</label><input type="email"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassord1">Enter Password</label><input
									required="required" type="password" class="form-control"
									id="exampleInputPassword" name="password">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
								<div style="text-align: center;">
								<a  href="signup.jsp" class="text-center">Sign up for new account</a>
								</div>


						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>