<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/signUp_Login.css">
</head>
<body>
<div class="card">
<div class="boxLogin">
<p class="loginTitle">Login</p>
<form class="formLogin" action="${pageContext.request.contextPath}/login" method="GET" action = "loginServlet">
    <p>Username:</p> 
    <input type="text" name="username" class="inputField"/>
    <p>Password:</p> 
    <input type="password" name="password" class="inputField"/>
    <input type="submit" value="Login" class="buttonLogin"/>
    <button class="buttonRegister">Register</button>
</form>
</div>
<div class="boxTitle">
	<h2 class="title">
		Welcome Back 
	</h2>
	<img class="imageLogin" src="resources/css/Immagini/preLogin.gif" alt="preLogin" width="600" height="400">
</div>
</div>

</body>
</html>