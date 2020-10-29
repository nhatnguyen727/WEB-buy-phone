<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Admin</title>
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
<link rel="stylesheet" type="text/css" href="cssFormLogin.css"  />
</head>
<body>

<div class="container">
	<form action="/WebBuyPhone/ServletPageAdmin" method="post">
	<input type="hidden" name="command" value="loginPageAdmin" />
		<div class="box-1"></div>
		<div class="box-2"></div>
		<div class="box-3"></div>
		<div class="box-login">
			<br>
			<br>
			<h1
				style="text-align: center; font-family: 'Montserrat', sans-serif;">LOGIN</h1>
			<input type="text" placeholder="Username" name="username"> <br>
			<input type="password" placeholder="Password" name="password">
			<br>
			<a style="margin-left: 180px;margin-bottom:50px; font-family: 'Montserrat', sans-serif;text-decoration: underline">Forgot
				Password ?</a><br /><br />
			<a><button type="submit">Login</button></a>		
		</div>
		</form>
	</div>
<br><br>
</body>
</html>