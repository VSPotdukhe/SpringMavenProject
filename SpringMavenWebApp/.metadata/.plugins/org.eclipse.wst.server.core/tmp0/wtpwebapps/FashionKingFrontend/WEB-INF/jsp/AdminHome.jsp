<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<section style="background:lightgrey;padding:10% 15%;">
			<h2>Welcome Admin: ${sessionScope.username}</h2><br>
			<p>You can view and manage the database tables of Category, Product and Supplier.</p>
		</section>

<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>