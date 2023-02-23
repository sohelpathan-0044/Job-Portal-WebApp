<%@ page import="com.dao.JobDAO"%>
<%@ page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.*"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>





 

	<%-- <c:if test="${userobj.role ne 'admin'} ">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>--%>
	

	
	
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"> </i>

						<% //try{
					
						//int id=Integer.parseInt(request.getParameter("id"));
						int id=Integer.parseInt(request.getParameter("id"));
						JobDAO dao=new JobDAO(DBConnect.getConn());
						Jobs j=dao.getJobById(id);
						//}catch(Exception e){
							//e.printStackTrace();
						//}
						%>

						<h5>Edit Jobs</h5>

					</div>
					<form action="update" method="post">

						<input type="hidden" value="<%=j.getId() %>" name="id">
						<div class="form-control">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control" value="<%=j.getTitle() %>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFoemCustomSelectPref">
									<option value="<%=j.getLocation() %>"><%=j.getLocation() %></option>
									<option value="hyderabad">Hyderabad</option>
									<option value="mysore">Mysore</option>
									<option value="mumbai">Mumbai</option>
									<option value="banglore">Banglore</option>
									<option value="pune">Pune</option>
									<option value="chennai">Chennai</option>



								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Category</label><select name="category"
									class="custom-select" id="inlineFoemCustomSelectPref">
									<option value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
									<option value="front-end developer">Front-end
										Developer</option>
									<option value="back-end developer">Back-end Developer</option>
									<option value="ui/ux designer">ui/ux Designer</option>
									<option value="data engineer">Data Engineer</option>
									<option value="software engineer">Software Engineer</option>
									<option value="network engineer">Network Engineer</option>
									<option value="android/ios developer">Android/Ios
										Developer</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label><select name="status" class="custom-select"
									id="inlineFoemCustomSelectPref">
									<option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"><%=j.getDescription() %></textarea>
						</div>
						<%-- 
						<div class="form-group">
						<label>Enter Verified Jobs Apply Link</label> <input type="url" name="hyperlink"
								required class="form-control" value="<%=j.getHyperlink() %>">
						</div > --%>
						<button class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>