<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.dao.JobDAO"%>
<%@ page import="com.dao.JobDAO"%>
<%@ page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.*"%>

<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User:View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${empty userobj }">
		<c:redirect url ="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>


	<%-- <h1>Home</h1>
--%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
			<c:if test="${not empty succMsg }">
<h4 class="text-center text-danger">${succMsg}</h4>
<c:remove var="succMsg"/>
</c:if>
				<div class="card">
					<div class="card-body">
						<form class="form-inline" action="more_view.jsp" method="get">
							<div class="form-group col-md-5 mt-1">
								<h5>Location</h5>
							</div>
							<div class="form-group col-md-4 mt-1">
								<h5>Category</h5>
							</div>
							<div class="form-group col-md-5">
								<select name="loc" class="custom-select"
									id="inlineFormCustomSelectPref">
									<option Selected value="lo">Choose.....</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Pune">Pune</option>
									<option value="Mysore">Mysore</option>
									<option value="Delhi">Delhi</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Banglore">Banglore</option>									
									<option value="Chennai">Chennai</option>
									<option value="Remote Access">Remote Access</option>
									<option value="Across India">Across India </option>
								</select>
							</div>
							<div class="form-group col-md-5">
								<select name="cat" class="custom-select"
									id="inlineFoemCustomSelectPref">
									<option value="ca" Selected>Choose.....</option>
									<option value="IT">IT</option>
									<option value="Data Analytics">Data Analytics</option>
									<option value="Front-end Developer">Front-end Developer</option>
									<option value="Back-end Developer">Back-end Developer</option>
									<option value="React Developer">React Developer</option>
									<option value="UI/UX Designer">UI/UX Designer</option>
									<option value="Data Engineer">Data Engineer</option>
									<option value="Software Engineer">Software Engineer</option>
									<option value="Network Engineer">Network Engineer</option>
									<option value="Android/Ios Developer">Android/Ios Developer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<button class="btn btn-success">Submit</button>
						</form>
					</div>
				</div>
				<%
				JobDAO dao = new JobDAO(DBConnect.getConn());
				List<Jobs> list = dao.getAllJobsForUser();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>
						<h6><%=j.getTitle()%></h6>
						<%
						if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
						%>
						<p><%=j.getDescription()%>.
						</p>
						<%
						} else {
						%><P>
							<%=j.getDescription().substring(0, 120)%>...
						</P>
						<%
						}
						%>


						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Location:<%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category:<%=j.getCategory()%>" readonly>
							</div>
							<%-- 	
							<div class="form-group col-md-3">
							<input type="url" class="form-control form-control-sm"
							value="hyperlink:<%=j.getHyperlink() %>" required >
						<%
    String hyperlink = request.getParameter("hyperlink");
%> --%>
						</div>
						<%-- </div>--%>
						<h6>
							Publish Date:
							<%=j.getPdate().toString()%></h6>
						<div class="text-center">
							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">View More</a>
						</div>
					</div>
				</div>
				<%
				}
				%>


			</div>
		</div>
</body>
</html>