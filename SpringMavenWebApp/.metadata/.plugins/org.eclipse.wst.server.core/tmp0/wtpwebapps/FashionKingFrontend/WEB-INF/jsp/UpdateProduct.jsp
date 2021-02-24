<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>

		<section style="background:lightgrey;padding:5%;">
			<div class="container">
				<h3>Enter Product Details</h3>		
				<form action="<c:url value='/updateProduct'/>" method="post" align="left">
				    <table>
						<tr>
							<td>Product ID:</td>
							<td><input type="text" name="productId" value="${product.productId}" readonly/></td>
						</tr>
						<tr>
							<td>Product Name:</td>
							<td><input type="text" name="productName" value="${product.productName}" required/></td>
						</tr>
						<tr>
							<td>Product Description:</td>
							<td><textarea rows="3" cols="20" name="productDesc" required>${product.productDesc}</textarea></td>
						</tr>
						<tr>
							<td>Product Price:</td>
							<td><input type="text" name="productPrice" value="${product.productPrice}" required/></td>
						</tr>
					</table>
					<button type="submit" value="SUBMIT" class="btn btn-success">Update</button>
				</form>
			</div>
		</section>

<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>