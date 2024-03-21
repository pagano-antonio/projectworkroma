<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find Candidate by Phone</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/findBy.css">
</head>
<body>
	<jsp:include page="sidebarFind.jsp" />
	<div class="card">
		<div class="boxFind">

			<p class="findTitle">Candidate</p>
			<div class="inline-p1">
				<p>
					<label for="idCandidate">Candidate ID:</label>
				</p>
				<c:forEach var="candidate" items="${PhoneCandidate}">
					<h4>${candidate.idCandidate}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="name">Name:</label>
				</p>
				<h4>${candidate.name}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="surname">Surname:</label>
				</p>
				<h4>${candidate.surname}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="birthday">Birth Day:</label>
				</p>
				<h4>${candidate.birthday}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="birthPlace">Birth Place:</label>
				</p>
				<h4>${candidate.birthPlace}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="city">City:</label>
				</p>
				<h4>${candidate.city}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="address">Address:</label>
				</p>
				<h4>${candidate.address}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="email">Email:</label>
				</p>
				<h4>${candidate.email}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="phone">Phone Number:</label>
				</p>
				<h4>${candidate.phone}</h4>
			</div>
			<div class="inline-p1">
				<a
					href="${pageContext.request.contextPath}/preUpdateByIdCandidate?idCandidate=${candidate.idCandidate}">
					<button class="buttonUpdate" type="button">Update</button>
				</a> <a
					href="${pageContext.request.contextPath}/candidate/deleteByIdCandidate?idCandidate=${candidate.idCandidate}">
					<button class="buttonDelete" type="button">Delete</button>
				</a>
			</c:forEach>
		</div>
	</div>
	<div class="boxTitle">
		<img class="imageLogin"
				style="margin: 10px; height: 300px; width: 300px; border-radius: 300px;"
				src="${pageContext.request.contextPath}/resources/css/Immagini/img-profile.jpg"
				alt="img-profile">
	</div>
	</div>
</body>
</html>