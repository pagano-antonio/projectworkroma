<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Education"%>
<%@ page import="com.model.EducationDegreeType"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Employee</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>

	<jsp:include page="sidebarFind.jsp" />
	<div class="container1">
		<div class="card1">

			<%
			Education education = (Education) request.getAttribute("idEducation");
			%>

			<form action="${pageContext.request.contextPath}/updateByIdEducation"
				method="POST">
				<h1 class="title1">Update Education</h1>
				<div class="inline-p1">
					<p>
						<label for="idEducation ">ID:</label>
					</p>
					<input type="number" id="idEducation" name="idEducation"
						value="<%=request.getParameter("idEducation")%>" readonly>
						
				</div>
				<div class="inline-p1">
					<p>
						<label for="idCandidate">Candidate:</label>
					</p>

					<select name="idCandidate">
						<c:forEach var="listIdCandidate" items="${listIdCandidate}">
							<option value="${listIdCandidate.idCandidate}">${listIdCandidate.idCandidate}) ${listIdCandidate.name}
								${listIdCandidate.surname}</option>
						</c:forEach>
					</select>
				</div>
				<div class="inline-p1">
					<p>
						<label for="idEducationDegreeType">Education Degree Type:</label>
					</p>
					<select name="idEducationDegreeType">
						<c:forEach var="listIdEducationDegreeType" 
						items="${listIdEducationDegreeType}">
							<option value="${listIdEducationDegreeType.idEducationDegreeType}">${listIdEducationDegreeType.idEducationDegreeType}) ${listIdEducationDegreeType.description}
							</option>
						</c:forEach>
					</select>
				</div>
				<div class="inline-p1">
					<p>
						<label for="name">School Name:</label>
					</p>
					<input type="text" id="schoolName" name="schoolName"
						value="<%=education.getSchoolName()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="place">Place :</label>
					</p>
					<input type="text" id="place" name="place"
						value="<%=education.getPlace()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="date">Date:</label>
					</p>
					<input type="date" id="date" name="date"
						value="<%=education.getDate()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="finalGrade">Final Grade:</label>
					</p>
					<input type="text" id="finalGrade" name="finalGrade"
						value="<%=education.getFinalGrade()%>">
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