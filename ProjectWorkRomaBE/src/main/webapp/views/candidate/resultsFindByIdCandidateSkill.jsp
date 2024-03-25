<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find Candidate by Skill</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/results.css">
</head>
<body>
<div class="card1">
<div class="title">
<h1> Find Candidate By ID Skill</h1>
</div>
<table class="content-table">
    <thead>
        <tr>
        	<th>ID:</th>
        	<th>Skill</th>
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
        <c:forEach var="candidateSkill" items="${idCandidateSkill}">
            <tr>
            	
                <td>${candidateSkill.idCandidateSkill}</td>           
                <td hidden>${candidateSkill.skill.getIdSkill()}</td>
                <td>${candidateSkill.skill.getDescription()}</td>
                <td hidden>${candidateSkill.getCandidate().getIdCandidate()}</td>
                <td>${candidateSkill.getCandidate().getName()}</td>
                <td>${candidateSkill.getCandidate().getSurname()}</td>
                <td>${candidateSkill.getCandidate().getBirthday()}</td>
                <td>${candidateSkill.getCandidate().getAddress()}</td>
                <td>${candidateSkill.getCandidate().getCity()}</td>
                <td>${candidateSkill.getCandidate().getEmail()}</td>
                <td>${candidateSkill.getCandidate().getPhone()}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidateSkill.getCandidate().getIdCandidate()}">
                        <button  class="buttonUpdate" type="button" >Update</button>
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