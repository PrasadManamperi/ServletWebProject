<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap CSS file -->
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<!-- Bootstrap Js File -->
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  	<!-- style.css file -->
  	<link href="css/style.css" rel="stylesheet">
<title>NavBar</title>
</head>
<body>
<div class="loginBtn">
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	
	  <div class="container-fluid">
	    
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="home.jsp">Home</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">About</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Contact</a>
	      </li>
	    </ul>
	  </div>
	  
	  <div class="d-flex">
	  	<%
	  	if (session.getAttribute("admin") != null) {	
	  	%>
		 <a href="useraccount.jsp" class="btn btn-info me-2">Profile</a>
		 <a href="admin.jsp" class="btn btn-info me-2">Panel</a>
	      <form action="logout" method="get">
	      	<button type="submit" class="btn btn-danger">Logout</button>
	      </form>
	      
	    <% 
	    } else if(session.getAttribute("user") != null) { %>
	    	
	    	<a href="useraccount.jsp" class="btn btn-info me-2">Profile</a>
	    	<form action="logout" method="get">
	      		<button type="submit" class="btn btn-danger">Logout</button>
	      	</form>
	    
	    <!--  <a href="login.jsp" class="btn btn-success">Login</a> -->	
	    <% } else { %>
	    	<a href="login.jsp" class="btn btn-success">Login</a>
	    <% } %>
	  </div>
	  
	 <!--   <div class="loginBtn">
	  	<a href="login.jsp" class="btn btn-success">Login</a>
	  </div> -->
	
	</nav>
</div>
</body>
</html>