<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Product Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
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
<style type="text/css">
.hero-image {
 background-color: #cccccc;
  height: 100px;
  width:120px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
   background-size: 100% 100%;
}

</style>
</head>
<body>
	<jsp:include page="/admin/Header/navbar.jsp"></jsp:include>
	<div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Page Details</h1>
                </div>
            </div>

            <!-- ... Your content goes here ... -->
			<form class="container-fluid" action="/WebBuyPhone/ServletPageAdmin" method="post" enctype="multipart/form-data">
			<input type="hidden" name="command" value="addProduct">
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">ID</label>
				      <input type="text" class="form-control"  name="IdProduct" placeholder="ID Product">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Name</label>
				      <input type="text" class="form-control" name="NameProduct"  placeholder="Name Product">
				    </div>
				  </div>
				  <div class="form-group col-md-12">
				    <label for="inputAddress">Manufacturer</label>
				    <%
				    	String manufacturer=null;
				    		Cookie[] theCookieLoop=request.getCookies();//tạo một cái mảng cookie có 
				    		boolean check=false;					//có tên là theCookieloop sau đó lấy ra các đối tượng trong mảng Cookie
				    		if(theCookieLoop !=null) {
				    			for(Cookie tempCookie:theCookieLoop)//dùng để duyệt qu các mảng cookie 
				    				{
				    				if("tagProduct".equals(tempCookie.getName())) {
				    					manufacturer=tempCookie.getValue();
				    					break;
				    				}
				    			}
				    		}
				    %>
				    <input type="text" class="form-control" name="Manufacturer" id="nameManufacturer"  placeholder="Manufacturer Product" value=<%=manufacturer %> disabled>
				 
				  </div>
				  <div class="form-group col-md-12">
				    <label for="inputAddress2">Price</label>
				    <input type="number" class="form-control" name="PriceProduct" placeholder="Price Product">
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-3">
				     	<label for="inputAddress2">Screen</label>
				    	<input type="text" class="form-control" name="Screen" placeholder="Screen Product">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Operating system</label>
				      <input type="text" class="form-control" name="Operating"  placeholder="Operating system">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Front camera</label>
				      <input type="text" class="form-control" name="FrontCamera"  placeholder="Front camera">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Rear camera</label>
				      <input type="text" class="form-control" name="RearCamera"  placeholder="Rear camera">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-3">
				     	<label for="inputAddress2">CPU</label>
				    	<input type="text" class="form-control" name="CPU" placeholder="CPU">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">RAM</label>
				      <input type="text" class="form-control" name="RAM"  placeholder="RAM">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Internal memory</label>
				      <input type="text" class="form-control" name="InternalMemory"  placeholder="Internal memory">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Memory Stick</label>
				      <input type="text" class="form-control" name="MemoryStick"  placeholder="Memory Stick">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				     	<label for="inputAddress2">SIM</label>
				    	<input type="text" class="form-control" name="SIM" placeholder="SIM">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Battery capacity</label>
				      <input type="text" class="form-control" name="BatteryCapacity"  placeholder="Battery capacity">
				    </div>
				  </div>
				  <div class="form-group col-md-12">
				    <label for="inputAddress2">New feature</label>
				    <input type="text" class="form-control" name="Newfeature" placeholder="New feature">
				  </div>
				  <div class="form-group col-md-12">`
				    <label for="inputAddress2">Details</label>
				    <input type="text" class="form-control" name="DetailsProduct" placeholder="Details">
				  </div>			
				  <div class="form-group col-md-12">
				    <label for="inputAddress2">Image Link</label>
				    <input type="file" style="width:40%" name="linkImage" id="link">
				  </div>
				  <script>
				  function readURL(input) {
				      if (input.files && input.files[0]) {
				          var reader = new FileReader();

				          reader.onload = function (e) {
				              $('#imgProduct').attr('src', e.target.result);
				          }

				          reader.readAsDataURL(input.files[0]);
				      }
				  }

				  $("#link").change(function(){
				      readURL(this);
				  });
						
				  </script>	
				  <div class="form-group col-md-12">
				  	<label>Image Product:</label>
				  </div>
				  <div class="form-group col-md-12">
				  	<img style="width: 200px;height: 200px" id="imgProduct"/>
				  </div>
				   <div class="form-group col-md-12">
				  <button type="submit" class="btn btn-primary">Save</button>
				  </div>
				</form>
				<h2>LIST PRODUCTS</h2>       
			  <table class="table table-bordered">
			    <thead>
			      <tr>
			        <th  style="vertical-align:middle;text-align: center">ID</th>
			        <th style="vertical-align:middle;text-align: center">Name</th>
			        <th style="vertical-align:middle;text-align: center">Manufacturer</th>
			        <th style="vertical-align:middle;text-align: center">Price</th>
			        <th style="vertical-align:middle;text-align: center">Image</th>
			        <th style="vertical-align:middle;text-align: center">More</th>
			        <th style="vertical-align:middle;text-align: center">Update</th>
			        <th  style="vertical-align:middle;text-align: center">Delete</th>
        			
			
			       
			         
			      </tr>
			    </thead>
			    <tbody>
			 		<c:forEach var="list" items="${LIST_PRODUCTS}">
			 		
			 		<c:url var="tempLink" value="/ServletPageAdmin">
	 						<c:param name = "command" value="LoadProduct" />
	 						<c:param name = "idProduct" value = "${list.getID()}"/>
	 						
	 		 		</c:url>
	 		 		<c:url var="tempLink1" value="/ServletPageAdmin">
	 						<c:param name = "command" value="delete" />
	 						<c:param name = "deleteProduct" value = "${list.getID()}"/>
	 						
	 		 		</c:url>
	 				
			 		<tr>
							<td  style="vertical-align:middle; text-align: center">${list.getID()}</td>
							<td style="vertical-align:middle;text-align: center;">${list.getName()}</td>
							<td style="vertical-align:middle;text-align: center;">${list.getManufacturer()}</td>
							<td style="vertical-align:middle;text-align: center;">${list.getPrice()}</td>
							<td class="hero-image" style="background-image: url(${list.getImage()});">
						  
							</td>
							<td style="vertical-align:middle;text-align: center;"><a data-toggle="modal" href="#${list.getID()}">See more...</a></td>
							<td style="vertical-align:middle;text-align: center;"><a href="${tempLink}">Update</a></td>
							<td style="vertical-align:middle;text-align: center;"><a href="${tempLink1}">Delete</a></td>
							
						</tr>
						  <!-- Modal -->
						  <div class="modal fade" id="${list.getID()}" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content">
						        	<div class="modal-header">
						          		<button type="button" class="close" data-dismiss="modal">&times;</button>
						          		<h4 class="modal-title"><b>New Feature</b></h4>
						        	</div>
						        	<div class="modal-body">
						          		<p>${list.getNewFeature()}</p>
						        	</div>
						         	<div class="modal-header">
						          		<h4 class="modal-title"><b>Details</b></h4>
						        	</div>
						        	<div class="modal-body">
						          		<p>${list.getDetails()}</p>
						        	</div>
						        	<div class="modal-header">
						          		<h4 class="modal-title"><b>Technical specifications</b></h4>
						        	</div>
						        	<div class="modal-body">
						          		<div style="width: 25%;float: left;">
						          			<b>Screen:</b>
						          		</div>
						          		<div>
						          			${list.getScreen()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>Internal Memory:</b>
						          		</div>
						          		<div>
						          			${list.getInternalMemory()}
						          		</div>
						          		 <div style="width: 25%;float: left;">
						          			<b>Memory Stick:</b>
						          		</div>
						          		<div>
						          			${list.getMemoryStick()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>Operating:</b>
						          		</div>
						          		<div>
						          			${list.getOperating()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>Front Camera:</b>
						          		</div>
						          		<div>
						          			${list.getFrontCamera()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>Rear Camera:</b>
						          		</div>
						          		<div>
						          			${list.getRearCamera()}
						          		</div>
 								        <div style="width: 25%;float: left;">
						          			<b>RAM:</b>
						          		</div>
						          		<div>
						          			${list.getRAM()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>CPU:</b>
						          		</div>
						          		<div>
						          			${list.getCPU()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>SIM:</b>
						          		</div>
						          		<div>
						          			${list.getSIM()}
						          		</div>
						          		<div style="width: 25%;float: left;">
						          			<b>Battery:</b>
						          		</div>
						          		<div>
						          			${list.getBattery()}
						          		</div>
						        	</div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						  </div>
					</c:forEach>
			    </tbody>
			  </table>
        </div>
    </div>
	
</body>
</html>