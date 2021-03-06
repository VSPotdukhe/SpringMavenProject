<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<title>FashionBag ${pagename}</title>
		<link rel="icon" href="<c:url value='images/bag-logo.jpg'/>" type="image/jpg" sizes="16x16">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
		<style>
		 	.carousel-inner img {
			    width: 100%;
			    height: 100%;
			  }
			  
			.fa {
			  padding: 15px;
			  font-size: 20px;
			  width: 50px;
			  text-align: center;
			  text-decoration: none;
			  margin: 5px 2px;
			  border-radius: 50%;
			}
			
			.fa:hover {
			    opacity: 0.7;
			}
			
			.fa-facebook {
			  background: #3B5998;
			  color: white;
			}
			
			.fa-twitter {
			  background: #55ACEE;
			  color: white;
			}
			
			.fa-youtube {
			  background: #bb0000;
			  color: white;
			}
			
			.fa-instagram {
			  background: #e91e63;
			  color: white;
			}
			
			footer {
				background: black;
				color: white;
			}
			
			footer .col-xs-6 {
				padding: 5%;
			}
			
			footer .col-xs-6 a {
				color: white;
			}
			
			.social-links {
				padding:5%;
			}
			
			.sitename {
				font-family: 'Courgette';font-size: 22px;
			}
		
		</style>
	</head>
	<body>
		<nav class="navbar navbar-expand-sm navbar-dark" style="background-color:MediumSlateBlue">		
			<a class="navbar-brand sitename" href="index.jsp">FashionBag</a>
	
			<ul class="navbar-nav">
				<c:if test="${sessionScope.role==null}">
					<li class="nav-item"><a class="nav-link" href="<c:url value='index.jsp'/>">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='login'/>">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='register'/>">Register</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='aboutus'/>">AboutUs</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='contactus'/>">ContactUs</a></li>
				</c:if>
	
				<c:if test="${sessionScope.role!=null}">
					<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
						<li class="nav-item"><a class="nav-link" href="<c:url value='adminpage'/>">AdminHome</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='showCategory'/>">Manage<br>Category</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='showProduct'/>">Manage<br>Product</a></li>							
						<li class="nav-item"><a class="nav-link" href="<c:url value='showSupplier'/>">Manage<br>Supplier</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='perform_logout'/>">Sign Out</a></li>
					</c:if>
					<c:if test="${sessionScope.role=='ROLE_USER'}">
						<li class="nav-item"><a class="nav-link" href="<c:url value='userpage'/>">UserHome</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='productUser'/>">Products</a></li>
						<form action="perform_logout" method="post">
							<li class="nav-item"><a class="nav-link" href="<c:url value='perform_logout'/>">Sign Out</a></li>
						</form>
					</c:if>
				</c:if>
			</ul>
		</nav>
