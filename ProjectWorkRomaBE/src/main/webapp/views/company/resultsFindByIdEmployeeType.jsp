<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>

</div>
<% EmployeeType employeeType = (EmployeeType) request.getAttribute("idEmployeeType"); %>
<table>
    <thead>
        <tr>  
            <th>ID Employee Type</th>
            <th>Description</th> 
            <th>Update</th> 
            <th>Delete</th> 
        </tr>
    </thead>
    <tbody>

        <tr>
            <td><%= employeeType.getIdEmployeeType() %></td>
            <td><%= employeeType.getDescription() %></td>
          <td> <a
					href="${pageContext.request.contextPath}/preUpdateByIdEmployee?idEmployeeType=${idEmployeeType.idEmployeeType}">
						<button type="button"><h3>&#10677;</h3></button>
				</a></td>
				<td><a
					href="${pageContext.request.contextPath}/company/deleteByIdEmployee?idEmployee=${idEmployeeType.idEmployeeType}">
						<button type="button"><h3>&#10683;</h3></button>
				</a></td>
			</tr>
			
    </tbody> 
</table>
</body>
</html>