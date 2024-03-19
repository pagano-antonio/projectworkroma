<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/signUp_Login.css">
</head>
<body>
	<div class="card">
		<div class="boxLogin">
			<p class="loginTitle">Sign In</p>
			<form class="formLogin"
				action="${pageContext.request.contextPath}/addEmployee"
				method="POST">

				<p>
					<label for="name">Name:</label>
				</p>
				<input class="inputField" type="text" id="name" name="name" required
					minlength="3" maxlength="15">
				<p>
					<label for="surname">Surname:</label>
				</p>
				<input class="inputField" type="text" id="surname" name="surname"
					required minlength="3" maxlength="15">

				<p>
					<label for="email">Email:</label>
				</p>
				<input class="inputField" type="email" id="email" name="email">


				<p>
					<label for="username">Username:</label>
				</p>
				<input class="inputField" type="text" id="username" name="username">


				<p>
					<label for="password">Password:</label>
				</p>
				<input class="inputField" type="password" id="password"
					name="password">

				<p>
					<label for="employeeType">Employee type:</label>
				</p>
				<select name="employeeType">
					<c:forEach var="listEmployeeType" items="${listEmployeeType}">
						<option value="${listEmployeeType.idEmployeeType}">
							${listEmployeeType.description}</option>
					</c:forEach>
				</select> <input type="submit" value="Register" class="buttonLogin" />

			</form>
			<a href="${pageContext.request.contextPath}/preLogin">
				<button class="buttonRegister">Login</button>
		</div>
		<div class="boxTitle">
			<img class="imageLogin" src="resources/css/Immagini/lock.gif"
				alt="lock" width="1000" height="1000">
		</div>
	</div>

</body>
</html>