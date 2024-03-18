<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Employee"%>
<%@ page import="com.model.EmployeeType"%>
<!DOCTYPE html>
<html lang="en">
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Employee</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body> 
<div class="container1"> 
   
<% Employee employee = (Employee) request.getAttribute("idEmployee"); %>

<form action="${pageContext.request.contextPath}/updateByIdEmployee" method="POST">   
    <div class="data-group">
        <label for="idEmployee">ID Employee:</label>
        <input type="number" id="idEmployee" name="idEmployee" value="<%=request.getParameter("idEmployee")%>" readonly>
    </div>
    <div class="data-group">
        <label for="idEmployeeType">ID Employee Type:</label>
         <select name="idEmployeeType">
     <c:forEach var="listIdEmployeeTYpe" items="${listIdEmployeeType}">
        <option value="${listIdEmployeeType.idEmployeeType}">${listIdEmployeeType.description} </option>
    </c:forEach>
  </select></div>
    <div class="data-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%=employee.getName()%>">
    </div>
    <div class="data-group">
        <label for="surname">Surname:</label>
        <input type="text" id="surname" name="surname" value="<%=employee.getSurname()%>">
    </div>
    <div class="data-group">
        <label for="email">Email:</label>
        <input type="text" id="email" name= "email" value="<%=employee.getEmail()%>">
    </div>
     <div class="data-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="<%=employee.getUsername()%>">
    </div>
     <div class="data-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="<%=employee.getPassword()%>">
    </div>
    
       
    <div class="submit">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</div>
</body>
</html>