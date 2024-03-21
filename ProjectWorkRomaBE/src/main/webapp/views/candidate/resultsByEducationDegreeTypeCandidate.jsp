<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find Candidate by Education Degree Type</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>
<table>
    <thead>
        <tr>
            <th>Candidate ID</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Birthday</th>
            <th>Birth Place</th>
            <th>Address</th>
            <th>City</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="candidate" items="${EducationDegreeTypeCandidate}">
            <tr>
                <td>${candidate.idCandidate}</td>
                <td>${candidate.name}</td>
                <td>${candidate.surname}</td>
                <td>${candidate.birthday}</td>
                <td>${candidate.birthPlace}</td>
                <td>${candidate.address}</td>
                <td>${candidate.city}</td>
                <td>${candidate.email}</td>
                <td>${candidate.phone}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidate.idCandidate}">
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
</body>
</html>