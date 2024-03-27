<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Candidate"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Job Interview</title>
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
			<h1>New Job Interview</h1>

			<form class="formAdd"
				action="${pageContext.request.contextPath}/job/addJobInterview"
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
						<label for="employee">Employee:</label>
					</p>
					<select name="employee">
						<c:forEach var="listIdEmployee" items="${listIdEmployee}">
							<option value="${listIdEmployee.idEmployee}">
								${listIdEmployee.idEmployee}) ${listIdEmployee.username}</option>
						</c:forEach>
					</select>
				</div>		
				<div class="inline-p1">
					<p>
						<label for="date2">Date:</label>
					</p>
					<input type="date" id="date2" name="date2">
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="stateJobInterview">State Job Interview:</label>
					</p>
					<select name="stateJobInterview">
						<c:forEach var="listIdStateJobInterview" items="${listIdStateJobInterview}">
							<option value="${listIdStateJobInterview.idStateJobInterview}">
								${listIdStateJobInterview.idStateJobInterview}) ${listIdStateJobInterview.title}: ${listIdStateJobInterview.description}</option>
						</c:forEach>
					</select>
				</div>
				
				
				<div class="inline-p1">
					<p>
						<label for="outcome">Outcome:</label>
					</p>
					<input type="number" id="outcome" name="outcome">
				</div>		
				<div class="inline-p1">
					<p>
						<label for="notes2">Notes:</label>
					</p>
					<textarea id="notes2" name="notes2"></textarea>
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