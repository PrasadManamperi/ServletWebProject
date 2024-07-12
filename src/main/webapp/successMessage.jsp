<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.successContainer {
		width: 100%;
		height: 45vh;
		display: grid;
		justify-content: center;
		align-items: center;
	}
</style>
</head>
<body>
	<jsp:include page="navigation.jsp" />
	<div class="successContainer">
	<h1>You have successfully registered</h1>
	<a href="login.jsp" class="btn btn-primary">Login here</a>
	</div>
</body>
</html>