
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
	<div
		class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Left</a>
			</li>
			
			
			<c:forEach var="list" items="${List_Manufacturer}">
				<c:url var="tempLinkViewProduct" value="ServletPage">
					<c:param name="command" value="viewProduct" />
					<c:param name = "nameManufacturer" value = "${list.getName_Manufacturer()}"/>
					<c:param name = "idManufacturer" value = "${list.getId_Manufacturer()}"/>
				</c:url>
				<li class="nav-item"><a class="nav-link" href="${tempLinkViewProduct}">${list.getName_Manufacturer()}</a>
				</li>
			</c:forEach>
			
			
		</ul>
	</div>
	<div class="mx-auto order-0">
		<a class="navbar-brand mx-auto" href="#"> <i class="fas fa-pallet"></i>
			LO GIN
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target=".dual-collapse2">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
	<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
		<ul class="navbar-nav ml-auto">
		<%
			boolean check=false;
		Cookie[] theCookie=request.getCookies();
		if(theCookie !=null) {
			for(Cookie tempCookie:theCookie) {
				if("checklogin".equals(tempCookie.getName())&& tempCookie.getValue().equals("true")) {
					check=true;
					break;
				}
			}
		}
		if(!check){
		%>
		<c:url var="tempLinkPageRegister" value="/ServletPage">
	 						<c:param name = "command" value="pageRegister" />
	 			 		</c:url>
			<li class="nav-item">
				<a class="nav-link" href="${tempLinkPageRegister}">
					<i class="fas fa-user-plus"></i> Sign Up
				</a>
			</li>
		<c:url var="tempLinkPageLogin" value="/ServletPage">
	 						<c:param name = "command" value="pageLogin" />
	 			 	</c:url>
			<li class="nav-item">
			<a class="nav-link" href="${tempLinkPageLogin }"> 
			<i class="fas fa-sign-in-alt"></i> Sign In
			</a>
				</li>
			<%
			  } else {
			%>
			<li class="nav-item"><a class="nav-link" href="#">
			<i class="fas fa-user-tie"></i>
			<% 
			theCookie=request.getCookies();
			String fullName=null;
			if(theCookie != null){
				for(Cookie temCookie :theCookie){
					if("userlogin".equals(temCookie.getName())){
						fullName=temCookie.getValue();
						break;
					}
				}
			}
			out.print(fullName); %>
			</a></li>
			<c:url var="tempLinkLogOut" value="ServletPage">
				<c:param name="command" value="logout" />
			</c:url>
			<li>
			<a class="nav-link" href="${tempLinkLogOut}"><i
					class="fas fa-sign-out-alt"></i> Log Out</a></li>
			<%
				}
			%>
		</ul>
	</div>
</nav>