<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.WorkExperience"%>
<%@ page import="com.model.Candidate"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update WorkExperience</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>
	<jsp:include page="sidebar.jsp" />
	<div class="container1">
		<div class="card1">
			<%
			WorkExperience workExperience = (WorkExperience) request.getAttribute("idWorkExperience");
			%>
			<form
				action="${pageContext.request.contextPath}/updateByIdWorkExperience"
				method="POST">

				<h1 class="title1">Update Work Experience</h1>
				<div class="inline-p1">
					<p>
						<label for="idWorkExperience"> ID:</label>
					</p>
					<input type="number" id="IdWorkExperience" name="IdWorkExperience"
						value="<%=request.getParameter("idWorkExperience")%>" readonly>
				</div>
				<div class="inline-p1">
					<p>
						<label for="title">Title:</label>
					</p>
					<input type="text" id="title" name="title"
						value="<%=workExperience.getTitle()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="description">Description:</label>
					</p>
					<input type="text" id="description" name="description"
						value="<%=workExperience.getDescription()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="city">City:</label>
					</p>
					<input type="text" id="city" name="city"
						value="<%=workExperience.getCity()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="company">Company:</label>
					</p>
					<input type="text" id="company" name="company"
						value="<%=workExperience.getCompany()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="startDate">Start Date:</label>
					</p>
					<input type="date" id="startDate" name="startDate"
						value="<%=workExperience.getStartDate()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="endDate">End Date:</label>
					</p>
					<input type="date" id="endDate" name="endDate"
						value="<%=workExperience.getEndDate()%>">
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="idCandidate">Candidate:</label>
					</p>

					<select name="idCandidate">
						<c:forEach var="listIdCandidate" items="${listIdCandidate}">
							<option value="${listIdCandidate.idCandidate}">${listIdCandidate.idCandidate}-${listIdCandidate.name}
								${listIdCandidate.surname}</option>
						</c:forEach>
					</select>
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