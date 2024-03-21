<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Results Find Employee By ID</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/findBy.css">
</head>
<body>

	<jsp:include page="sidebarFind.jsp" />
	<div class="card">
		<div class="boxFind">
			<% EmployeeType employeeType = (EmployeeType) request.getAttribute("idEmployeeType"); %>


			<p class="findTitle">Employee Type</p>
			<div class="inline-p1">
				<p>
					<label for="idEmployeeType">Employee Type ID:</label>
				</p>

				<h4><%= employeeType.getIdEmployeeType() %></h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="description">Description:</label>
				</p>

				<h4><%= employeeType.getDescription() %></h4>
			</div>
			<div class="inline-p1">
				<a
					href="${pageContext.request.contextPath}/preUpdateByEmployeeType?idEmployeeType=${idEmployeeType.idEmployeeType}">
					<button class="buttonUpdate" type="button">Update</button>
				</a><a
					href="${pageContext.request.contextPath}/company/deleteByIdEmployee?idEmployee=${idEmployeeType.idEmployeeType}">
					<button class="buttonDelete" type="button">Delete</button>
				</a>
			</div>
		</div>
		<div class="boxTitle">
		<img class="imageLogin"
				style="margin: 10px; height: 300px; width: 300px; border-radius: 300px;"
				src="${pageContext.request.contextPath}/resources/css/Immagini/img-profile.jpg"
				alt="img-profile">
		</div>
	</div>
</body>
</html>