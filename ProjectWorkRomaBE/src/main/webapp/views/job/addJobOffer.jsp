<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Job Offer</title>
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
<h1>New Job Offer</h1>

			<form class="formAdd"
				action="${pageContext.request.contextPath}/job/addJobOffer"
				method="POST">
				<div class="inline-p1">
					<p>
						<label for="title">Title:</label>
					</p>
					<input type="text" id="title" name="title">
				</div>

				<div class="inline-p1">
					<p>
						<label for="description">Description:</label>
					</p>
					<input type="text" id="description" name="description">
				</div>
				<div class="inline-p1">
					<p>
						<label for="startDate">Start Date:</label>
					</p>
					<input type="date" id="startDate" name="startDate">
				</div>
				<div class="inline-p1">
					<p>
						<label for="endDate">End Date:</label>
					</p>
					<input type="date" id="endDate" name="endDate">
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="idCompanyClient">Company Client:</label>
					</p>
					<select name="idCompanyClient">
						<c:forEach var="listIdCompanyClient" items="${listIdCompanyClient}">
							<option value="${listIdCompanyClient.idCompanyClient}">
								${listIdCompanyClient.idCompanyClient}) ${listIdCompanyClient.name} (${listIdCompanyClient.city}, ${listIdCompanyClient.address})</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="inline-p1">
					<p>
						<label for="minRal">Min Ral:</label>
					</p>
					<input type="number" id="minRal" name="minRal">
				</div>
				<div class="inline-p1">
					<p>
						<label for="maxRal">Max Ral:</label>
					</p>
					<input type="number" id="maxRal" name="maxRal">
				</div>
				
					<div class="inline-p1">
					<p>
						<label for="idContractType">Contract Type:</label>
					</p>
					<select name="idContractType">
						<c:forEach var="listIdContractType" items="${listIdContractType}">
							<option value="${listIdContractType.idContractType}">
								${listIdContractType.idContractType}) ${listIdContractType.title}: ${listIdContractType.description}</option>
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