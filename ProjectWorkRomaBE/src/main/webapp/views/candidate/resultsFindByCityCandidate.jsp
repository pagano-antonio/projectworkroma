<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Find Candidate By City</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>
    <div class="title">
        <h1>Find Candidate By City</h1>
    </div>
    <div class="card1">
        <table class="content-table">
            <thead>
                <tr>
                    <th>ID Candidate</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Birthday</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="candidate" items="${CityCandidate}">
                    <tr>
                        <td>${candidate.idCandidate}</td>
                        <td>${candidate.name}</td>
                        <td>${candidate.surname}</td>
                        <td>${candidate.birthday}</td>
                        <td>${candidate.address}</td>
                        <td>${candidate.city}</td>
                        <td>${candidate.email}</td>
                        <td>${candidate.phone}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidate.idCandidate}">
                                <button class="buttonUpdate" type="button">Update</button>
                            </a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/candidate/deleteByIdCandidate?idCandidate=${candidate.idCandidate}">
                                <button class="buttonDelete" type="button">Delete</button>  
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
