<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add To Cart </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<%@include file="Header.jsp" %>
<div class="container">

<table cellspacing="3" align="center">
<tr>	
	<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr bgcolor='pink'>
	<td>Product ID</td>
	<td>Quantity</td>
	<td>SubTotal</td>
	<td>Image</td>
	<td>Operation</td>
</tr>
<c:forEach items="${cartitems}" var="cartitem">
	<form action="<c:url value="/updateCartItem/${cartitem.id}"/>" method="get">
	<tr>	
		<td>${cartitem.productid}</td>
		<td><input type="text" name="qty" value="${cartitem.quantity}"/></td>
		<td>${cartitem.subtotal}</td>
		<td><img src="<c:url value='/resources/images/${cartitem.productid}.jpg'/>" width="100" height="100" /></td>
		<td>
			<a href="<c:url value="/deleteCartItem/${cartitem.id}"/>">Delete</a>
			<input type="submit" value="UPDATE" class="btn btn-xs btn-success btn-block"/>
		</td>
	</tr>
	</form>
</c:forEach>

		<td colspan="2"><a href="<c:url value='/UserHome/'/>">Continue Shopping</a>
		<a href="${rootContext}/checkout"><input type="button" class="btn-btn default" value="Checkout" /></a>
	
	</tr> 
</table>

</div>
<%@include file="footer.jsp" %>
</body>
</html>