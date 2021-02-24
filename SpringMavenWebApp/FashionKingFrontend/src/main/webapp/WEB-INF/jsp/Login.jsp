<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6">
					<div style="margin:10%">
						<img src="<c:url value='./images/traveller.jpg'/>" width="100%" >
					</div>
				</div>
				<div class="col-sm-6">
					<div style="margin:15%;max-width:300px;">
						<h2>Login Here</h2>
				  		<form action="perform_login" method="post">
					    	<div class="form-group">
					      		<input type="text" name="username" class="form-control" placeholder="Username" required>
					    	</div>
					    	<div class="form-group">
					      		<input type="password" name="password" class="form-control" id="pwd" placeholder="Password" required>
					   		</div>
					    	<button type="submit" value="SUBMIT" class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	
<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>