<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Results Find Employee ID</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<div class="container">
		<img
			src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif"
			width="200" alt="Weoplespace Sticker"> <span>YOUR DATA</span>
	</div>
	<%
	Employee employee = (Employee) request.getAttribute("EmployeeId");
	%>

	<table>
		<thead>
			<tr>
				<th>Employee ID</th>
				<th>Employee Type ID</th>
				<th>Name</th>
				<th>Surname</th>
				<th>Username</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>   
			<tr>
				<td><%=employee.getIdEmployee()%></td>
				<td><select name="employeeType">
						<option
							value="<%=employee.getEmployeeType().getIdEmployeeType()%>">
							<%=employee.getEmployeeType().getIdEmployeeType()%></option>

				</select></td>
				<td><%=employee.getName()%></td>
				<td><%=employee.getSurname()%></td>
				<td><%=employee.getUsername()%></td>
				<td><a
					href="${pageContext.request.contextPath}/company/preUpdateByIdEmployee?idEmployee=${employee.idEmployee}">
						<button type="button">Update</button>
				</a></td>
				<td><a
					href="${pageContext.request.contextPath}/company/deleteByIdEmployee?idEmployee=${employee.idEmployee}">
						<button type="button">Delete</button>
				</a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>