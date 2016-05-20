<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="resources/js/product.js"></script> -->
<script type="text/javascript" src = "resources/js/angular.min.js"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
 <!--   <script src="resources/js/jquery-1.11.1.min.js"></script>-->
    <script src="resources/js/bootstrap.min.js"></script>
    <style>
     body {
      font: 400 15px/1.8 Lato, sans-serif;
      color:black;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  
  .carousel-inner img {
     
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: blue;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color:blue;
  }
  .bg-1 h3 {color: green;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
    </style>
</head>

<script type="text/javascript" >
var myapp = angular.module('myapp',[]);
myapp.controller
('myctrl',function($scope)
{
	$scope.data=${data};
	});
</script>


<body ng-app="myapp">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="index">Home</a></li>
        <li><a href="aboutus">About us</a></li>
         <li><a href="contactus">Contact Us</a></li>
         <li><a href="product">All Products</a></li>
        </ul>
      <ul class="nav navbar-nav navbar-right">
     <li> <div  ng-controller="myctrl"><input  ng-controller="myctrl" type="text"  ng-model="searchkey"></div></li>
        <li><a href="login">Login</a></li>
        <li><a href="register">Sign Up</a></li>      
      </ul>
      </div>
    </div> 
</nav>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div  ng-controller="myctrl" align="center">
<input type="text" ng-model="searchkey" ng-init="searchkey='${param.item}'" align="left"/>
<div  ng-repeat="x in data| filter: searchkey">
{{x.Group_Name}}&nbsp&nbsp&nbsp{{x.Product_Id}}&nbsp&nbsp&nbsp{{x.Price}}&nbsp&nbsp&nbsp{{x.Name}}&nbsp&nbsp&nbsp{{x.Qty}}&nbsp&nbsp&nbsp<img alt="" ng-src="{{x.Image}}" width="120" height="120" class="img-circle"></img>
</div>
</div>
 <nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-footer"> 
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a>All right reserverd</a></li>
      </ul>
      </div>
      </div>
    </div>
</nav>
</body>
</html>