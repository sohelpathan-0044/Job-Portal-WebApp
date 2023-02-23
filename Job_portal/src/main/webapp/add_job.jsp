<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Jobs </title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">



	<c:if test= "${userobj.role ne 'admin'}" >
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
		

	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"> </i>
						<c:if test="${not empty succMsg}">
							<h4 class="text="text-centertext-success">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Jobs</h5>

					</div>
					<form action="add_job" method="post">
						<div class="form-control">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFoemCustomSelectPref">
									<option Selected>Choose.....</option>
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

							<div class="form-group col-md-4">
								<label>Category</label><select name="category"
									class="custom-select" id="inlineFoemCustomSelectPref">
									<option Selected>Choose.....</option>
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
							<div class="form-group col-md-4">
								<label>Status</label><select name="status" class="custom-select"
									id="inlineFoemCustomSelectPref">

									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
							
							<%-- 
						 	<div class="form-group col-md-4">
							 <label for="hyperlink">Enter Verified Job Apply Link :</label>
    <input type="url" id="hyperlink" name="hyperlink" placeholder="http://example.com" required value="hyperlink">
							</div>
							--%>
							
							
							
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>