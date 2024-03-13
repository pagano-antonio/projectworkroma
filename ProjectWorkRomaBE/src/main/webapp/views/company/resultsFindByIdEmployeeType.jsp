<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Employee By ID</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>YOUR DATA</span>
</div>
<% EmployeeType employeeType = (EmployeeType) request.getAttribute("idEmployeeType"); %>
<table>
    <thead>
        <tr>
            <th>ID Employee Type</th>
            <th>Description</th> 
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= employeeType.getIdEmployeeType() %></td>
            <td><%= employeeType.getDescription() %></td>
            </td>
        </tr>
    </tbody> 
</table>
</body>
</html>