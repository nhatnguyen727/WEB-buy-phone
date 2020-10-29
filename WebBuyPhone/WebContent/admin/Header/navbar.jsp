
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!-- Navigation -->
<%
	Cookie[] theCookieLoop=request.getCookies();
	for(Cookie tempCookie:theCookieLoop) {
		if("UserLoginAdmin".equals(tempCookie.getName())) {
			
			request.getSession().setAttribute("userNav", tempCookie.getValue());
			break;
		}
	} 
%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<c:url var="tempLinkPageHome" value="/ServletPageAdmin">
		<c:param name="command" value="LoadPageHome" />
	</c:url>
	<ul class="nav navbar-left navbar-top-links">
		<li><a href="${tempLinkPageHome}"><i class="fa fa-home fa-fw"></i></a></li>
	</ul>

	<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target=".navbar-collapse">
		<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
		<span class="icon-bar"></span> <span class="icon-bar"></span>
	</button>

	<!-- Top Navigation: Right Menu -->
	<ul class="nav navbar-right navbar-top-links">
		<c:url var="tempLinkRole" value="/ServletPageAdmin">
			<c:param name="command" value="LoadPageRole" />
		</c:url>
		<li><a href="${tempLinkRole}">Roles</a></li>
		<c:url var="tempLinkPageRegister" value="/ServletPageAdmin">
			<c:param name="command" value="LoadPageRegister" />
		</c:url>

		<li><a href="${tempLinkPageRegister}">Register</a></li>

		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#c"> <i class="fa fa-user fa-fw"></i>
				${userNav} <b class="caret"></b>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#z"><i class="fa fa-user fa-fw"></i> User
						Profile</a></li>
				<li><a href="#x"><i class="fa fa-gear fa-fw"></i> Settings</a>
				</li>
				<c:url var="tempLinkLogOut" value="/ServletPageAdmin">
					<c:param name="command" value="logout" />
				</c:url>
				<li class="divider"></li>
				<li><a href="${tempLinkLogOut}"><i
						class="fa fa-sign-out fa-fw"></i> Logout</a></li>
			</ul></li>
	</ul>

	<!-- Sidebar -->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">

			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-primary" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</li>
				<c:url var="tempLinkManufacturer" value="/ServletPageAdmin">
					<c:param name="command" value="pageManufacturer" />
				</c:url>
				<li><a href="${tempLinkManufacturer}" class="active"><i
						class="fa fa-dashboard fa-fw"></i>Manufacturer</a></li>
				<li><c:url var="tempLinkloadtagProduct"
						value="/ServletPageAdmin">
						<c:param name="command" value="loadtagProduct" />
					</c:url> <a href="${tempLinkloadtagProduct}"><i
						class="fa fa-sitemap fa-fw"></i>Products<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<c:forEach var="list" items="${List_Manufacturer}">
							<c:url var="tempLinkphone" value="/ServletPageAdmin">
								<c:param name="command" value="productPhone" />
								<c:param name="nameManufacturer"
									value="${list.getName_Manufacturer()}" />
								<c:param name="idManufacturer"
									value="${list.getId_Manufacturer()}" />
							</c:url>
							<li><a href="${tempLinkphone}">${list.getName_Manufacturer()}</a>
							</li>

						</c:forEach>

					</ul></li>
			</ul>

		</div>
	</div>
</nav>