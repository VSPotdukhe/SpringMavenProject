<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>

		<section style="background:lightgrey;padding:5%;">
			<div class="container">
				<h3>Enter Supplier Details</h3>		
				<form action="<c:url value='/updateSupplier'/>" method="post" align="left">
				    <table>
						<tr>
							<td>Supplier ID:</td>
							<td><input type="text" name="supplierId" value="${supplier.supplierId}" readonly/></td>
						</tr>
						<tr>
							<td>Supplier Name:</td>
							<td><input type="text" name="supplierName" value="${supplier.supplierName}" required/></td>
						</tr>
						<tr>
							<td>Supplier Description:</td>
							<td><textarea rows="3" cols="20" name="supplierDesc" required>${supplier.supplierDesc}</textarea></td>
						</tr>
					</table>
					<button type="submit" value="SUBMIT" class="btn btn-success">Update</button>
				</form>
			</div>
		</section>

<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>