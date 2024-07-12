<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
</head>
<body>
    <!-- navigation bar -->
    <jsp:include page="navigation.jsp" />
    <!-- Login form -->
    <div class="loginContainer loginStyleCont">
        <form action='log' method="post">
            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="uid" placeholder="Enter UserName" name="uid">
                <label for="uid">User Name:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="pass" placeholder="Enter password" name="pass">
                <label for="pass">Password:</label>
            </div>
            <input type="submit" name="submit" value="Login">
        </form>
        
    </div>
    <p>Still don't you have an account?<a href="registration.jsp"> Register</a> here</p>
</body>
</html>
