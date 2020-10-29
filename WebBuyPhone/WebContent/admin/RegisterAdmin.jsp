<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

       <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>Register</title>
</head>
<body>

	<jsp:include page="/admin/Header/navbar.jsp"></jsp:include>

<div class="container">
<br/><br/>
	            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Register</h1>
                </div>
            </div>
            <br/>
	<form action="/WebBuyPhone/ServletPageAdmin" method="post">
		<input type="hidden" name="command" value="registerAdmin" />
		  <div class="form-group col-md-12">
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
		  <div class="form-group col-md-12">
		    <label for="inputAddress2">Full Name</label>
		    <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Full Name">
		  </div>
		  <div class="form-group col-md-12">
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
		  <div class="form-group col-md-12">
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
		  <div class="form-row">
		   <div class="form-group col-md-12 ">
		  <label for="inputCity" class="">Sex</label><br>
		  <div class="form-check-inline ">
		      <label class="form-check-label" for="radio1">
		        <input type="radio" class="form-check-input" id="Male" name="Sex" value="Male" checked>Male
		      </label>
		       <label class="form-check-label" for="radio2">
		        <input type="radio" class="form-check-input" id="Female" name="Sex" value="Female">Female
		      </label>
		    </div>
		    </div>
		    </div><br><br>
		  <button type="submit" class="btn btn-primary">Register</button>
	</form>
	</div>
<br><br>
</body>
</html>