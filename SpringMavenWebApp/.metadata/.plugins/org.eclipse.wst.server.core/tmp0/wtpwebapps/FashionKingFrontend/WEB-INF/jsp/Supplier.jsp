<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<section style="background:lightgrey;padding:5%;">
			<div class="container">
				<h3>Enter Supplier Details</h3>		
				<form action="<c:url value='/insertSupplier'/>" method="post" align="left">
				    <table>
				    	<tr>
							<td>Supplier ID:</td>
							<td><input type="text" name="supplierId" required/></td>
						</tr>
						<tr>
							<td>Supplier Name:</td>
							<td><input type="text" name="supplierName" required/></td>
						</tr>
						<tr>
							<td>Supplier Description:</td>
							<td><textarea rows="3" cols="20" name="supplierDesc" required></textarea></td>
						</tr>
					</table>
					<button type="submit" value="SUBMIT" class="btn btn-primary">Add</button>
				</form>
			</div>
		</section>
		
		<div class="container" style="margin:5% auto;">
			<div class="table-responsive">
				<table class="table table-hover" align="center">
					<thead style="background:burlywood">
						<tr>
							<th>Supplier ID</th>
							<th>Supplier Name</th>
							<th>Supplier Desc</th>
							<th colspan='2'>Operation</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${supplierList}" var="supplier">
							<tr>
								<td>${supplier.supplierId}</td>
								<td>${supplier.supplierName}</td>
								<td>${supplier.supplierDesc}</td>
								<td><a href="<c:url value='/deleteSupplier/${supplier.supplierId}'/>" class="btn btn-danger">Delete</a></td>
								<td><a href="<c:url value='/editSupplier/${supplier.supplierId}'/>" class="btn btn-warning">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>