
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <title>HEADER</title>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>

  .navbar navbar-default

 {background-color: blue;}

  

  </style>

</head>

<body>

<header id="header"><!--header-->

<div class="header_top"><!--header_top-->

<div class="container">

<div class="row">

<div class="col-sm-6">

<ul class="nav navbar-nav" style="text-align: center; margin-top:9px;font-size:20px;"><font color="black"><li><b> SPECIAL OFFER !</b></li></font></ul>

</div>

</div>

</div>

</div>

  <marquee style="color:blue"><b>

<h2> we are offering 1gram free for every special days in a month  </h2>  

   </b></marquee>	

<nav class="navbar navbar-default">

   <div class="container">

     <div class="navbar-header">



    </div>

    <ul class="nav navbar-nav">

     <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    
    <c:if test="${!sessionScope.LoggedIn}">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="login">Login</a></li>
      <li><a href="registration">Register</a></li>
      <li><a href="aboutus">AboutUs</a></li>
    </ul>
    </c:if>
    
    <c:if test="${sessionScope.LoggedIn}">
    
    <c:if test="${sessionScope.role=='USER'}">
    <ul class="nav navbar-nav">
      <li class="active"><a href="UserHome">Home</a></li>
      <li><a href="Product">Products</a></li>
      <li><a href="Cart">Cart</a></li>
      <li><a href="logout">Logout</a></li>
      
    </ul>
    </c:if>
    </c:if>
    
    <c:if test="${sessionScope.role=='ADMIN'}">
    <ul class="nav navbar-nav">
      <li class="active"><a href="AdminHome">Home</a></li>
      <li><a href="Product">Product</a></li>
      <li><a href="Category">Category</a></li>
      <li><a href="Supplier">Supplier</a></li>
      <li><a href="logout">Logout</a></li>
    </ul>
    </c:if>
    
    
    
    
  </div>
</nav>
    </ul>

    </nav>

    </div>

    </header>

    </body>

    </html>