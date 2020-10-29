<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
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

</head>
<body>
<jsp:include page="header.jsp" />


<br><br>

<!-- Card deck -->
<div class="container">
	<div class="card-deck">
		<c:forEach var="list" items="${LIST_PRODUCTS}">
				  <!-- Card -->
			 <div class="col-md-3">
			  	<div class="card mb-3">
				    <!--Card image-->
			    <div class="view overlay">
				      <a href="#!">
				      	<img style="height: 200px" class="card-img-top" src="admin/${list.getImage()}" alt="Card image cap">
				      </a>
			    </div>
				
				    <!--Card content-->
				    		<div class="card-body">
				
				      <!--Title-->
				      	<h4 class="card-title" style="height: 100px">${list.getName()}</h4>
				      <!--Text-->
				      	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				      	<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				      	<button type="button" class="btn btn-light-blue btn-md" style="float:right">Buy Now !</button>
	
	    			</div>
				</div>
	  		</div>
  		</c:forEach>
  <!-- Card -->
	</div>	
</div>
<!-- Card deck -->
<br><br><br><br> 
	<%-- Footer --%>
	<jsp:include page="footer.jsp" />
</body>
</html>