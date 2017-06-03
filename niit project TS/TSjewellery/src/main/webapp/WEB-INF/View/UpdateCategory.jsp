<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page isELIgnored="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Category Page</title>



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




<form:form action="${pageContext.request.contextPath}/UpdateCategory" modelAttribute="category">
	
					

						<table>

							<tr>

								<td colspan="2">Category Details</td>

							</tr>

							<tr>

								<td>Category ID</td>

								<td><form:input path="id" /></td>

							</tr>
 
							<tr>

								<td>Category Name</td>

								<td><form:input path="name" /></td>

							</tr>

							<tr>

								<td>Category Description</td>

								<td><form:textarea path="desc" /></td>

							</tr>

							

						

							<tr>

								<td colspan="2"><center>

									<input type="submit" value="Update Product" /></center></td>

									

							</tr>



						</table>

					</form:form>

<table align="center">
		<tr bgcolor="pink">
	<td>Category ID</td>
	<td>Category Name</td>
	<td>Description</td>
	
</tr>

<c:forEach items="${catlist}" var="cat">
<tr bgcolor="cyan">
	<td>${cat.id}</td>
	<td>${cat.name}</td>
	<td>${cat.desc}</td>
	<td>
		<a href="<c:url value="deleteCategory/${cat.id}"/>">Delete</a>
		<a href="<c:url value="updateCategory/${cat.id}"/>">Update</a>
	</td>
</tr>
</c:forEach>


</table>
				


<%@include file="footer.jsp"%>
</body>

</html>
