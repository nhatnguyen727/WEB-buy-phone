<%@page import="Models.Roles"%>
<%@page import="javafx.collections.ObservableList"%>
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>List Roles</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
</head>
<body>
	<jsp:include page="/admin/Header/navbar.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="container">

		<table class="table table-bordered">
			<thead>
				<tr>
					<th style="vertical-align: middle; text-align: center">Id_Customer</th>
					<th style="vertical-align: middle; text-align: center">Username</th>
					<th style="vertical-align: middle; text-align: center">C-Register</th>
					<th style="vertical-align: middle; text-align: center">R-Register</th>
					<th style="vertical-align: middle; text-align: center">U-Register</th>
					<th style="vertical-align: middle; text-align: center">D-Register</th>
					<th style="vertical-align: middle; text-align: center">Save</th>
				</tr>
		
			</thead>
			<tbody>
		<tr>
				<c:forEach var="list" items="${List_Roles}">
				
					<td style="vertical-align: middle; text-align: center">${list.getId_Customer()}</td>
					<td style="vertical-align: middle; text-align: center">${list.getUsername()}</td>
					<td id="${list.getUsername()}" style="vertical-align: middle; text-align: center;"><input
					style="width: 16px;height: 16px" name="C-Register" type="checkbox" 
					value="${list.getC_Register()}"
						
					>
				

			
				</td>
					<td style="vertical-align: middle; text-align: center;"><input
					style="width: 16px;height: 16px"	name="R-Register" type="checkbox" 
					value="${list.getR_Register()}"
					
					></td>
					<td style="vertical-align: middle; text-align: center;"><input
					style="width: 16px;height: 16px"	name="U-Register" type="checkbox" 
					value="${list.getU_Register()}"
					
					></td>
					<td style="vertical-align: middle; text-align: center;"><input
					style="width: 16px;height: 16px" name="D-Register" type="checkbox" 
					value="${list.getD_Register()}"
					
					></td>
					<td style="vertical-align: middle; text-align: center"><button class="btn btn-primary">Save</button></td>
				<td>${list.getTest_Value()}</td>
				</c:forEach>
			


				</tr>
			</tbody>
		</table>
		<script type="text/javascript">
		var inputElements = document.getElementsByName('C-Register');
		for(var i=0; inputElements[i]; ++i){
		      if(inputElements[i].value=="true"){
		           inputElements[i].checked=true;
		    
      			}
		      else{
			  inputElements[i].checked=false;
		      }
		}
		var inputElements = document.getElementsByName('R-Register');
		for(var i=0; inputElements[i]; ++i){
		      if(inputElements[i].value=="true"){
		           inputElements[i].checked=true;
		    
      			}
		      else{
			  inputElements[i].checked=false;
		      }
		}
		var inputElements = document.getElementsByName('U-Register');
		for(var i=0; inputElements[i]; ++i){
		      if(inputElements[i].value=="true"){
		           inputElements[i].checked=true;
		    
      			}
		      else{
			  inputElements[i].checked=false;
		      }
		}
		var inputElements = document.getElementsByName('D-Register');
		for(var i=0; inputElements[i]; ++i){
		      if(inputElements[i].value=="true"){
		           inputElements[i].checked=true;
		    
      			}
		      else{
			  inputElements[i].checked=false;
		      }
		}
      </script>

	</div>
</body>
</html>