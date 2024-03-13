<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--<title>Login</title>-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/signUp_Login.css">
</head>
<body>
<div class="card">
<div class="boxLogin">
<p class="loginTitle">Login</p>
<form class="formLogin" action="${pageContext.request.contextPath}/loginCtr/login" method="GET" action = "loginServlet">
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
		Welcome Back to 
		Management Roma
	</h2>
	<img class="imageLogin" src="https://img.freepik.com/free-vector/global-data-security-personal-data-security-cyber-data-security-online-concept-illustration-internet-security-information-privacy-protection_1150-37336.jpg?t=st=1710346543~exp=1710350143~hmac=d23240edc133cc0abcca196fa589b07527657742a5d7ab3c3aac2238f9657786&w=1800" alt="Cinque Terre" width="600" height="400">
</div>
</div>

</body>
</html>