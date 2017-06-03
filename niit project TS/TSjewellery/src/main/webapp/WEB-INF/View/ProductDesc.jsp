<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description Page</title>

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

		<table width="60%" align="center" border="1">
			<tr bgcolor="pink">
				<td colspan="3"><center>Product Description</center></td>
			</tr>
			<tr>
				<td rowspan="6"><img
					src="<c:url value="/resources/Images/${prodinfo.productid}.jpg" />" /></td>
			</tr>
			<tr>
				<td>Product ID</td>
				<td>${prodinfo.productid}</td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td>${prodinfo.productname}</td>
			</tr>
			<%-- <tr>
				<td>Supplier</td>
				<td>${prodinfo.sid}</td>
			</tr> --%>
			<tr>
				<td>ProductDesc</td>
				<td>${prodinfo.productdesc}</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>${prodinfo.productcost}</td>
			</tr>

			<tr>
				<td></td>
				<td colspan="2">
					<form action="<c:url value="/addToCart/${prodinfo.productid}"/>"
						method="get">
						Quantity <input type="text" name="quantity"
							class="form-control  btn-block  " /> <input type="submit"
							value="addToCart" class="btn btn-xs btn-success btn-block" />
					</form>
				</td>
			</tr>

		</table>
	</div>

</body>
</html>