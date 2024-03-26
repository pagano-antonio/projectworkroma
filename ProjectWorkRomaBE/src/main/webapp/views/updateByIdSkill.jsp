<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Skill"%>
<%@ page import="com.model.Candidate"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Skill</title>
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
			Skill skill = (Skill) request.getAttribute("idSkill");
			%>

			<form
				action="${pageContext.request.contextPath}/updateByIdSkill"
				method="POST">
				<h1 class="title1">Update Skill</h1>
				<div class="inline-p1">
					<p>
						<label for="idSkill">ID:</label>
					</p>
					<input type="number" id="idSkill" name="idSkill"
						value="<%=request.getParameter("idSkill")%>" readonly>
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
						<label for="title">Title:</label>
					</p>
					<input type="text" id="title" name="title"
						value="<%=skill.getTitle()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="description">Description:</label>
					</p>
					<input type="text" id="description" name="description"
						value="<%=skill.getDescription()%>">
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