<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<section style="background:lightgrey;padding:5%;">
			<div class="container">
				<h3>Enter Product Details</h3>		
				<form action="<c:url value='/insertProduct'/>" method="post">
				    <table>
				    	<tr>
							<td>Product ID:</td>
							<td><input type="text" name="productId" required/></td>
						</tr>
						<tr>
							<td>Product Name:</td>
							<td><input type="text" name="productName" required/></td>
						</tr>
						<tr>
							<td>Product Description:</td>
							<td><textarea rows="3" cols="20" name="productDesc" required></textarea></td>
						</tr>
						<tr>
							<td>Product Price:</td>
							<td><input type="text" name="productPrice" required/></td>
						</tr>
					</table>
					<button type="submit" value="SUBMIT" class="btn btn-primary">Add</button>
				</form>
			</div>
		</section>
		
		<div class="container" style="margin:5% auto;">
			<div class="table-responsive">
				<table class="table table-hover" align="center">
					<thead style="background:olivedrab;">
						<tr>
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Product Desc</th>
							<th>Product Price</th>
							<th colspan='2'>Operation</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.productDesc}</td>
								<td>${product.productPrice}</td>
								<td><a href="<c:url value='/deleteProduct/${product.productId}'/>" class="btn btn-danger">Delete</a></td>
								<td><a href="<c:url value='/editProduct/${product.productId}'/>" class="btn btn-warning">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>