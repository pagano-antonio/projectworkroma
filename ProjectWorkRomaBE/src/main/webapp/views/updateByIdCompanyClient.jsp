<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.CompanyClient"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Company Client</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/update.css">
</head>
<body>
	<jsp:include page="sidebar.jsp" />
	<div class="container1">
		<div class="card1">
			<%
			CompanyClient companyClient = (CompanyClient) request.getAttribute("idCompanyClient");
			%>

			<form
				action="${pageContext.request.contextPath}/updateByIdCompanyClient"
				method="POST">
				<h1 class="title1">Update Company Client</h1>
				<div class="inline-p1">
					<p>
						<label for="IdCompanyClient">Company Client ID:</label>
					</p>
					<input type="number" id="IdCompanyClient" name="IdCompanyClient"
						value="<%=request.getParameter("idCompanyClient")%>" readonly>
				</div>
				<div class="inline-p1">
					<p>
						<label for="name">Name:</label>
					</p>
					<input type="text" id="name" name="name"
						value="<%=companyClient.getName()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="city">City:</label>
					</p>
					<input type="text" id="city" name="city"
						value="<%=companyClient.getCity()%>">
				</div>
				<div class="inline-p1">
					<p>
						<label for="address">Address:</label>
					</p>
					<input type="text" id="address" name="address"
						value="<%=companyClient.getAddress()%>">
				</div>
			</form>
		</div>
	</div>

</body>
</html>