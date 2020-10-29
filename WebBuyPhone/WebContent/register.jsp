<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/css/mdb.min.css" rel="stylesheet">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<style type="text/css">
	
		input[type="date"]::-webkit-calendar-picker-indicator {
		    background: transparent;
		    bottom: 0;
		    color: transparent;
		    cursor: pointer;
		    height: auto;
		    left: 0;
		    position: absolute;
		    right: 0;
		    top: 0;
		    width: auto;
		}
	</style>
</head>
<body>


	<%-- Header --%>
<jsp:include page="header.jsp" />



	<%-- Body --%>
<br><br>
<div class="container">
	<h4 style="color: #007bff;text-align: center">Form Register</h4>
	<br>
	<form action="ServletPage" method="post">
		<input type="hidden" name="command" value="register" />
		  <div class="form-group">
			    <label for="inputUsername">Username</label>
			    <input type="text" class="form-control" name="userName" id="userName" placeholder="Username">
			</div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputEmail4">Password</label>
		      <input type="password" name="password" class="form-control" id="password" placeholder="Password">
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputPassword4">Confirm Password</label>
		      <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputAddress2">Full Name</label>
		    <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Full Name">
		  </div>
		  <div class="form-group">
		    <label for="inputAddress">Address</label>
		    <input type="text" class="form-control" id="Address" name="Address"  placeholder="Address">
		  </div>
		  <div class="form-row">
		    <div class="form-group col-md-6">
		      <label for="inputCity">Email</label>
		      <input type="email" class="form-control" id="email" name="email" placeholder="Email">
		    </div>
		    <div class="form-group col-md-6">
		      <label for="inputZip">Phone</label>
		      <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputAddress">Passport</label>
		    <input type="text" class="form-control" id="Passport" name="Passport" placeholder="Passport">
		  </div>
		   <div class="form-row">
		    <div class="form-group col-md-12 ">
		    <%-- https://gijgo.com/datepicker/example/bootstrap-4 --%>
		      <label for="inputCity">Birthday</label>
		      <input type="date" required class="form-control input-container" id="birthday" name="birthday" placeholder="Birthday">
		    </div>
		  </div>
		  <label for="inputCity">Sex</label><br>
		  <div class="form-check-inline">
		  
		      <label class="form-check-label" for="radio1">
		        <input type="radio" class="form-check-input" id="Male" name="Sex" value="Male" checked>Male
		      </label>
		    </div>
		    <div class="form-check-inline">
		      <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="Female" name="Sex" value="Female">Female
		      </label>
		  </div><br><br>
		  <button type="submit" class="btn btn-primary">Register</button>
	</form>
	</div>
<br><br>



	<%-- Footer --%>
	<jsp:include page="footer.jsp" />
	
	
</body>
</html>