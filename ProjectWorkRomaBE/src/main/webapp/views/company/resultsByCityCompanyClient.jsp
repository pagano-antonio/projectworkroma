<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.CompanyClient"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find by City Company Client</title>
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
<div class="card1">
<div class="title">
<h1>Find Company Client By City</h1>
</div>
<table class="content-table">

				<thead>
					<tr>
						<th>Company Client ID</th>
						<th>Address</th>
						<th>City</th>
						<th>Name</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="companyClient" items="${CompanyClientCity}">
						<tr>

							<td>${companyClient.idCompanyClient}</td>
							<td>${companyClient.address}</td>
							<td>${companyClient.city}</td>
							<td>${companyClient.name}</td>
							<td><a
								href="${pageContext.request.contextPath}/preUpdateByIdCompanyClient?idCompanyClient=${companyClient.idCompanyClient}">
									<button class="buttonUpdate" type="button">Update</button>
							</a></td>
							<td><a
								href="${pageContext.request.contextPath}/company/deleteByIdCompanyClient?idCompanyClient=${companyClient.idCompanyClient}">
									<button class="buttonDelete" type="button">Delete</button>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>