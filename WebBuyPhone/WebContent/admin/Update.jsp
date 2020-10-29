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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <title>Product Details</title>

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
<title>Insert title here</title>
</head>
<body>
<% 
	Cookie[] theCookieLoopLogin=request.getCookies();
	boolean checkLoginAdmin=false;
	if(theCookieLoopLogin !=null) {
		for(Cookie tempCookie:theCookieLoopLogin) {
			if("checkLoginPageAdmin".equals(tempCookie.getName())&&"true".equals(tempCookie.getValue())) {
				checkLoginAdmin=true;
				break;
			}
		}
	}
	
	if(!checkLoginAdmin) {
		response.sendRedirect("loginPageAdmin.jsp");
	}
%>
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
			<input type="hidden" name="command" value="Update">
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">ID</label>
				      <input type="text" class="form-control"  name="IdProduct" value="${LIST_PRODUCTS.getID()}" disabled="disabled" placeholder="ID Product">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Name</label>
				      <input type="text" class="form-control" name="NameProduct" value="${LIST_PRODUCTS.getName()}" placeholder="Name Product">
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
				    <input type="text" class="form-control" name="Manufacturer" id="nameManufacturer" value="${LIST_PRODUCTS.getManufacturer()}" value=<%=manufacturer %> disabled placeholder="Manufacturer Product" >
				 
				  </div>
				  <div class="form-group col-md-12">
				    <label for="inputAddress2">Price</label>
				    <input type="number" class="form-control" name="PriceProduct" value="${LIST_PRODUCTS.getPrice()}" placeholder="Price Product">
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-3">
				     	<label for="inputAddress2">Screen</label>
				    	<input type="text" class="form-control" name="Screen" value="${LIST_PRODUCTS.getScreen()}" placeholder="Screen Product">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Operating system</label>
				      <input type="text" class="form-control" name="Operating" value="${LIST_PRODUCTS.getOperating()}"  placeholder="Operating system">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Front camera</label>
				      <input type="text" class="form-control" name="FrontCamera" value="${LIST_PRODUCTS.getFrontCamera()}"  placeholder="Front camera">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Rear camera</label>
				      <input type="text" class="form-control" name="RearCamera"  value="${LIST_PRODUCTS.getRearCamera()}" placeholder="Rear camera">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-3">
				     	<label for="inputAddress2">CPU</label>
				    	<input type="text" class="form-control" name="CPU" value="${LIST_PRODUCTS.getCPU()}" placeholder="CPU">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">RAM</label>
				      <input type="text" class="form-control" name="RAM" value="${LIST_PRODUCTS.getRAM()}" placeholder="RAM">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Internal memory</label>
				      <input type="text" class="form-control" name="InternalMemory" value="${LIST_PRODUCTS.getInternalMemory() }" placeholder="Internal memory">
				    </div>
				    <div class="form-group col-md-3">
				      <label for="inputPassword4">Memory Stick</label>
				      <input type="text" class="form-control" name="MemoryStick" value="${LIST_PRODUCTS.getMemoryStick()}" placeholder="Memory Stick">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				     	<label for="inputAddress2">SIM</label>
				    	<input type="text" class="form-control" name="SIM" value="${LIST_PRODUCTS.getSIM()}" placeholder="SIM">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Battery capacity</label>
				      <input type="text" class="form-control" name="BatteryCapacity" value="${LIST_PRODUCTS.getBattery()}" placeholder="Battery capacity">
				    </div>
				  </div>
				  <div class="form-group col-md-12">
				    <label for="inputAddress2">New feature</label>
				    <input type="text" class="form-control" name="Newfeature" value="${LIST_PRODUCTS.getNewFeature() }" placeholder="New feature">
				  </div>
				  <div class="form-group col-md-12">`
				    <label for="inputAddress2">Details</label>
				    <input type="text" class="form-control" name="DetailsProduct" value="${LIST_PRODUCTS.getDetails()}" placeholder="Details">
				  </div>			
				  <div class="form-group col-md-12">
				    <label for="inputAddress2">Image Link</label>
				    <input type="file" style="width:40%" name="linkImage"
				     id="link" >
				  </div>
				  <div class="form-group col-md-12">
				  	<label>Image Product:</label>
				  </div>
				  <div class="form-group col-md-12">
				  	<img style="width: 200px;height: 200px" id="imgProduct" src="${LIST_PRODUCTS.getImage()}"/>
				  	<input type="hidden" name="linkIMG" id="imgHidden">
				  </div>	
				  <script type="text/javascript">
					  document.getElementById("imgHidden").value="${LIST_PRODUCTS.getImage()}";
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
					      document.getElementById("imgHidden").value="false";
					      readURL(this);
					  });
				  </script>
				   <div class="form-group col-md-12">
				  <button type="submit" class="btn btn-primary">Update</button>
				  </div>
				</form>
				
        </div>
    </div>
	
</body>
</html>




