<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Employee"%>
<%@ page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/home.css">

</head>

<body>


	<jsp:include page="sidebar.jsp" />
	<div class="card">

		<div>
			<img src="resources/css/Immagini/home.gif" class="imghome">
		</div>
		<div class="welcomeSection">
			<h1 class="welcomeMessage">Welcome!</h1>
			<p>Let's get to work!</p>
		</div>
		<% Employee employee = (Employee)request.getSession().getAttribute("employee"); %>
		<% EmployeeType employeeType = (EmployeeType)request.getSession().getAttribute("employeeType"); %>
		<div class="utente">

			<div class="profilePic">
				<img src="resources/css/Immagini/<%=employee.getProfilePic()%>"
					class="imgProfile">
			</div>
			<div class="description">

				<p><%= employee.getName() %>
					<%= employee.getSurname() %></p>
				<p class="employeeType"><%= employeeType.getDescription() %></p>
			</div>
		</div>


	</div>
</body>
</html>