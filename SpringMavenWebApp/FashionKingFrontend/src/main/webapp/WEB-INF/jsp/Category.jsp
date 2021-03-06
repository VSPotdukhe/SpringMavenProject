<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<section style="background:lightgrey;padding:5%;">
			<div class="container">
				<h3>Enter Category Details</h3>		
				<form action="<c:url value='/insertCategory'/>" method="post" align="left">
				    <table>
				    	<tr>
							<td>Category ID:</td>
							<td><input type="text" name="categoryId" required/></td>
						</tr>
						<tr>
							<td>Category Name:</td>
							<td><input type="text" name="categoryName" required/></td>
						</tr>
						<tr>
							<td>Category Description:</td>
							<td><textarea rows="3" cols="20" name="categoryDesc" required></textarea></td>
						</tr>
					</table>
					<button type="submit" value="SUBMIT" class="btn btn-primary">Add</button>
				</form>
			</div>
		</section>
		
		<div class="container" style="margin:5% auto;">
			<div class="table-responsive">
				<table class="table table-hover" align="center">
					<thead style="background:lightskyblue">
						<tr>
							<th>Category ID</th>
							<th>Category Name</th>
							<th>Category Desc</th>
							<th colspan='2'>Operation</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${categoryList}" var="category">
							<tr>
								<td>${category.categoryId}</td>
								<td>${category.categoryName}</td>
								<td>${category.categoryDesc}</td>
								<td><a href="<c:url value='/deleteCategory/${category.categoryId}'/>" class="btn btn-danger">Delete</a></td>
								<td><a href="<c:url value='/editCategory/${category.categoryId}'/>" class="btn btn-warning">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>