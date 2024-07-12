<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserAccount</title>
</head>
<body>
<!-- navigation bar -->
<jsp:include page="navigation.jsp" />

    <c:if test="${not empty sessionScope.user}">
    	<p>ID ${sessionScope.user.id}</p>
        <p>Welcome, ${sessionScope.user.name}!</p>
        <p>Email: ${sessionScope.user.email}</p>
        <p>Phone: ${sessionScope.user.phone}</p>
      	<p>UserName: ${sessionScope.user.userName}</p>
    </c:if>
    
    <c:if test="${not empty sessionScope.admin}">
    	<p>Welcome Admin, ${sessionScope.admin.name}</p>
    	<p>Email: ${sessionScope.admin.email}</p>
    	<p>Phone: ${sessionScope.admin.phone}</p>
    </c:if>
    <a href="userUpdate.jsp" class="btn btn-warning me-2">Update Details</a>
</body>
</html>
