<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find Company Client By Id</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/findBy.css">
</head>
<body>
	<div class="card">
		<div class="boxFind">
			<p class="findTitle">Find Company Client</p>
			<form class="formFind"
				action="${pageContext.request.contextPath}/company/findByIdCompanyClient"
				method="GET">
				<p>
					<label for="idCompanyClient">Id Company Client:</label>
				</p>
				<input class="inputField" type="number" id="idCompanyClient"
					name="idCompanyClient">
				<div>
					<button class="buttonSubmit" type="submit">Submit</button>
					<button class="buttonReset" type="reset">Reset</button>
				</div>
			</form>
		</div>
		<div class="boxTitle">
			<h2 class="title">FIND DATA</h2>
			<img class="imageLogin"
				src="webapp/resources/css/Immagini/preLogin.gif" alt="preLogin"
				width="600" height="400">
		</div>
	</div>
</body>
</html>