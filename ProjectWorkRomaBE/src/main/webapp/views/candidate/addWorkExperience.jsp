<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Work Experience</title>
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
			<h1>New Work Experience</h1>
			<form
				action="${pageContext.request.contextPath}/candidate/addWorkExperience"
				method="POST">
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
				<div class="inline-p1">
					<p>
						<label for="title2">Title:</label>
					</p>
					<input type="text" id="title2" name="title2">
				</div>
				<div class="inline-p1">
					<p>
						<label for="description2">Description:</label>
					</p>
					<input type="text" id="description2" name="description2">
				</div>
				<div class="inline-p1">
					<p>
						<label for="startDate">Start Date:</label>
					</p>
					<input type="date" id="startDate" name="startDate">
				</div>
				<div class="inline-p1">
					<p>
						<label for="endDate">End Date:</label>
					</p>
					<input type="date" id="endDate" name="endDate">
				</div>
				<div class="inline-p1">
					<p>
						<label for="company">Company:</label>
					</p>
					<input type="text" id="company" name="company">
				</div>
				<div class="inline-p1">
					<p>
						<label for="city2">City:</label>
					</p>
					<input type="text" id="city2" name="city2">
				</div>

				<hr class="orizzontale">
				<div class="submit">
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>