<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<style type="text/css">
	 body {
		font-family: "Open Sans", sans-serif;
	}
	h2 {
		color: #000;
		font-size: 26px;
		font-weight: 300;
		text-align: center;
		text-transform: uppercase;
		position: relative;
		margin: 30px 0 80px;
	}
	h2 b {
		color: #ffc000;
	}
	h2::after {
		content: "";
		width: 100px;
		position: absolute;
		margin: 0 auto;
		height: 4px;
		background: rgba(0, 0, 0, 0.2);
		left: 0;
		right: 0;
		bottom: -20px;
	}
	.carousel {
		margin: 50px auto;
		padding: 0 70px;
	}
	.carousel .item {
		min-height: 330px;
	    text-align: center;
		overflow: hidden;
	}
	.carousel .item .img-box {
		height: 160px;
		width: 100%;
		position: relative;
	}
	.carousel .item img {	
		max-width: 100%;
		max-height: 100%;
		display: inline-block;
		position: absolute;
		bottom: 0;
		margin: 0 auto;
		left: 0;
		right: 0;
	}
	.carousel .item h4 {
		font-size: 18px;
		margin: 10px 0;
	}
	.carousel .item .btn {
		color: #333;
	    border-radius: 0;
	    font-size: 11px;
	    text-transform: uppercase;
	    font-weight: bold;
	    background: none;
	    border: 1px solid #ccc;
	    padding: 5px 10px;
	    margin-top: 5px;
	    line-height: 16px;
	}
	.carousel .item .btn:hover, .carousel .item .btn:focus {
		color: #fff;
		background: #000;
		border-color: #000;
		box-shadow: none;
	}
	.carousel .item .btn i {
		font-size: 14px;
	    font-weight: bold;
	    margin-left: 5px;
	}
	.carousel .thumb-wrapper {
		text-align: center;
	}
	.carousel .thumb-content {
		padding: 15px;
	}
	.carousel .carousel-control {
		height: 100px;
	    width: 40px;
	    background: none;
	    margin: auto 0;
	    background: rgba(0, 0, 0, 0.2);
	}
	.carousel .carousel-control i {
	    font-size: 30px;
	    position: absolute;
	    top: 50%;
	    display: inline-block;
	    margin: -16px 0 0 0;
	    z-index: 5;
	    left: 0;
	    right: 0;
	    color: rgba(0, 0, 0, 0.8);
	    text-shadow: none;
	    font-weight: bold;
	}
	.carousel .item-price {
		font-size: 13px;
		padding: 2px 0;
	}
	.carousel .item-price strike {
		color: #999;
		margin-right: 5px;
	}
	.carousel .item-price span {
		color: #86bd57;
		font-size: 110%;
	}
	.carousel .carousel-control.left i {
		margin-left: -3px;
	}
	.carousel .carousel-control.left i {
		margin-right: -3px;
	}
	
	.star-rating li {
		padding: 0;
	}
	.star-rating i {
		font-size: 14px;
		color: #ffc000;
	}
	 </style>
		
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" >
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="form-login.css">
</head>
<body>
<jsp:include page="header.jsp" />

	<!-- slide -->
<div id="carouselExampleControls" class="carousel slide container" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" >
      <img class="d-block w-100" src="admin/Image/huawei-P30-800-300-800x300.png" alt="First slide" style="height: 300;width: 100%">
    </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- View product -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h2>Sản Phẩm <b>Bán Chạy</b></h2>
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">  
			<!-- Wrapper for carousel items -->
			<div class="carousel-inner">
				<div class="item carousel-item active">
					<div class="row">
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="admin/Image/Iphone/iphone-xs-max-256gb-white-600x600.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>  Iphone</h4>
									<p class="item-price"><del>$400.00</del> <span>$369.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="admin/Image/Iphone/iphone-xs-max-512gb-gold-400x460.png" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Oppo</h4>
									<p class="item-price"><del>$25.00</del> <span>$23.99</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>		
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="admin/Image/Oppo/11.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Macbook Air</h4>
									<p class="item-price"><del>$899.00</del> <span>$649.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>								
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Iphone/4.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Nikon DSLR</h4>
									<p class="item-price"><del>$315.00</del> <span>$250.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
					</div>
				</div>
				<div class="item carousel-item">
					<div class="row">
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Samsung/8.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Sony Play Station</h4>
									<p class="item-price"><del>$289.00</del> <span>$269.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Oppo/10.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Macbook Pro</h4>
									<p class="item-price"><del>$1099.00</del> <span>$869.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Oppo/11.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Bose Speaker</h4>
									<p class="item-price"><del>$109.00</del> <span>$99.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Oppo/12.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Samsung Galaxy S8</h4>
									<p class="item-price"><del>$599.00</del> <span>$569.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>						
					</div>
				</div>
				<div class="item carousel-item">
					<div class="row">
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Oppo/9.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Apple iPhone</h4>
									<p class="item-price"><del>$369.00</del> <span>$349.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Samsung/5.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Canon DSLR</h4>
									<p class="item-price"><del>$315.00</del> <span>$250.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Samsung/6.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Google Pixel</h4>
									<p class="item-price"><del>$450.00</del> <span>$418.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>	
						<div class="col-sm-3">
							<div class="thumb-wrapper">
								<div class="img-box">
								<a href="#">
									<img src="Image/Samsung/7.jpg" class="img-responsive img-fluid" alt="">
									</a>
								</div>
								<div class="thumb-content">
									<h4>Apple Watch</h4>
									<p class="item-price"><del>$350.00</del> <span>$330.00</span></p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>						
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Carousel controls -->
			<a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
				<i class="fa fa-angle-left"></i>
			</a>
			<a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
				<i class="fa fa-angle-right"></i>
			</a>
		</div>
		</div>
	</div>
</div>

</body>
</html>