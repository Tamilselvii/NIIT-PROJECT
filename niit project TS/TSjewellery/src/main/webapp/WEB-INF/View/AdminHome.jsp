<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>


<%@include file="Header.jsp" %>



    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Bootstrap Case</title>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"

	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"

	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<script

	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminHome</title>
</head>
<body>
<nav class="navbar navbar-inverse">

<div class="container">

<ul class="nav navbar-nav">

<li><a  href="${rootContext}/Category"> Categories</a></li>

<li><a  href="${rootContext}/Supplier"> Suppliers</a></li>   

<li><a  href="${rootContext}/Product"> Products</a></li>

</ul>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script src="resources/js/bootstrap.js"></script>
<h3>AdminHome Page</h3>
<%@include file="footer.jsp" %>
</body>
</html>