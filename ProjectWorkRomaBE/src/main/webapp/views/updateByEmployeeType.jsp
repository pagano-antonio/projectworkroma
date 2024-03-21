<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Employee Type</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>

	<jsp:include page="sidebar.jsp" />
	<div class="container1">
		<div class="card1">

			<%
			EmployeeType employeeType = (EmployeeType) request.getAttribute("idEmployeeType");
			%>

			<form action="${pageContext.request.contextPath}/updateByEmployeeType"
				method="POST">
				<h1 class="title1">Update Employee</h1>
				<div class="inline-p1">
					<p>
						<label for="idEmployeeType">Employee Type ID:</label>
					</p>
					<input type="number" id="idEmployeeType" name="idEmployeeType"
						value="<%=request.getParameter("idEmployeeType")%>" readonly>						
				</div>
		
				<div class="inline-p1">
					<p>
						<label for="description">Description:</label>
					</p>
					<input type="text" id="description" name="description"
						value="<%=employeeType.getDescription()%>">
				</div>
				
				<hr>
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>