<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<section style="margin-top:5%;padding:0 15%;">
	      	<h3>Product List</h3>
		</section>
	
		<section style="padding:5% 15%;">
			<div class="container-fluid">
				<div class="row" style="margin:0 auto;">		
					<c:forEach items="${productList}" var="product">
						<div class="col-sm" style="margin:5% 0;">
							<img src="<c:url value='./images/${product.productId}.jpg'/>" width="150px">
							<h4>${product.productName}</h4><br>
							<h6>${product.productDesc}</h6><br>								
							<a href="<c:url value='/productDisplay/${product.productId}'/>" class="btn btn-warning">View</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	
		<section style="background:lightgrey;padding: 10% 15%">	
			<h3>FashionBag Customer Care</h3><br>		
			<h6>Email: <a href="mailto:customercare@fashionbag.com">customercare@fashionbag.com</a></h6>
			<h6>Telephone Number: <a href="tel:+919876543210">+919876543210</a></h6>
			<h6>Address: <a href="https://goo.gl/maps/kCsMHAvckGMA4eDRA" target="_blank">FashionBag, Mumbai 400 001</a></h6>
		</section>

<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>