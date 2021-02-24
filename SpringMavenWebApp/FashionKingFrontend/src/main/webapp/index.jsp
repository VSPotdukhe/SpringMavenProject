<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
	
		<div id="demo" class="carousel slide" data-ride="carousel">	
			<ul class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			    <li data-target="#demo" data-slide-to="1"></li>
			    <li data-target="#demo" data-slide-to="2"></li>
		  	</ul>
		  
			<div class="carousel-inner">
		    	<div class="carousel-item active">
		      		<img src="<c:url value='./images/skybag.jpg'/>" width="100%" height="500">
		    	</div>
		    	<div class="carousel-item">
		      		<img src="<c:url value='./images/photographer.jpg'/>" width="100%" height="500">
		    	</div>
		    	<div class="carousel-item">
		      		<img src="<c:url value='./images/backpack.jpg'/>" width="100%" height="500">
		    	</div>	    
	  		</div>
		  
		  	<a class="carousel-control-prev" href="#demo" data-slide="prev">
	    		<span class="carousel-control-prev-icon"></span>
		  	</a>
		  	<a class="carousel-control-next" href="#demo" data-slide="next">
		    	<span class="carousel-control-next-icon"></span>
		  	</a>
		</div>
		
		<section style="background:lightgrey;padding:10% 15%;">
			<h3>Welcome to FashionBag website</h3><br>
			<p>FashionBag is a mini ecommerce company situated at Mumbai, India. Our company is currently focusing on variety of bags essential for the customers. We will keep adding more products and categories as per lifestyle of the customers which keeps on growing with time.</p>
		</section>
		
		<section style="padding:10% 15%;">
			<h3>Purchase variety of bags online</h3><br>
			<p>Right now we have started with few products but soon we will keep on updating new products and our services with time. Your feedback will sure help our team to know about the existing features so that we can make the website more updated as per the lastest technologies and trends.</p>
		</section>
	
		<section style="background:lightgrey;padding: 10% 15%">	
			<h3>FashionBag Customer Care</h3><br>		
			<h6>Email: <a href="mailto:customercare@fashionbag.com">customercare@fashionbag.com</a></h6>
			<h6>Telephone Number: <a href="tel:+919876543210">+919876543210</a></h6>
			<h6>Address: <a href="https://goo.gl/maps/kCsMHAvckGMA4eDRA" target="_blank">FashionBag, Mumbai 400 001</a></h6>
		</section>
	
<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>