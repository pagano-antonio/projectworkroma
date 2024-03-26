<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.EducationDegreeType"%>
<%@page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Education</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/add.css">
<style>
body {
	height: 100vh;
}
</style>
</head>
<body>
	<jsp:include page="sidebarFind.jsp" />

	<div class="container1">
		<div class="card1">
			<h1>New Education</h1>
			<form
				action="${pageContext.request.contextPath}/candidate/addEducation"
				method="POST">
				<div class="inline-p1">
					<p>
						<label for="schoolName">School Name:</label>
					</p>
					<input type="text" id="schoolName" name="schoolName">
				</div>
				<div class="inline-p1">
					<p>
						<label for="place">Place:</label>
					</p>
					<input type="text" id="place" name="place">
				</div>
				<div class="inline-p1">
					<p>
						<label for="date">Date:</label>
					</p>
					<input type="date" id="date" name="date">
				</div>
				<div class="inline-p1">
					<p>
						<label for="finalGrade">Final Grade:</label>
					</p>
					<input type="text" id="finalGrade" name="finalGrade">
				</div>
				<div class="inline-p1">
					<p>
						<label for="educationDegreeType">Education Degree type:</label>
					</p>
					<select name="educationDegreeType">
						<c:forEach var="listEducationDegreeType"
							items="${listEducationDegreeType}">
							<option value="${listEducationDegreeType.idEducationDegreeType}">
								${listEducationDegreeType.idEducationDegreeType}) ${listEducationDegreeType.description}</option>
						</c:forEach>
					</select>
				</div>
				<div class="inline-p1">
					<p>
						<label for="candidate">Candidate:</label>
					</p>
					<select name="candidate">
						<c:forEach var="listCandidate" items="${listCandidate}">
							<option value="${listCandidate.idCandidate}">
								${listCandidate.idCandidate}) ${listCandidate.name} ${listCandidate.surname}</option>
						</c:forEach>
					</select>
				</div>
				<br>
				<hr class="orizzontale">
				<br>
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>