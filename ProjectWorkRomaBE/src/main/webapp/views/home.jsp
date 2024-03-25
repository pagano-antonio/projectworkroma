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

		<div class="utente">
			
			<div class="profilePic">
				<img src="resources/css/Immagini/img-profile.jpg" class="imgProfile">
			</div>
			 <div class="description">
        <% Employee employee = (Employee)request.getAttribute("employee"); %>
        <% EmployeeType employeeType = (EmployeeType)request.getAttribute("employeeType"); %>
        <p><%= employee.getName() %></p>
        <p><%= employee.getSurname() %></p>
        <p class="employeeType"><%= employeeType.getDescription() %></p>
    </div>
		</div>


	</div>
</body>
</html>