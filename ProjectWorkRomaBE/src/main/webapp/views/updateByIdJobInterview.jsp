<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.JobInterview"%>
<%@ page import="com.model.Candidate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Job Interview</title>
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
			JobInterview jobInterview = (JobInterview) request.getAttribute("idJobInterview");
			Candidate candidate=(Candidate)request.getAttribute("idCandidate");
			%>

			<form
				action="${pageContext.request.contextPath}/updateByIdJobInterview"
				method="POST">
				<h1 class="title1">Update Job Interview</h1>
				<div class="inline-p1">
					<p>
						<label for="idJobInterview">ID:</label>
					</p>
					<input type="number" id="idJobInterview" name="idJobInterview"
						value="<%=request.getParameter("idJobInterview")%>" readonly>
				</div>
				<div class="inline-p1">
					<p>
						<label for="idCandidate">Candidate:</label>
					</p>

					<select name="idCandidate">
						<c:forEach var="listCandidate" items="${listCandidate}">
							<option value="${listCandidate.idCandidate}">${listCandidate.idCandidate}) ${listCandidate.name}
								${listCandidate.surname}</option>
						</c:forEach>
					</select>
				</div>				
				<div class="inline-p1">
					<p>
						<label for="date2">Date:</label>
					</p>
					<input type="date" id="date2" name="date2"
						value="<%=jobInterview.getDate2()%>">
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="idStateJobInterview">State Job Interview:</label>
					</p>
					<select name="idStateJobInterview">
						<c:forEach var="listIdStateJobInterview" 
						items="${listIdStateJobInterview}">
							<option value="${listIdStateJobInterview.idStateJobInterview}">${listIdStateJobInterview.idStateJobInterview}) ${listIdStateJobInterview.title} - ${listIdStateJobInterview.description}
							</option>
						</c:forEach>
					</select>
				</div>
				
				
				<div class="inline-p1">
					<p>
						<label for="outcome">Outcome:</label>
					</p>
					<input type="number" id="outcome" name="outcome"
						value="<%=jobInterview.getOutcome()%>">
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="idEmployee">Employee:</label>
					</p>
					<select name="idEmployee">
						<c:forEach var="listIdEmployee" 
						items="${listIdEmployee}">
							<option value="${listIdEmployee.idEmployee}">${listIdEmployee.idEmployee}) ${listIdEmployee.username}
							</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="notes2">Notes:</label>
					</p>
					<input type="text" id="notes2" name="notes2"
						value="<%=jobInterview.getNotes2()%>">
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