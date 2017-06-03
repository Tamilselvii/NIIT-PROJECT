<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Bootstrap Case</title>



<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"

	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"

	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<script

	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>product page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserHome</title>
</head>
<body>

<div class="container">
<c:forEach items="${prodlist}" var="prdt">
<div class = "row">
   <div class = "col-sm-6 col-md-3">
   	<a href = "ProductDesc/${prdt.productid}" class = "thumbnail">
   	 <img src= "<c:url value="/resources/images/${prdt.productid}.jpg"/>" alt = "Generic placeholder thumbnail"/>
   	</a>
   	  <div class = "caption">
         <h4>${prdt.productname}</h4>
         <p> Rs.${prdt.productcost}</p>
      </div>
	</div>
</div>
</c:forEach>
</div>
<%@include file="footer.jsp" %>
</body>
</html>

