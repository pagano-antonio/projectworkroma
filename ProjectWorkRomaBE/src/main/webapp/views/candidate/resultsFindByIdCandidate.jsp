<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Candidate By Id Candidate</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>
<div class="container1">
<div class="card">
<table>
    <thead>
        <tr>
            <th>ID Candidate</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Birthday</th>
            <th>Birthplace</th>
            <th>Address</th>
            <th>City</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="candidate" items="${idCandidate}">
            <tr>
                <td>${candidate.getIdCandidate()}</td>
                <td>${candidate.getName()}</td>
                <td>${candidate.getSurname()}</td>
                <td>${candidate.getBirthday()}</td>
                <td>${candidate.getBirthPlace()}</td>
                <td>${candidate.getAddress()}</td>
                <td>${candidate.getCity()}</td>
                <td>${candidate.getEmail()}</td>
                <td>${candidate.getPhone()}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidate.getIdCandidate()}">
                        <button type="button">Update</button>
                    </a>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/candidate/deleteByIdCandidate?idCandidate=${candidate.idCandidate}">
                        <button type="button">Delete</button>  
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</div>
</body>
</html>