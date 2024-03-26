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
			CompanyClient companyClient = (CompanyClient) request.getAttribute("idCompanyClient");
			%>

			<form
				action="${pageContext.request.contextPath}/updateByIdCompanyClient"
				method="POST">
				<h1 class="title1">Update Company Client</h1>
				<div class="inline-p1">
					<p>
						<label for="idCompanyClient">Company Client ID:</label>
					</p>
					<input type="number" id="idCompanyClient" name="idCompanyClient"
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