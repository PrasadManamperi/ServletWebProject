<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- navigation bar -->
	<jsp:include page="navigation.jsp" />
	<div class="container">
        <h2>Update</h2>
        <form action="updateUser" method="post">
        	<div class="mb-3">
                <label for="uid" class="form-label">ID</label>
                <input type="text" class="form-control" id="uid" name="uid" value="${sessionScope.user.id}" readonly>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${sessionScope.user.name}" required>
                <div class="error" id="nameError">
                    Please enter your name.
                </div>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="${sessionScope.user.email}" required>
                <div class="error" id="emailError">
                    Please enter a valid email address.
                </div>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="${sessionScope.user.phone}" required>
                <div class="error" id="phoneError">
                    Please enter your phone number.
                </div>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" value="${sessionScope.user.userName}" required>
                <div class="error" id="usernameError">
                    Please enter a username.
                </div>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" value="${sessionScope.user.password}" required>
                <div class="error" id="passwordError">
                    Password must be at least 6 characters long.
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>