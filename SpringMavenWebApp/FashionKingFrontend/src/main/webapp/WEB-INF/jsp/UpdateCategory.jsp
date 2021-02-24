<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>

		<section style="background:lightgrey;padding:5%;">
			<div class="container">
				<h3>Enter Category Details</h3>		
				<form action="<c:url value='/updateCategory'/>" method="post" align="left">
				    <table>
						<tr>
							<td>Category ID:</td>
							<td><input type="text" name="categoryId" value="${category.categoryId}" readonly/></td>
						</tr>
						<tr>
							<td>Category Name:</td>
							<td><input type="text" name="categoryName" value="${category.categoryName}" required/></td>
						</tr>
						<tr>
							<td>Category Description:</td>
							<td><textarea rows="3" cols="20" name="categoryDesc" required>${category.categoryDesc}</textarea></td>
						</tr>
					</table>
					<button type="submit" value="SUBMIT" class="btn btn-success">Update</button>
				</form>
			</div>
		</section>

<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>