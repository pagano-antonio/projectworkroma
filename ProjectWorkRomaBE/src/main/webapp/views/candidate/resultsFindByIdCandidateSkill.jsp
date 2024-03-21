<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find Candidate by Skill</title>
</head>
<body>
<div class="container">
    <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDV3NzhzMTd3YWxiN2J6dG1ldGF4dXduMmdoNWp6YXI2b3JzenBpMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/eNwGfck2Awo3d2gB32/giphy.gif" width="200" alt="Weoplespace Sticker">
    <span>YOUR DATA</span>
</div>
<table>
    <thead>
        <tr>
        	<th>CandidateSkill ID</th>
        	<th>Skill</th>
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
        <c:forEach var="candidateSkill" items="${idCandidateSkill}">
            <tr>
            	
                <td>${candidateSkill.idCandidateSkill}</td>
                <td>${candidateSkill.getCandidate().getIdCandidate()}</td>
                <td>${candidateSkill.skill}</td>
                <td>${candidateSkill.getCandidate().getName()}</td>
                <td>${candidateSkill.getCandidate().getSurname()}</td>
                <td>${candidateSkill.getCandidate().getBirthday()}</td>
                <td>${candidateSkill.getCandidate().getBirthPlace()}</td>
                <td>${candidateSkill.getCandidate().getAddress()}</td>
                <td>${candidateSkill.getCandidate().getCity()}</td>
                <td>${candidateSkill.getCandidate().getEmail()}</td>
                <td>${candidateSkill.getCandidate().getPhone()}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidateSkill.getCandidate().getIdCandidate()}">
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