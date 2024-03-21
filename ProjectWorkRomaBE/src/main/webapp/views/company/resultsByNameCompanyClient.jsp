<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results Find by Name Company Client</title>
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

			<p class="findTitle">Company Client</p>
			<div class="inline-p1">
				<p>
					<label for="idCompanyClient">Company Client ID:</label>
				</p>
				<c:forEach var="companyClient" items="${CompanyClientName}">
					<h4>${companyClient.idCompanyClient}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="name">Name:</label>
				</p>
				<h4>${companyClient.name}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="city">City:</label>
				</p>
				<h4>${companyClient.city}</h4>
			</div>
			<div class="inline-p1">
				<p>
					<label for="address">Address:</label>
				</p>
				<h4>${companyClient.address}</h4>
			</div>
			<div class="inline-p1">
				<a
					href="${pageContext.request.contextPath}/preUpdateByIdCompanyClient?idCompanyClient=${companyClient.idCompanyClient}">
					<button class="buttonUpdate" type="button">Update</button>
				</a> <a
					href="${pageContext.request.contextPath}/company/deleteByIdCompanyClient=${companyClient.idCompanyClient}">
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