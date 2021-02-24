<%@ page language="java" contentType="text/html"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@include file="CommonHeader.jsp" %>

		<section style="margin-top:5%;padding:0 15%;">
	      	<h3>Cart Details</h3>
		</section>
	
		<section style="padding:5% 15%;">
	      	<h5>Hi ${username}, the product is successfully added to cart.</h5>
	   		<p>*****Please note that the payment mode will be <strong>Cash on Delivery.</strong> Click on <strong>Place Order</strong> to confirm and place the order.*****</p>
			<br><br><br>
			<input type="hidden" name="username" value="${sessionScope.username}" readonly/>			

			<div class="container" style="margin:0 auto;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead class="btn-warning">
							<tr>
								<th>Cart ID</th>
								<th>User Name</th>
								<th>Product ID</th>
								<th>Product Name</th>
								<th>Quantity</th>
								<th>Total Amount</th>
								<th>Date Time</th>
								<th>Paid</th>
								<th>Remove Cart</th>
								<th>Place Order</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartList}" var="cart">
								<c:if test="${sessionScope.username ==cart.username }">							
									<form action="<c:url value='/orderPlace'/>" method="post">
										<tr>
											<td><input type="hidden" name="cartId" value="${cart.cartId}" readonly/>${cart.cartId}</td>
											<td><input type="hidden" name="username" value="${cart.username}" readonly/>${cart.username}</td>
											<td><input type="hidden" name="productId" value="${cart.productId}" readonly/>${cart.productId}</td>
											<td><input type="hidden" name="productName" value="${cart.productName}" readonly/>${cart.productName}</td>
											<td><input type="hidden" name="quantity" value="${cart.quantity}" readonly/>${cart.quantity}</td>
											<td><input type="hidden" name="totalAmount" value="${cart.totalAmount}" readonly/>${cart.totalAmount}</td>
											<td>
												<textarea id="date" name="orderDate" rows="3" style="border:none;" readonly></textarea>
												<script type="text/javascript">
												  document.getElementById('date').value = Date();
												</script>	
											</td>
											<td><input type="hidden" name="paid" value="${cart.paid}" readonly/>${cart.paid}</td>
											<td><a href="<c:url value='/deleteCart/${cart.cartId}'/>" class="btn btn-danger">Remove Cart</a></td>
											<td><button type="submit" value="SUBMIT" class="btn btn-success">Place Order</button></td>									
										</tr>
									</form>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
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