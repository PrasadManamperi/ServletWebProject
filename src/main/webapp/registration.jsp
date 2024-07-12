<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  	<style>
  		.error {
  			display: none;
  			color: red;
  		}
  	</style>
</head>
<body>
<!-- navigation bar -->
    <jsp:include page="navigation.jsp" />

    <div class="container">
        <h2>Register</h2>
        <form action="register" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
                <div class="error" id="nameError">
                    Please enter your name.
                </div>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
                <div class="error" id="emailError">
                    Please enter a valid email address.
                </div>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
                <div class="error" id="phoneError">
                    Please enter your phone number.
                </div>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
                <div class="error" id="usernameError">
                    Please enter a username.
                </div>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
                <div class="error" id="passwordError">
                    Password must be at least 6 characters long.
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
    <p>You already have an account? Then <a href="login.jsp">Login</a> here</p>
    <script src="regValidation.js"></script>
</body>
</html>