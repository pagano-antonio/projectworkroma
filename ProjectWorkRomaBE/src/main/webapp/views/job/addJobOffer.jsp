<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<label for="idCompanyClient">ID Company Client:</label>
					</p>
					<input type="number" id="idCompanyClient" name="idCompanyClient">
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
						<label for="idContractType">ID Contract Type:</label>
					</p>
					<input type="number" id="idContractType" name="idContractType">
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