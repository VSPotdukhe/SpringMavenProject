<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>

		<div class="container">
			<div class="row justify-content-center" style="margin:5%;">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">Register</div>
						<div class="card-body">
							<form class="form-horizontal" method="post" action="<c:url value='/registerUser'/>">
								<div class="form-group">
									<h2>${errorinfo}</h2>
									<label for="name" class="cols-sm-2 control-label">User Name</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> 
												<input type="text" class="form-control" name="username" id="name" placeholder="Enter Username" required/>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="cols-sm-2 control-label">Password</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
											<input type="password" class="form-control" name="password"	id="password" placeholder="Enter Password" required/>
										</div>
									</div>
								</div>		
								<div class="form-group">
									<label for="username" class="cols-sm-2 control-label">Customer Name</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="customerName" id="username" placeholder="Enter Full Name" required/>
										</div>
									</div>
								</div>																					
 								<div class="form-group">
									<label for="email" class="cols-sm-2 control-label">Your Email</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="emailId" id="email" placeholder="Enter Email" required/>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="username" class="cols-sm-2 control-label">Mobile Number</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="mobileNo" id="username" placeholder="Enter Mobile" required/>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="username" class="cols-sm-2 control-label">Address</label>
									<div class="cols-sm-10">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
											<input type="text" class="form-control" name="address" id="username" placeholder="Enter Address" required/>
										</div>
									</div>
								</div>															
								<div class="form-group ">
									<button type="submit" value="SUBMIT" class="btn btn-primary">Register</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<%@include file="/WEB-INF/jsp/CommonFooter.jsp"%>