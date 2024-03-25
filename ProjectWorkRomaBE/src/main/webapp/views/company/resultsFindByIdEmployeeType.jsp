<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.EmployeeType"%>
<%@ page import="com.model.Employee"%>
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
	href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>

	<jsp:include page="sidebarFind.jsp" />
	<div class="card1">
		<div class="title">
			<h1>Find Employee Type By ID</h1>
		</div><%
					EmployeeType employeeType = (EmployeeType) request.getAttribute("idEmployeeType");
					%>
		<table class="content-table">
		<tr>
					<th>ID:</th>
					<th>Description:</th></tr>
			<tr>		<td><%=employeeType.getIdEmployeeType()%></td>
					<td><%=employeeType.getDescription()%></td></tr>
					</table>
					
		<table class="content-table">

			<thead>
				<tr>
					

					<th>Employees</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					

					<%
					if (employeeType.getEmployees().size() > 0) {
						for (Employee employee : employeeType.getEmployees()) {
					%>
					<td><%=employee.getUsername()%></td>
					<td><a
						href="${pageContext.request.contextPath}/preUpdateByIdEmployee?idEmployee=<%=employee.getIdEmployee()%>">
							<button class="buttonUpdate" type="button">Update</button>
					</a></td>
					<td><a
						href="${pageContext.request.contextPath}/company/deleteByIdEmployee?idEmployee=<%=employee.getIdEmployee()%>&idEmployeeType=<%=employeeType.getIdEmployeeType()%>">
							<button class="buttonDelete" type="button">Delete</button>
					</a></td>
				</tr>
				<%
				}
				}
				%>

			</tbody>
		</table>
	</div>
</body>
</html>