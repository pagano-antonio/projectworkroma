<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/home.css">

</head>

<body>


	<jsp:include page="sidebar.jsp" />
	<div class="card">

		<div>
			<img src="resources/css/Immagini/home.gif" class="imghome">
		</div>
		<div class="welcomeSection">
			<h1 class="welcomeMessage">Welcome!</h1>
			<p>Let's get to work!</p>
		</div>

		<div class="utente">

			<div class="profilePic">
				<img src="resources/css/Immagini/img-profile.jpg" class="imgProfile">
			</div>
			<div class="description">
				<p>Alice Foglia</p>
				<p class="employeeType">Manager</p>
			</div>

		</div>


	</div>
</body>
</html>