<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Results Find Candidate By Id Candidate</title>
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
							<td><a
								href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidate.getIdCandidate()}">
									<button type="button"><h3>&#10677;</h3></button>
							</a></td>
							<td><a
								href="${pageContext.request.contextPath}/candidate/deleteByIdCandidate?idCandidate=${candidate.idCandidate}">
									<button type="button"><h3>&#10683;</h3></button>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a
								href="${pageContext.request.contextPath}/job/preAddJobInterview?idCandidate=${candidate.idCandidate}">
									<button type="button"><h3>Start new Job Interview</h3></button>
							</a>
	</div>
</body>
</html>