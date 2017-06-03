<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Supplier Page</title>


<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"

	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"

	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<script

	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

	<%@include file="Header.jsp"%>





	<div class="container">

		<div class="row">

			<div class="col-sm-4">

				<div class="updatesupplier-form">

					<!--sign up form-->

					<h2>Supplier form</h2>

					<br>

					<form:form

						action="${pageContext.request.contextPath}/UpdateSupplier"

						modelAttribute="supplier">

						<table>

							<tr>

								<td colspan="2">Supplier Details</td>

							</tr>

							<tr>

								<td>Supplier ID</td>

								<td><form:input path="sid" /></td>

							</tr>

							<tr>

								<td>Supplier Name</td>

								<td><form:input path="sname" /></td>

							</tr>

							<tr>

								<td>Supplier Address</td>

								<td><form:input path="sadd" /></td>

							</tr>

							

							<tr>

								<td colspan="2"><center>

										<input type="submit" value="Update Supplier" />

									</center></td>

							</tr>



						</table>

					</form:form>

<table align="center">
		<tr bgcolor="pink"> 
			<td> Supplier ID</td>
			<td> Supplier Name</td>
			<td> Supplier Address</td>
			
		</tr>
		
		<c:forEach items="${supdet}" var="sup">
		<tr bgcolor="cyan">
			<td>${sup.sid}</td>
			<td>${sup.sname}</td>
			<td>${sup.sadd}</td>
			
			<td>
			<a href="<c:url value="deleteSupplier/${sup.sid}"/>">Delete</a>
			<a href="<c:url value="updateSupplier/${sup.sid}"/>">Update</a>
			</td>
		</tr>
		</c:forEach>
	
	</table>


					




				</div>

			</div>

		</div>

	</div>


<%@include file="footer.jsp"%>
</body>

</html>
