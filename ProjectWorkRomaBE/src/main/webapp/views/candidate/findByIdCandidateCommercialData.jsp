<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Candidate By Commercial Data</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
			<p class="findTitle">Find Candidate </p>
			<form class="formFind"
				action="${pageContext.request.contextPath}/candidate/findByIdCandidateCommercialData"
				method="GET">
				<p>
					<label for="idCandidateCommercialData">Candidate Commercial
						ID:</label>
				</p>
				<input class="inputField" type="number"
					id="idCandidateCommercialData" name="idCandidateCommercialData" >

				<button class="buttonSubmit" type="submit">Submit</button>
				<button class="buttonReset" type="reset">Reset</button>
			</form>
		</div>
		<div class="boxTitle">	
	<img class="imageLogin" src="${pageContext.request.contextPath}/resources/css/Immagini/iphone.gif" alt="iphone">
</div>
	</div>
</body>
</html>