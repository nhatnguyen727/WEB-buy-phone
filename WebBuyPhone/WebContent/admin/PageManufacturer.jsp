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
                    <h1 class="page-header">Manufacturer</h1>
                </div>
            </div>

            <!-- ... Your content goes here ... -->
			<form class="container-fluid" action="/WebBuyPhone/ServletPageAdmin" method="post">
			<input type="hidden" name="command" value="addManufacturer">
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Name</label>
				      <input type="text" class="form-control" name="NameManufacturer" placeholder="Name Manufacturer">
				    </div>
				  </div>
				  
				   <div class="form-group col-md-12">
				  <button type="submit" class="btn btn-primary">Save</button>
				  </div>
				</form>
				
        </div>
    </div>
	
</body>
</html>




